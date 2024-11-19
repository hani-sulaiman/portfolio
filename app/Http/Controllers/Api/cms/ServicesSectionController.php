<?php

namespace App\Http\Controllers\Api\cms;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class ServicesSectionController extends Controller
{
    /**
     * Display the services section of the home page.
     */
    public function show()
    {
        // Retrieve the services section linked with page_id 1 and title 'services'
        $servicesSection = Section::where('page_id', 1)->where('title', 'services')->first();

        if ($servicesSection) {
            return response()->json($servicesSection, 200);
        }
        return response()->json(['message' => 'Services section not found'], 404);
    }

    /**
     * Store or update the services section for the home page.
     */
    public function saveOrUpdate(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'quote' => 'required|string',
        ]);

        // Check if the services section already exists for page_id 1
        $servicesSection = Section::where('page_id', 1)->where('title', 'services')->first();

        $content = [
            'quote' => $validated['quote']
        ];

        if ($servicesSection) {
            // Update existing services section
            $servicesSection->update(['content' => $content]);
            return response()->json(['section' => $servicesSection, 'message' => 'Services section updated successfully.'], 200);
        } else {
            // Create new services section
            $servicesSection = Section::create([
                'title' => 'services',
                'page_id' => 1,
                'content' => $content,
            ]);

            return response()->json(['section' => $servicesSection, 'message' => 'Services section created successfully.'], 201);
        }
    }
}
