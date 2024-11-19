<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Section;
use Illuminate\Http\Request;

class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return all sections with related page
        return response()->json(Section::with('page')->get(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'page_id' => 'required|exists:pages,id',
            'content' => 'nullable|array',
        ]);

        // Create a new section
        $section = Section::create($validated);

        return response()->json($section->load('page'), 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find the section by ID and return it with the related page
        $section = Section::with('page')->findOrFail($id);
        return response()->json($section, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the section entry
        $section = Section::findOrFail($id);

        // Validate request
        $validated = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'page_id' => 'sometimes|required|exists:pages,id',
            'content' => 'nullable|array',
        ]);

        // Update section entry
        $section->update($validated);

        return response()->json($section->load('page'), 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the section entry
        $section = Section::findOrFail($id);

        // Delete the section entry
        $section->delete();

        return response()->json(['message' => 'Section deleted successfully'], 200);
    }
}
