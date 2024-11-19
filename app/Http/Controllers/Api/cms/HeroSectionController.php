<?php

namespace App\Http\Controllers\Api\cms;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class HeroSectionController extends Controller
{
    public function show()
    {
        $heroSection = Section::where('page_id', 1)->where('title', 'hero')->first();
        if ($heroSection) {
            return response()->json($heroSection, 200);
        }
        return response()->json(['message' => 'Hero section not found'], 404);
    }

    /**
     * Store or update the hero section for the home page.
     */
    public function saveOrUpdate(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'quote' => 'required|string',
        ]);

        // Check if the hero section already exists for page_id 1
        $heroSection = Section::where('page_id', 1)->where('title', 'hero')->first();

        $content = [
            'quote' => $validated['quote']
        ];

        if ($heroSection) {
            // Update existing hero section
            $heroSection->update(['content' => $content]);
            return response()->json(['section' => $heroSection, 'message' => 'Hero section updated successfully.'], 200);
        } else {
            // Create new hero section
            $heroSection = Section::create([
                'title' => 'hero',
                'page_id' => 1,
                'content' => $content,
            ]);

            return response()->json(['section' => $heroSection, 'message' => 'Hero section created successfully.'], 201);
        }
    }
}
