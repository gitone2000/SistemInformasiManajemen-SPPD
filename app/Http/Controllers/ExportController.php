<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\InstructionExport;
use Maatwebsite\Excel\Facades\Excel;

class ExportController extends Controller
{
    public function export() 
    {
        // return Excel::download(new InstructionExport, 'invoices.xlsx');
        // return 'berhasil';
    }
}
