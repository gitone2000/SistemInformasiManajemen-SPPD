<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InstructionEmploye extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function instruction()
    {
    	return $this->belongsTo(Instruction::class);
    }
    
    // public function employe()
    // {
    // 	return $this->belongsTo(Employe::class);
    // }
}
