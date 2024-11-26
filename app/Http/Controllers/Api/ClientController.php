<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Client;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return a list of all clients
        return response()->json(Client::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'full_name' => 'required|string',
            'email' => 'required|email|unique:clients,email',
            'major' => 'required|string',
            'comment' => 'nullable|string',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Handle photo upload
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/clients'), $filename);
            $validated['photo_url'] = '/uploads/clients/' . $filename;
        } else {
            $validated['photo_url'] = "/assets/img/profile.jpg";
        }

        // Create a new client
        $client = Client::create($validated);

        return response()->json($client, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // Find and return the specified client
        $client = Client::findOrFail($id);
        return response()->json($client, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Find the client to update
        $client = Client::findOrFail($id);

        // Validate request
        $validated = $request->validate([
            'full_name' => 'sometimes|required|string',
            'email' => 'sometimes|required|email|unique:clients,email,' . $id,
            'major' => 'sometimes|required|string',
            'comment' => 'nullable|string',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Handle photo upload
        if ($request->hasFile('photo')) {
            // Delete the old photo if exists
            if ($client->photo_url && file_exists(public_path($client->photo_url))) {
                unlink(public_path($client->photo_url));
            }

            $file = $request->file('photo');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads/clients'), $filename);
            $validated['photo_url'] = '/uploads/clients/' . $filename;
        }

        // Update client
        $client->update($validated);

        return response()->json($client, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Find the client to delete
        $client = Client::findOrFail($id);

        // Delete the photo if exists
        if ($client->photo_url && file_exists(public_path($client->photo_url))) {
            unlink(public_path($client->photo_url));
        }

        // Delete client
        $client->delete();

        return response()->json(['message' => 'Client deleted successfully'], 200);
    }
}
