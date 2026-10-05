<?php

namespace App\Http\Controllers;

use App\Models\Employe;
use App\Models\Instruction;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard', [
            'title' => 'Dashboard',
            'pegawai' => Employe::all()->count(),
            'tugas' => Employe::all()->where('status', 0)->count(),
            'tdktugas' => Employe::all()->where('status', 1)->count(),
            'sptrun' => Instruction::all()->where('status', 1)->count(),
            'sptdone' => Instruction::all()->where('status', 0)->count(),
            'spt' => Instruction::all()->count(),
        ]);
    }
}
