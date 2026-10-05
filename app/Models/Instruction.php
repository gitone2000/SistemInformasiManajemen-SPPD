<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instruction extends Model
{
    use HasFactory;

    protected $guarded = ['id'];


    public function employe()
    {
    	return $this->belongsToMany(Employe::class, 'instruction_employes');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function account()
    {
        return $this->belongsTo(Account::class);
    }

    public function destination()
    {
        return $this->belongsTo(Destination::class);
    }

    public function transport()
    {
        return $this->belongsTo(Transport::class);
    }

    public function rekening()
    {
        return $this->belongsTo(Rekening::class);
    }

    
}
