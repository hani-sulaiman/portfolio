<?php

namespace App\Http\Controllers\Api\cms;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class ProjectSectionController extends Controller
{
  /**
     * Display the projects section of the home page.
     */
    public function show()
    {
        // Retrieve the projects section linked with page_id 1 and title 'projects'
        $projectsSection = Section::where('page_id', 1)->where('title', 'projects')->first();

        if ($projectsSection) {
            return response()->json($projectsSection, 200);
        }
        return response()->json(['message' => 'Projects section not found'], 404);
    }

    /**
     * Store or update the projects section for the home page.
     */
    public function saveOrUpdate(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'quote' => 'required|string',
        ]);

        // Check if the projects section already exists for page_id 1
        $projectsSection = Section::where('page_id', 1)->where('title', 'projects')->first();

        $content = [
            'quote' => $validated['quote']
        ];

        if ($projectsSection) {
            // Update existing projects section
            $projectsSection->update(['content' => $content]);
            return response()->json(['section' => $projectsSection, 'message' => 'Projects section updated successfully.'], 200);
        } else {
            // Create new projects section
            $projectsSection = Section::create([
                'title' => 'projects',
                'page_id' => 1,
                'content' => $content,
            ]);

            return response()->json(['section' => $projectsSection, 'message' => 'Projects section created successfully.'], 201);
        }
    }
}
