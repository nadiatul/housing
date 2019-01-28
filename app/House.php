<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Agent;
class House extends Model
{
    //

    protected $table = 'houses';

    protected $fillable = [
        'title',
        'description',
        'propertyType',
        'titleType',
        'bedroom',
        'bathroom',
        'landsize',
        'rentalDuration',
        'houseQuality',
        'rating',
        'contractType',
        'state',
        'city',
        'parking',
        'createdBy'
    ];

    public function agents()
    {
        return $this->hasOne('App\Agent', 'id','createdBy');
    }
    public function states()
    {
        return $this->hasOne('App\State', 'id','state');
    }
}
