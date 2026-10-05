<?php

namespace App\Http\Controllers;

use App\Models\Employe;
use Illuminate\Http\Request;

class EmployeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('employe.index', [
            'title' => 'Pegawai',
            'employes' => Employe::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('employe.create', [
            'title' => 'Tambah Pegawai',
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
        $ValidatedData = $request->validate([
            'name' => 'required|max:255',
            'nip' => 'required',
            'pangkat' => 'required',
            'gol' => 'required',
            'jabatan' => 'required',
            'uharian' => 'required',
            'umakan' => 'required',
            'utransport' => 'required',
        ]);
        Employe::create($ValidatedData);
        return redirect(route('employes.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employe  $employe
     * @return \Illuminate\Http\Response
     */
    public function show(Employe $employe)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employe  $employe
     * @return \Illuminate\Http\Response
     */
    public function edit(Employe $employe)
    {
        return view('employe.edit', [
            'title' => 'Edit Pegawai',
            'employe' => $employe,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employe  $employe
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employe $employe)
    {
        $ValidatedData = $request->validate([
            'name' => 'required|max:255',
            'nip' => 'required',
            'pangkat' => 'required',
            'gol' => 'required',
            'jabatan' => 'required',
            'uharian' => 'required',
            'umakan' => 'required',
            'utransport' => 'required',
        ]);
        Employe::where('id', $employe->id)->update($ValidatedData);
        return redirect(route('employes.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employe  $employe
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employe $employe)
    {
        Employe::destroy($employe->id);
        return redirect(route('employes.index'))->with('toast_success', 'Berhasil Menghapus Data!');
    }
}
