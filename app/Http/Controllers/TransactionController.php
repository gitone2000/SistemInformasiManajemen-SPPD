<?php

namespace App\Http\Controllers;

use App\Models\Instruction;
use App\Models\Rekening;
use App\Models\Transaction;
use Illuminate\Http\Request;
use \PhpOffice\PhpSpreadsheet\IOFactory as IOFactory;
use PDF;

class TransactionController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('transaction.index', [
            'title' => 'Pembiayaan',
            'transactions' => Transaction::all(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('transaction.create', [
            'title' => 'Tambah Pembiayaan',
            'instructions' => Instruction::all(),
            'rekenings' => Rekening::all(),
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
            'no_kwitansi' => 'required',
            'terima' => 'required',
            'guna' => 'required',
            'instruction_id' => 'required',
            'rekening_id' => 'required',
            'lama' => 'required',
        ]);

        Transaction::create($validatedData);
        return redirect(route('transactions.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function show(Transaction $transaction)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction $transaction)
    {
        return view('transaction.edit', [
            'title' => 'Pembiayaan',
            'transactions' => $transaction,
            'instructions' => Instruction::all(),
            'rekenings' => Rekening::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        $validatedData = $request->validate([
            'no_kwitansi' => 'required',
            'terima' => 'required',
            'guna' => 'required',
            'instruction_id' => 'required',
            'rekening_id' => 'required',
            'lama' => 'required',
        ]);

        Transaction::where('id', $transaction->id)->update($validatedData);
        return redirect(route('transactions.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        Transaction::destroy($transaction->id);
        return redirect(route('transactions.index'))->with('toast_success', 'Berhasil Menghapus Data!');
    }

    public function cetak(Transaction $transaction)
    {
        $transaction = Transaction::find($transaction->id);
        // $jumlah = $transaction->instruction->employe->uharian;

        $pdf = PDF::loadview('pdf.kwitansi', compact('transaction'));
        $pdf->setPaper(array(0,0,609.4488,935.433), 'potrait');
        $fileName = 'Kwitansi ' . $transaction->no_kwitansi . '-' . $transaction->created_at->format('d-M-Y') . '.pdf';
        return $pdf->download($fileName);
    }

    // public function rekap()
    // {
    //     $transaction = Transaction::all();

    //     $spreadsheet = new IOFactory();

    //     $worksheet = $spreadsheet->getActiveSheet();

    //     $worksheet->getCell('A1')->setValue('John');
    //     $worksheet->getCell('A2')->setValue('Smith');

    //     $writer = \PhpOffice\PhpSpreadsheet\IOFactor::createWriter($spreadsheet, 'Xls');
    //     $writer->save('write.xls');

    // }

}
