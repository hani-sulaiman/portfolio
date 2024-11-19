<?php

namespace App\Http\Controllers\Api\cms;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class WorkTogatherSectionController extends Controller
{
    public function show()
    {
        // Retrieve the work-together section linked with page_id 1 and title 'work-together'
        $workTogatherSection = Section::where('page_id', 1)->where('title', 'work-together')->first();

        if ($workTogatherSection) {
            return response()->json($workTogatherSection, 200);
        }
        return response()->json(['message' => 'Work Together section not found'], 404);
    }

    /**
     * Store or update the work-together section for the home page.
     */
    public function saveOrUpdate(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'quote' => 'required|string',
        ]);

        // Check if the work-together section already exists for page_id 1
        $workTogatherSection = Section::where('page_id', 1)->where('title', 'work-together')->first();

        $content = [
            'quote' => $validated['quote']
        ];

        if ($workTogatherSection) {
            // Update existing work-together section
            $workTogatherSection->update(['content' => $content]);
            return response()->json(['section' => $workTogatherSection, 'message' => 'Work Together section updated successfully.'], 200);
        } else {
            // Create new work-together section
            $workTogatherSection = Section::create([
                'title' => 'work-together',
                'page_id' => 1,
                'content' => $content,
            ]);

            return response()->json(['section' => $workTogatherSection, 'message' => 'Work Together section created successfully.'], 201);
        }
    }
}
