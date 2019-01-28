<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    //

    protected $table = 'cities';

    protected $fillable = [
        'code',
        'name',
        'fk_stateId'
    ];
}
