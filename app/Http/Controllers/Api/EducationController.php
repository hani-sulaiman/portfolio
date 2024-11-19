<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Education;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EducationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return all education records
        return response()->json(Education::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'institute' => 'required|string',
            'from_date' => 'required|date',
            'to_date' => 'nullable|date',
            'certificate' => 'nullable|file|mimes:pdf,jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Handle file upload if provided
        $validated = $validator->validated();
        if ($request->hasFile('certificate')) {
            $file = $request->file('certificate');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/educations'), $filename);
            $validated['certificate_link'] = '/uploads/educations/' . $filename;
        }

        // Create a new education entry
        $education = Education::create($validated);

        return response()->json($education, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find the education by ID and return it
        $education = Education::findOrFail($id);
        return response()->json($education, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the education entry
        $education = Education::findOrFail($id);

        // Validate request
        $validator = Validator::make($request->all(), [
            'title' => 'sometimes|required|string',
            'institute' => 'sometimes|required|string',
            'from_date' => 'sometimes|required|date',
            'to_date' => 'nullable|date',
            'certificate' => 'nullable|file|mimes:pdf,jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Handle file upload if provided
        $validated = $validator->validated();
        if ($request->hasFile('certificate')) {
            // Delete the old certificate if it exists
            if ($education->certificate_link && file_exists(public_path($education->certificate_link))) {
                unlink(public_path($education->certificate_link));
            }

            $file = $request->file('certificate');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/educations'), $filename);
            $validated['certificate_link'] = '/uploads/educations/' . $filename;
        }

        // Update education entry
        $education->update($validated);

        return response()->json($education, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the education entry
        $education = Education::findOrFail($id);

        // Delete the certificate file if it exists
        if ($education->certificate_link && file_exists(public_path($education->certificate_link))) {
            unlink(public_path($education->certificate_link));
        }

        // Delete the education entry
        $education->delete();

        return response()->json(['message' => 'Education deleted successfully'], 200);
    }
}
