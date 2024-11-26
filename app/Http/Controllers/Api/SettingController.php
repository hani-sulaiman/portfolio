<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    /**
     * Display all settings.
     */
    public function index()
    {
        return response()->json(Setting::all(), 200);
    }
    public function all()
    {
        $settings = Setting::all()->pluck('value_setting', 'key_setting');
    
        return response()->json($settings, 200);
    }
    public function store(Request $request)
    {
        $validatedSettings = $request->validate([
            'settings' => 'required|array',
            'settings.fullname' => 'nullable|string|max:255',
            'settings.phoneNumber' => 'nullable|string|max:255',
            'settings.email' => 'nullable|string|email|max:255',
            'settings.mainMajor' => 'nullable|string|max:255',
            'settings.whatsappLink' => 'nullable|url|max:255',
            'settings.facebookLink' => 'nullable|url|max:255',
            'settings.instagramLink' => 'nullable|url|max:255',
            'settings.githubLink' => 'nullable|url|max:255',
            'settings.linkedinLink' => 'nullable|url|max:255',
            'settings.address' => 'nullable|string|max:255',
            'settings.experienceStartDate' => 'nullable|date',
            'personalPhoto' => 'nullable|file|mimes:jpeg,png,jpg|max:2048',
            'cvFile' => 'nullable|file|mimes:pdf|max:2048',
        ]);
    
        // Loop through settings to create or update them
        foreach ($validatedSettings['settings'] as $key => $value) {
            Setting::updateOrCreate(
                ['key_setting' => $key],
                ['value_setting' => $value]
            );
        }
    
        // Handle the personal photo upload if available
        if ($request->hasFile('personalPhoto')) {
            $existingPhotoSetting = Setting::where('key_setting', 'personalPhoto')->first();
            if ($existingPhotoSetting) {
                $existingPhotoPath = public_path($existingPhotoSetting->value_setting);
                if (file_exists($existingPhotoPath)) {
                    unlink($existingPhotoPath);
                }
            }
    
            $file = $request->file('personalPhoto');
            $filename = time() . '_' . $file->getClientOriginalName();
            $filePath = 'uploads/settings/' . $filename;
            $file->move(public_path('uploads/settings'), $filename);
    
            Setting::updateOrCreate(
                ['key_setting' => 'personalPhoto'],
                ['value_setting' => '/uploads/settings/' . $filename]
            );
        }
    
        // Handle the CV file upload if available
        if ($request->hasFile('cvFile')) {
            $existingCvSetting = Setting::where('key_setting', 'cvFile')->first();
            if ($existingCvSetting) {
                $existingCvPath = public_path($existingCvSetting->value_setting);
                if (file_exists($existingCvPath)) {
                    unlink($existingCvPath);
                }
            }
    
            $cvFile = $request->file('cvFile');
            $cvFilename = time() . '_' . $cvFile->getClientOriginalName();
            $cvFilePath = 'uploads/settings/' . $cvFilename;
            $cvFile->move(public_path('uploads/settings'), $cvFilename);
    
            Setting::updateOrCreate(
                ['key_setting' => 'cvFile'],
                ['value_setting' => '/uploads/settings/' . $cvFilename]
            );
        }
    
        return response()->json(['message' => 'Settings saved successfully'], 200);
    }
    
}
