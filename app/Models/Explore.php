<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    protected $table='Explore';
    protected $fillable = [
        'title_vi',
        'title_en',
        'title_ru',
        'title_kr',
        'title_cn',
        'title_jp',
        'content_vi',
        'content_en',
        'content_ru',
        'content_kr',
        'content_cn',
        'content_jp',
        'photo' ,
        'slug' 
    ];
    function scopeGetAll(){
        return $this->orderBy('id','asc')->get();
    }
}
