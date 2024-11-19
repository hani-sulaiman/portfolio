<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Client;
use App\Models\Project;
use App\Models\Skill;
use App\Models\Setting;
use Carbon\Carbon;

class StatisticsController extends Controller
{
    public function getStatistics()
    {
        // Retrieve the experience start date from settings
        $experienceSetting = Setting::where('key_setting', 'experienceStartDate')->first();

        $yearsOfExperience = 0;

        if ($experienceSetting && $experienceSetting->value_setting) {
            $startDate = Carbon::parse($experienceSetting->value_setting);
            $currentDate = Carbon::now();

            // Only calculate the years if the start date is in the past
            if ($startDate->isPast()) {
                $yearsOfExperience = abs(intval($currentDate->diffInYears($startDate)));
            } else {
                $yearsOfExperience = 0; // If the start date is in the future, set experience to 0
            }
        }

        // Count of projects completed
        $projectsCompleted = Project::count();

        // Count of happy clients
        $happyClients = Client::count();

        // Count of skills
        $skillsCount = Skill::count();

        return response()->json([
            'years_of_experience' => $yearsOfExperience,
            'projects_completed' => $projectsCompleted,
            'happy_clients' => $happyClients,
            'skills_count' => $skillsCount,
        ], 200);
    }
}
