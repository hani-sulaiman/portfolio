<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'icon_code_html', 'content','image_url'];

    public function projects()
    {
        return $this->belongsToMany(Project::class);
    }
}
