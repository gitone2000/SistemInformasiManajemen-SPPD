<?php

namespace App\Http\Controllers;

use App\Models\Trip;
use App\Models\Account;
use App\Models\Employe;
use App\Models\Destination;
use App\Models\Transport;
use App\Models\Instruction;
use App\Models\Category;
use PhpOffice\PhpWord\TemplateProcessor;
use Illuminate\Http\Request;

class TripController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('sppd.index', [
            'title' => 'Perjalanan',
            'trips' => Trip::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('sppd.create', [
            'title' => 'Tambah Perjalanan',
            'instructions' => Instruction::all(),
            'categories' => Category::all(),
            'employes' => Employe::all(),
            'transports' => Transport::all(),
            'destinations' => Destination::all(),
            'accounts' => Account::all(),
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
            'instruction_id' => 'required',
            'category_id' => 'required',
            'employe_id' => 'required',
            'maksud' => 'required',
            'transport_id' => 'required',
            't_berangkat' => 'required',
            'destination_id' => 'required',
            'lama' => 'required',
            'tgl_berangkat' => 'required',
            'tgl_pulang' => 'required',
            'account_id' => 'required',
            'ket' => 'required',
        ]);

        Trip::create($validatedData);
        // dd($validatedData);
        return redirect(route('trips.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function show(Trip $trip)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function edit(Trip $trip)
    {
        return view('sppd.edit', [
            'title' => 'Tambah Perjalanan',
            'instructions' => Instruction::all(),
            'categories' => Category::all(),
            'employes' => Employe::all(),
            'transports' => Transport::all(),
            'destinations' => Destination::all(),
            'accounts' => Account::all(),
            'trips' =>$trip,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Trip $trip)
    {
        $validatedData = $request->validate([
            'instruction_id' => 'required',
            'category_id' => 'required',
            'employe_id' => 'required',
            'maksud' => 'required',
            'transport_id' => 'required',
            't_berangkat' => 'required',
            'destination_id' => 'required',
            'lama' => 'required',
            'tgl_berangkat' => 'required',
            'tgl_pulang' => 'required',
            'account_id' => 'required',
            'ket' => 'required',
        ]);

        Trip::where('id', $trip->id)->update($validatedData);
        // dd($validatedData);
        return redirect(route('trips.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function destroy(Trip $trip)
    {
        Trip::destroy($trip->id);
        return redirect(route('trips.index'))->with('toast_success', 'Berhasil Menghapus Data!');
    }

    public function cetak(Trip $trip)
    {
        $trips = $trip;

        $templateProcessor = new TemplateProcessor('word-template/sppd.docx');
        // Creating the new document...
        $phpWord = new \PhpOffice\PhpWord\PhpWord();

        
        $templateProcessor->setValue('nomor', $trips->instruction->no_spt);
        $templateProcessor->setValue('pegawai', $trips->employe->name);
        $templateProcessor->setValue('nip', $trips->employe->nip);
        $templateProcessor->setValue('pangkat', $trips->employe->pangkat);
        $templateProcessor->setValue('gol', $trips->employe->gol);
        $templateProcessor->setValue('jabatan', $trips->employe->jabatan);
        $templateProcessor->setValue('maksud', $trips->maksud);
        $templateProcessor->setValue('lama', $trips->lama);
        $templateProcessor->setValue('transportasi', $trips->transport->name);
        $templateProcessor->setValue('t_berangkat', $trips->t_berangkat);
        $templateProcessor->setValue('t_tujuan', $trips->destination->name);
        $templateProcessor->setValue('tgl_berangkat', $trips->tgl_berangkat);
        $templateProcessor->setValue('tgl_pulang', $trips->tgl_pulang);
        $templateProcessor->setValue('akun', $trips->account->name);
        $templateProcessor->setValue('ket', $trips->ket);
        $templateProcessor->setValue('tgl', $trips->created_at->format('d-m-Y'));
        
        $fileName = 'SPPD ' . $trips->employe->name;
        $templateProcessor->saveAs($fileName . '.docx');
        // $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        // $objWriter->save($fileName . '.docx');
        return response()->download($fileName . '.docx')->deleteFileAfterSend(true);

        // return view('welcome');
    }
}
