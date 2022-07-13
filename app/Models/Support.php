<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Support extends Model
{
    use HasFactory;
    protected $table='support';
    protected $fillable = [
        'name',
        'sdt',
        'email'
    ];
    function scopeGetAll(){
        return $this->orderBy('id','asc')->get();
    }
}
