<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'quick_info', 'thumbnail_url', 'start_date', 'client_name', 'partners', 'project_link', 'description', 'techs', 'more_images'];

    protected $casts = [
        'more_images' => 'json',
    ];

    public function services()
    {
        return $this->belongsToMany(Service::class);
    }
}
