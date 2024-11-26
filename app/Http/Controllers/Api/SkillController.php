<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Skill;
use Illuminate\Support\Facades\Validator;

class SkillController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return all skills
        return response()->json(Skill::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'percentage' => 'required|integer|min:0|max:100',
            'iconImage' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $validated = $validator->validated();

        // Handle file upload if provided
        if ($request->hasFile('iconImage')) {
            $file = $request->file('iconImage');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/skills'), $filename);
            $validated['icon_url'] = '/uploads/skills/' . $filename;
        }

        // Create a new skill entry
        $skill = Skill::create($validated);

        return response()->json($skill, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find the skill by ID and return it
        $skill = Skill::findOrFail($id);
        return response()->json($skill, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the skill to update
        $skill = Skill::findOrFail($id);

        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'sometimes|required|string',
            'percentage' => 'sometimes|required|integer|min:0|max:100',
            'iconImage' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $validated = $validator->validated();

        // Handle file upload if provided
        if ($request->hasFile('iconImage')) {
            // Delete the old icon if it exists
            if ($skill->icon_url && file_exists(public_path($skill->icon_url))) {
                unlink(public_path($skill->icon_url));
            }

            $file = $request->file('iconImage');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/skills'), $filename);
            $validated['icon_url'] = '/uploads/skills/' . $filename;
        }

        // Update skill entry
        $skill->update($validated);

        return response()->json($skill, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the skill entry
        $skill = Skill::findOrFail($id);

        // Delete the icon file if it exists
        if ($skill->icon_url && file_exists(public_path($skill->icon_url))) {
            unlink(public_path($skill->icon_url));
        }

        // Delete the skill entry
        $skill->delete();

        return response()->json(['message' => 'Skill deleted successfully'], 200);
    }
}
