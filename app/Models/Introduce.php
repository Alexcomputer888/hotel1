<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Introduce extends Model
{
    use HasFactory;
    protected $table='introduce';
    protected $fillable = [
        'title',
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
