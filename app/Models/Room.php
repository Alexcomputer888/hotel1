<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    protected $table='room';
    protected $fillable = [
        'title',
        'detail_vi',
        'detail_en',
        'detail_ru',
        'detail_kr',
        'detail_cn',
        'detail_jp',
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
