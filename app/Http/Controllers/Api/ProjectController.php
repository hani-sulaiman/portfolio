<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return all projects, including the related services
        return response()->json(Project::with('services')->get(), 200);
    }
    public function recent()
    {
        // Fetch all services with their related projects, ordered by end_date in descending order
        $services = Service::with(['projects' => function ($query) {
            $query->orderBy('start_date', 'desc'); // Order projects by end_date (newest first)
        }])->get();

        // Transform the result into the desired structure
        $recentWorks = [];
        foreach ($services as $service) {
            if ($service->projects->isNotEmpty()) {
                $recentWorks[] = [
                    'service' => $service->title,
                    'projects' => $service->projects->map(function ($project) {
                        return [
                            'id' => $project->id,
                            'title' => $project->title,
                            'thumbnail_url' => $project->thumbnail_url,
                            'quick_info' => $project->quick_info,
                            'start_date' => $project->start_date,
                            'client_name' => $project->client_name,
                            'project_link' => $project->project_link,
                            'partners' => $project->partners,
                            'more_images' => empty($project->more_images) ? json_decode($project->more_images, true) : null,
                        ];
                    }),
                ];
            }
        }

        return response()->json($recentWorks, 200);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'quick_info' => 'required|string',
            'start_date' => 'required|date',
            'client_name' => 'required|string',
            'partners' => 'nullable|string',
            'project_link' => 'required|string',
            'description' => 'required|string',
            'techs' => 'required|string',
            'thumbnail' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'more_images.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'service_ids' => 'required|array', // Array of service IDs
            'service_ids.*' => 'exists:services,id', // Validate that each ID exists in the services table
        ]);

        // Handle thumbnail upload
        if ($request->hasFile('thumbnail')) {
            $thumbnail = $request->file('thumbnail');
            $thumbnailName = time() . '_' . $thumbnail->getClientOriginalName();
            $thumbnail->move(public_path('uploads/projects'), $thumbnailName);
            $validated['thumbnail_url'] = '/uploads/projects/' . $thumbnailName;
        }

        // Handle more images upload
        if ($request->hasFile('more_images')) {
            $moreImagesPaths = [];
            foreach ($request->file('more_images') as $image) {
                $imageName = time() . '_' . $image->getClientOriginalName();
                $image->move(public_path('uploads/projects'), $imageName);
                $moreImagesPaths[] = '/uploads/projects/' . $imageName;
            }
            $validated['more_images'] = json_encode($moreImagesPaths);
        }

        // Create project
        $project = Project::create($validated);

        // Sync related services if provided
        if (isset($validated['service_ids'])) {
            $project->services()->sync($validated['service_ids']);
        }

        return response()->json($project->load('services'), 201);
    }


    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Find the project by ID and return it along with related services
        $project = Project::with('services')->findOrFail($id);
        return response()->json($project, 200);
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Find the project to delete
        $project = Project::findOrFail($id);

        // Delete the thumbnail if exists
        if ($project->thumbnail_url && file_exists(public_path($project->thumbnail_url))) {
            unlink(public_path($project->thumbnail_url));
        }

        // Delete all associated images in more_images if they exist
        if ($project->more_images) {
            $images = json_decode($project->more_images);
            foreach ($images as $image) {
                if (file_exists(public_path($image))) {
                    unlink(public_path($image));
                }
            }
        }

        // Delete the project
        $project->delete();

        return response()->json(['message' => 'Project deleted successfully'], 200);
    }
}
