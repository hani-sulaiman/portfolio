<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Return all pages with related sections
        return response()->json(Page::with('sections')->get(), 200);
    }

    public function show(string $path)
    {
        // Find the page by path and return it with related sections
        $page = Page::with('sections')->where('path', $path)->firstOrFail();
        return response()->json($page, 200);
    }


    public function store(Request $request)
    {
        // Validate request
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'path' => 'required|string|max:255',
            'content' => 'required|json', // Expecting content to be a JSON string
            'backgroundCover' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        // Decode the content JSON to get individual fields
        $content = json_decode($validated['content'], true);

        // Check if a page with the given path already exists
        $page = Page::where('path', $validated['path'])->first();

        if ($page) {
            // Update existing page

            // Handle background cover image if provided
            if ($request->hasFile('backgroundCover')) {
                // Delete old cover image if it exists
                if (isset($page->content['backgroundCover']) && file_exists(public_path($page->content['backgroundCover']))) {
                    unlink(public_path($page->content['backgroundCover']));
                }

                // Store new background cover image
                $backgroundCover = $request->file('backgroundCover');
                $filename = time() . '_' . $backgroundCover->getClientOriginalName();
                $backgroundCover->move(public_path('uploads/pages'), $filename);
                $content['backgroundCover'] = '/uploads/pages/' . $filename;
            }

            // Update page content fields
            $page->content = array_merge($page->content ?? [], $content);
            $page->title = $validated['title'];
            $page->save();

            return response()->json(['page' => $page, 'message' => 'Page updated successfully.'], 200);
        } else {
            // Create new page

            // Handle background cover image if provided
            if ($request->hasFile('backgroundCover')) {
                $backgroundCover = $request->file('backgroundCover');
                $filename = time() . '_' . $backgroundCover->getClientOriginalName();
                $backgroundCover->move(public_path('uploads/pages'), $filename);
                $content['backgroundCover'] = '/uploads/pages/' . $filename;
            }

            // Create a new page
            $page = Page::create([
                'title' => $validated['title'],
                'path' => $validated['path'],
                'content' => $content, // Store as an associative array
            ]);

            return response()->json(['page' => $page, 'message' => 'Page created successfully.'], 201);
        }
    }




    public function destroy(string $path)
    {
        // Find the page entry using path
        $page = Page::where('path', $path)->firstOrFail();

        // Delete the page entry
        $page->delete();

        return response()->json(['message' => 'Page deleted successfully'], 200);
    }
}
