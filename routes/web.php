<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('main'); // Main Blade for public root URL
});

Route::get('/about', function () {
    return view('main'); // Main Blade for public /about page
});

Route::get('/contact', function () {
    return view('main'); // Main Blade for public /contact page
});

// Admin Routes - Catch all /admin/* URLs
Route::get('/admin/{any?}', function () {
    return view('admin'); // Admin Blade for all admin pages
})->where('any', '.*');
// Catch-All Route for Vue Router (must be defined after all other routes)
Route::get('/{any}', function () {
    return view('main'); // Serve main.blade.php for all non-admin pages
})->where('any', '^(?!admin).*$');