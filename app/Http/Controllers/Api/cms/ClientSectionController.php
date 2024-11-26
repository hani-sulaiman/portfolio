<?php

namespace App\Http\Controllers\Api\cms;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class ClientSectionController extends Controller
{
    /**
     * Display the client section of the home page.
     */
    public function show()
    {
        // Retrieve the client section linked with page_id 1 and title 'client'
        $clientSection = Section::where('page_id', 1)->where('title', 'client')->first();

        if ($clientSection) {
            return response()->json($clientSection, 200);
        }
        return response()->json(['message' => 'Client section not found'], 404);
    }

    /**
     * Store or update the client section for the home page.
     */
    public function saveOrUpdate(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'quote' => 'required|string',
        ]);

        // Check if the client section already exists for page_id 1
        $clientSection = Section::where('page_id', 1)->where('title', 'client')->first();

        $content = [
            'quote' => $validated['quote']
        ];

        if ($clientSection) {
            // Update existing client section
            $clientSection->update(['content' => $content]);
            return response()->json(['section' => $clientSection, 'message' => 'Client section updated successfully.'], 200);
        } else {
            // Create new client section
            $clientSection = Section::create([
                'title' => 'client',
                'page_id' => 1,
                'content' => $content,
            ]);

            return response()->json(['section' => $clientSection, 'message' => 'Client section created successfully.'], 201);
        }
    }
}
