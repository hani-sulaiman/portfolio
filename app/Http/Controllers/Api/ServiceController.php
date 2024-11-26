<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return a list of all services
        return response()->json(Service::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'icon_code_html' => 'required|string',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:4096',
        ]);

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '_' . $file->getClientOriginalName();
            $filePath = 'uploads/services/' . $filename;
            $file->move(public_path('uploads/services'), $filename);
            $validated['image_url'] = '/uploads/services/' . $filename;
        }

        // Create a new service
        $service = Service::create($validated);

        return response()->json($service, 201);
    }

    

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find the service by ID and return it
        $service = Service::findOrFail($id);
        return response()->json($service, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the service entry
        $service = Service::findOrFail($id);

        // Validate request
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'icon_code_html' => 'sometimes|required|string',
            'content' => 'sometimes|required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:4096',
        ]);

        if ($request->hasFile('image')) {
            // Delete old image if exists
            if ($service->image_url && file_exists(public_path($service->image_url))) {
                unlink(public_path($service->image_url));
            }

            // Save new image
            $file = $request->file('image');
            $filename = time() . '_' . $file->getClientOriginalName();
            $filePath = 'uploads/services/' . $filename;
            $file->move(public_path('uploads/services'), $filename);
            $validated['image_url'] = '/uploads/services/' . $filename;
        }

        // Update service entry
        $service->update($validated);

        return response()->json($service, 200);
    }

    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the service entry
        $service = Service::findOrFail($id);

        // Delete the service entry
        $service->delete();

        return response()->json(['message' => 'Service deleted successfully'], 200);
    }
}
