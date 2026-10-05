<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use App\Models\Instruction;
use App\Models\Resume;
use Illuminate\Http\Request;
use PDF;

class ResumeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('resume.index', [
            'title' => 'Resume',
            'resumes' => Resume::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('resume.create', [
            'title' => 'Resume',
            'instructions' => Instruction::all(),
            'destinations' => Destination::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'instruction_id' => 'required|max:255',
            'destination_id' => 'required|max:255',
            'maksud' => 'required|max:255',
            'hadir' => 'required|max:255',
            'arahan' => 'required|max:255',
            'masalah' => 'required|max:255',
            'saran' => 'required|max:255',
            'lain' => 'required|max:255',
        ]);

        Resume::create($validatedData);
        return redirect(route('resumes.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Resume  $resume
     * @return \Illuminate\Http\Response
     */
    public function show(Resume $resume)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Resume  $resume
     * @return \Illuminate\Http\Response
     */
    public function edit(Resume $resume)
    {
        return view('resume.edit', [
            'title' => 'Resume',
            'resumes' => $resume,
            'instructions' => Instruction::all(),
            'destinations' => Destination::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Resume  $resume
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Resume $resume)
    {
        $validatedData = $request->validate([
            'instruction_id' => 'required|max:255',
            'destination_id' => 'required|max:255',
            'maksud' => 'required|max:255',
            'hadir' => 'required|max:255',
            'arahan' => 'required|max:255',
            'masalah' => 'required|max:255',
            'saran' => 'required|max:255',
            'lain' => 'required|max:255',
        ]);

        Resume::where('id', $resume->id)->update($validatedData);
        return redirect(route('resumes.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Resume  $resume
     * @return \Illuminate\Http\Response
     */
    public function destroy(Resume $resume)
    {
        Resume::destroy($resume->id);
        return redirect(route('resumes.index'))->with('toast_success', 'Berhasil Menghapus Data!');
    }

    public function cetak(Resume $resume)
    {
        $resumes = Resume::find($resume->id);
        // $jumlah = $transaction->instruction->employe->uharian;

        $pdf = PDF::loadview('pdf.laporan', compact('resumes'));
        $pdf->setPaper(array(0,0,609.4488,935.433), 'potrait');
        $fileName = 'LapPerjadin ' . $resume->instruction->no_spt . '-' . $resume->created_at->format('d-M-Y') . '.pdf';
        return $pdf->download($fileName);
    }
}
