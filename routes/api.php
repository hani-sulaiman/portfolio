<?php

use App\Http\Middleware\EnsureUserIsAdmin;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\ProjectController;
use App\Http\Controllers\Api\ServiceController;
use App\Http\Controllers\Api\SkillController;
use App\Http\Controllers\Api\ExperienceController;
use App\Http\Controllers\Api\EducationController;
use App\Http\Controllers\Api\ClientController;
use App\Http\Controllers\Api\AdminAuthController;
use App\Http\Controllers\Api\cms\ClientSectionController;
use App\Http\Controllers\Api\cms\HeroSectionController;
use App\Http\Controllers\Api\cms\ProjectSectionController;
use App\Http\Controllers\Api\cms\ServicesSectionController;
use App\Http\Controllers\Api\cms\WorkTogatherSectionController;
use App\Http\Controllers\Api\ContactController;
use App\Http\Controllers\Api\PageController;
use App\Http\Controllers\Api\SectionController;
use App\Http\Controllers\Api\SettingController;
use App\Http\Controllers\Api\StatisticsController;

// Admin Authentication Routes
Route::post('admin/login', [AdminAuthController::class, 'login']);
Route::post('admin/logout', [AdminAuthController::class, 'logout'])->middleware(EnsureUserIsAdmin::class);

Route::post('/contact/send', [ContactController::class, 'sendContactForm']);

Route::get('clients', [ClientController::class, 'index']);
Route::get('services', [ServiceController::class, 'index']);
Route::get('projects', [ProjectController::class, 'index']);
Route::get('recent-projects', [ProjectController::class, 'recent']);
Route::get('sections', [SectionController::class, 'index']);
Route::get('skills', [SkillController::class, 'index']);
Route::get('educations', [EducationController::class, 'index']);
Route::get('experiences', [ExperienceController::class, 'index']);
Route::get('settings', [SettingController::class, 'index']);
Route::get('all-settings', [SettingController::class, 'all']);
Route::get('pages', [PageController::class, 'index']);

Route::get('clients/{id}', [ClientController::class, 'show']);
Route::get('services/{id}', [ServiceController::class, 'show']);
Route::get('projects/{id}', [ProjectController::class, 'show']);
Route::get('sections/{id}', [SectionController::class, 'show']);
Route::get('skills/{id}', [SkillController::class, 'show']);
Route::get('experiences/{id}', [ExperienceController::class, 'show']);
Route::get('settings/{id}', [SettingController::class, 'show']);
Route::get('educations/{id}', [EducationController::class, 'show']);
Route::get('pages/{path}', [PageController::class, 'show']);

Route::get('hero-section', [HeroSectionController::class, 'show']);
Route::get('clients-section', [ClientSectionController::class, 'show']);
Route::get('projects-section', [ProjectSectionController::class, 'show']);
Route::get('services-section', [ServicesSectionController::class, 'show']);
Route::get('work-together-section', [WorkTogatherSectionController::class, 'show']);
Route::get('statistics', [StatisticsController::class, 'getStatistics']);
// Routes requiring authentication and admin authorization
Route::middleware('auth:sanctum')->group(function () {
    Route::middleware(EnsureUserIsAdmin::class)->group(function () {

        // Project Routes

        Route::post('projects', [ProjectController::class, 'store']);
        Route::delete('projects/{id}', [ProjectController::class, 'destroy']);

        // Service Routes

        Route::post('services', [ServiceController::class, 'store']);
        Route::put('services/update/{id}', [ServiceController::class, 'update']);
        Route::delete('services/{id}', [ServiceController::class, 'destroy']);

        // Section Routes

        Route::post('sections', [SectionController::class, 'store']);
        Route::put('sections/{id}', [SectionController::class, 'update']);
        Route::delete('sections/{id}', [SectionController::class, 'destroy']);

        Route::post('pages', [PageController::class, 'store']);
        Route::delete('pages/{id}', [PageController::class, 'destroy']);



        // Skill Routes

        Route::post('skills', [SkillController::class, 'store']);
        Route::delete('skills/{id}', [SkillController::class, 'destroy']);

        // Experience Routes

        Route::post('experiences', [ExperienceController::class, 'store']);
        Route::put('experiences/{id}', [ExperienceController::class, 'update']);
        Route::delete('experiences/{id}', [ExperienceController::class, 'destroy']);

        // Education Routes (excluding index and show)
        Route::post('educations', [EducationController::class, 'store']);
        Route::put('educations/{id}', [EducationController::class, 'update']);
        Route::delete('educations/{id}', [EducationController::class, 'destroy']);

        // Client Routes (excluding index and show)
        Route::post('clients', [ClientController::class, 'store']);
        Route::delete('clients/{id}', [ClientController::class, 'destroy']);

        // Setting Routes

        Route::post('settings', [SettingController::class, 'store']);
        Route::put('settings/{id}', [SettingController::class, 'update']);
        Route::delete('settings/{id}', [SettingController::class, 'destroy']);


        Route::match(['post', 'put'], 'hero-section', [HeroSectionController::class, 'saveOrUpdate']);
        Route::match(['post', 'put'], 'client-section', [ClientSectionController::class, 'saveOrUpdate']);
        Route::match(['post', 'put'], 'projects-section', [ProjectSectionController::class, 'saveOrUpdate']);
        Route::match(['post', 'put'], 'services-section', [ServicesSectionController::class, 'saveOrUpdate']);
        Route::match(['post', 'put'], 'work-together-section', [WorkTogatherSectionController::class, 'saveOrUpdate']);
    });
});
