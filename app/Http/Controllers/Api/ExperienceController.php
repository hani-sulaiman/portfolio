<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Experience;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ExperienceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return a list of all experiences
        return response()->json(Experience::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'source' => 'required|string',
            'from_date' => 'required|date',
            'to_date' => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Create a new experience entry
        $experience = Experience::create($validator->validated());

        return response()->json($experience, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find the experience by ID and return it
        $experience = Experience::findOrFail($id);
        return response()->json($experience, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the experience entry
        $experience = Experience::findOrFail($id);

        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'sometimes|required|string',
            'source' => 'sometimes|required|string',
            'from_date' => 'sometimes|required|date',
            'to_date' => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Update experience entry
        $experience->update($validator->validated());

        return response()->json($experience, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the experience entry
        $experience = Experience::findOrFail($id);

        // Delete the experience entry
        $experience->delete();

        return response()->json(['message' => 'Experience deleted successfully'], 200);
    }
}
