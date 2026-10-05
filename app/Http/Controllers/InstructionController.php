<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Instruction;
use App\Models\Transport;
use App\Models\Destination;
use App\Models\Account;
use App\Models\Rekening;
use App\Models\Employe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PDF;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\Element\Table;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\SuratExport;

class InstructionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'SPT';
        $instructions = Instruction::latest()->get();
        // $instructions = Instruction::leftjoin('instruction_employes as a','a.instruction_id', '=', 'instructions.id')
        // ->leftjoin('employes as b', 'a.employe_id', '=', 'b.id')
        // ->select('instructions.id', 'instructions.name', 'a.instruction_id', DB::raw('GROUP_CONCAT(b.name) as employe'))
        // ->groupBy('instructions.id' ,'a.instruction_id');
        // // ddd($instructions);

        return view('spt.index', compact('title', 'instructions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('spt.create', [
            'title' => 'Buat SPT',
            'employes' => Employe::all()->where('status', 1),
            'categories' => Category::all(),
            'transports' => Transport::all(),
            'accounts' => Account::all(),
            'rekenings' => Rekening::all(),
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
        $emps = DB::table('employes')
                            ->join('instruction_employes', 'employes.id', '=', 'instruction_employes.employe_id')
                            ->join('instructions', 'instruction_employes.instruction_id' , '=', 'instructions.id')
                            ->where('instructions.tgl_berangkat', 'LIKE', '%'.$request->tgl_berangkat.'%')
                            ->get('employes.id');

        $emp = []; 
        foreach ($emps as $key) 
        { 
            foreach ($key as $value) 
            { 
            $emp[] = $value; 
            } 
        }
        
        $validatedData = $request->validate([
            'kegiatan' => 'required',
            'sub_kegiatan' => 'required',
            'employe_id' => 'required',
            'category_id' => 'required',
            'transport_id' => 'required',
            't_berangkat' => 'required',
            'destination_id' => 'required',
            'lama' => 'required',
            'tgl_berangkat' => 'required',
            'tgl_pulang' => 'required',
            'account_id' => 'required',
            'ket' => 'required',
            'terbilang' => 'required',
            'terima' => 'required',
            'sub_komponen' => 'required',
            'rekening_id' => 'required',
            'hadir' => 'required',
            'arahan' => 'required',
            'masalah' => 'required',
            'saran' => 'required',
            'lain' => 'required',
        ]);
        
        $check = count($validatedData['employe_id']);
        $empl = array_map('intval', $validatedData['employe_id']);

            for ($i = 0; $i < $check; $i++) {
                if (in_array($empl[$i], $emp, true)) {
                    return back()->with('toast_error', 'Pegawai Sudah Digunakan Di Tanggal Tersebut')
                    ->withInput();
              }
            }
        

        Instruction::create($validatedData)->employe()->attach($request->employe_id);
        return redirect(route('instructions.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Instruction  $instruction
     * @return \Illuminate\Http\Response
     */
    public function show(Instruction $instruction)
    {
        return view('spt.detail', [
            'title' => 'Show SPT',
            'employes' => Employe::get(),
            'categories' => Category::get(),
            'transports' => Transport::get(),
            'accounts' => Account::get(),
            'rekenings' => Rekening::get(),
            'destinations' => Destination::get(),
            'key' => $instruction,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Instruction  $instruction
     * @return \Illuminate\Http\Response
     */
    public function edit(Instruction $instruction)
    {
        return view('spt.edit', [
            'title' => 'Edit SPT',
            'employes' => Employe::get(),
            'categories' => Category::get(),
            'transports' => Transport::get(),
            'accounts' => Account::get(),
            'rekenings' => Rekening::get(),
            'destinations' => Destination::get(),
            'instruction' => $instruction,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Instruction  $instruction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Instruction $instruction)
    {
        $validatedData = $request->validate([
            'kegiatan' => 'required',
            'sub_kegiatan' => 'required',
            'employe_id' => 'required',
            'category_id' => 'required',
            'transport_id' => 'required',
            't_berangkat' => 'required',
            'destination_id' => 'required',
            'lama' => 'required',
            'tgl_berangkat' => 'required',
            'tgl_pulang' => 'required',
            'account_id' => 'required',
            'ket' => 'required',
            'terbilang' => 'required',
            'terima' => 'required',
            'sub_komponen' => 'required',
            'rekening_id' => 'required',
            'hadir' => 'required',
            'arahan' => 'required',
            'masalah' => 'required',
            'saran' => 'required',
            'lain' => 'required',
        ]);

        $instruction->update($validatedData);
        $instruction->employe()->sync($request->employe_id);

        return redirect(route('instructions.index'))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Instruction  $instruction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Instruction $instruction)
    {
        $instruction = Instruction::find($instruction->id);
        $instruction->delete();
        return redirect(route('instructions.index'))->with('toast_success', 'Berhasil Menghapus Data!');
    }

    public function cetak(Instruction $instruction)
    {
        $instructions = $instruction;
        

        $templateProcessor = new TemplateProcessor('word-template/spt.docx');
        // Creating the new document...
        $phpWord = new \PhpOffice\PhpWord\PhpWord();

        // Perhitungan Total
                $harian = 0;
                $makan = 0;
                $transport = 0;

                foreach ($instructions->employe as $key) {
                     
                     $transport += $key->utransport; 
                }

                $total = ($transport * $instruction->lama);

            // End Perhitungan

// Set Value
            $templateProcessor->setValue('kegiatan', $instruction->kegiatan);
            $templateProcessor->setValue('subkegiatan', $instruction->sub_kegiatan);
            $templateProcessor->setValue('subkomponen', $instruction->sub_komponen);
            $templateProcessor->setValue('terima', $instruction->terima);
            $templateProcessor->setValue('jumlah', $instruction->terbilang);
            $templateProcessor->setValue('total', $total);
            $templateProcessor->setValue('tujuan', $instruction->destination->name);
            $templateProcessor->setValue('rekening', $instruction->rekening->nomor);
            $templateProcessor->setValue('category', $instruction->category->name);
            $templateProcessor->setValue('tgl_berangkat', date('d-m-Y', strtotime($instruction->tgl_berangkat)));
            $templateProcessor->setValue('tgl', $instruction->created_at->format('d-m-Y'));

            foreach ($instructions->employe as $item) {
                $templateProcessor->setValue('namattd', $item->name);
                $templateProcessor->setValue('nipttd', $item->nip);
            }

            $templateProcessor->setValue('hadir', $instructions->hadir);
            $templateProcessor->setValue('arahan', $instructions->arahan);
            $templateProcessor->setValue('masalah', $instructions->masalah);
            $templateProcessor->setValue('saran', $instructions->saran);
            $templateProcessor->setValue('lain', $instructions->lain);

// End Set Value
        
// Format SPT

        $fancyTableStyle = array('borderSize' => 0);
        $fancyTableFirstRowStyle = array('borderBottomSize' => 0);
        $fancyTableCellStyle = array('valign' => 'center', 'borderSize' => 0);
        $cellRowSpan = array('vMerge' => 'restart');
        $cellRowContinue = array('vMerge' => 'continue');
        $pStyle = array(
        'hanging' => 0,
        );
        $pHeadStyle = array(
        'hanging' => 0,
        'align' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER,
        );
        $numPStyle = array(
        'hanging' => 300,
        );
        $tStyle = array(
            'alignment' =>  \PhpOffice\PhpWord\SimpleType\JcTable::CENTER,
        );
        $headerStyle = array(
            'valign' =>  'center',
            'borderSize' => 1,
        );
        $valueStyle = array(
            'valign' =>  'center',
            'borderSize' => 1,
            'align' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER,
        );
        $footerStyle = array(
            'bold' => true,
            'align' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER,
            'hanging' => 0,
        );
        $kwTableStyle = array(
            'alignment' =>  \PhpOffice\PhpWord\SimpleType\JcTable::CENTER,
            'borderSize' => 1,
        );
        $pNameStyle = array(
            'bold' => true,
            'underline' => \PhpOffice\PhpWord\Style\Font::UNDERLINE_SINGLE,
            'align' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER,
            'hanging' => 0,
        );
        $nameStyle = array(
            'valign' => 'bottom',
            'borderSize' => 1,
        );


        $table = new Table();

        foreach ($instructions->employe as $index => $item) {

            $no = $index + 1;
            $nama = $item->name;
            $gol = $item->gol;
            $nip = $item->nip;
            $jabatan = $item->jabatan;
            $pangkat = $item->pangkat;

            $table->addRow();
            $table->addCell(400, $cellRowSpan, $tStyle)->addText("$no", $pStyle);
            $table->addCell(300, $cellRowSpan)->addText("Nama", null, $pStyle);
            $table->addCell(8000)->addText(": $nama", null, $pStyle);
            $table->addRow();
            $table->addCell(null, $cellRowSpan);
            $table->addCell(null, $cellRowSpan)->addText("Pangkat/gol", null, $pStyle);
            $table->addCell(null)->addText(": $pangkat $gol", null, $pStyle);
            $table->addRow();
            $table->addCell(null, $cellRowSpan);
            $table->addCell(null, $cellRowSpan)->addText("NIP.", null, $pStyle);
            $table->addCell(null)->addText(": $nip", null, $pStyle);
            
            $table->addRow();
            $table->addCell(null, $cellRowSpan);
            $table->addCell(null, $cellRowSpan)->addText("Jabatan", null, $pStyle);
            $table->addCell(null)->addText(": $jabatan", null, $pStyle);
            $table->addRow();
            $table->addCell(null, $cellRowSpan);
            $table->addCell(null);
        }

        $templateProcessor->setComplexBlock('${table}', $table);

// End SPT

// Format LapJadDin

        $pegawai = new Table();

        foreach ($instructions->employe as $index => $item) {

            $nama = $item->name;

            $pegawai->addRow();
            $pegawai->addCell(8000)->addText(" - $nama", null, $pStyle);
        }

        $templateProcessor->setComplexBlock('${pegawai}', $pegawai);

// End LapJadDin

// Format Kuitansi

        $kw = new Table();

            $kw->addRow();
            $kw->addCell(200, $headerStyle, $kwTableStyle)->addText("NO", null, $pHeadStyle);
            $kw->addCell(7800, $headerStyle, $kwTableStyle)->addText("PERHITUNGAN BIAYA", null, $pHeadStyle);
            $kw->addCell(2000, $headerStyle, $kwTableStyle)->addText("JUMLAH", null, $pHeadStyle);
            $kw->addCell(8000, $headerStyle, $kwTableStyle)->addText("NAMA DAN TANDA TANGAN PENERIMA", null, $pHeadStyle);

        foreach ($instructions->employe as $index => $item) {

            $no = $index + 1;
            $nama = $item->name;
            $uharian = $item->uharian;
            $umakan = $item->umakan;
            $utransport = $item->utransport;
            $lama = $instructions->lama;
            $jHarian = $uharian * $lama;
            $jMakan = $umakan * $lama;
            $jTransport = $utransport * $lama;

            $kw->addRow();
            $kw->addCell(null, $headerStyle, $kwTableStyle)->addText("$no", null, $pStyle);
            $kw->addCell(null, $kwTableStyle)->addText("Uang Transport <w:br />$lama X Rp. $utransport", null, $pStyle);
            $kw->addCell(null, $headerStyle, $kwTableStyle)->addText("<w:br />Rp. $jTransport", null, $pStyle);
            $kw->addCell(null, $nameStyle, $kwTableStyle)->addText("$nama", null, $pNameStyle);
        }

            $kw->addRow();
            $kw->addCell(200, $headerStyle, $kwTableStyle)->addText(" ", null, $footerStyle);
            $kw->addCell(6000, $headerStyle, $kwTableStyle)->addText("JUMLAH SELURUHNYA", null, $footerStyle);
            $kw->addCell(4000, $headerStyle, $kwTableStyle)->addText("Rp. $total", null, $pStyle);
            $kw->addCell(6000, $headerStyle, $kwTableStyle)->addText(" ", null, $footerStyle);

        $templateProcessor->setComplexBlock('${kw}', $kw);

// End Kuitansi
        

// Save Format
        $fileName = 'SPT & Laporan ' . $instructions->created_at->format('d-m-Y');
        
        $templateProcessor->saveAs($fileName . '.docx');
        return response()->download($fileName . '.docx')->deleteFileAfterSend(true);
// End Save
    }

    public function cetaksppd(Request $request)
    {
        $key = $request->instruction;
        $lock = $request->id;
        $instructions = Instruction::all()->where('id', $key);
        $items = Employe::where('id', $lock)->get();
        // dd($item);

        $templateProcessor = new TemplateProcessor('word-template/sppd.docx');
        // Creating the new document...
        $phpWord = new \PhpOffice\PhpWord\PhpWord();

        foreach ($items as $item) {
            $templateProcessor->setValue('pegawai', $item->name);
            $templateProcessor->setValue('nip', $item->nip);
            $templateProcessor->setValue('pangkat', $item->pangkat);
            $templateProcessor->setValue('gol', $item->gol);
            $templateProcessor->setValue('jabatan', $item->jabatan);
        }

        foreach ($instructions as $instruction) {
            $templateProcessor->setValue('kegiatan', $instruction->kegiatan);
            $templateProcessor->setValue('subkomponen', $instruction->sub_komponen);
            $templateProcessor->setValue('lama', $instruction->lama);
            $templateProcessor->setValue('transportasi', $instruction->transport->name);
            $templateProcessor->setValue('t_berangkat', $instruction->t_berangkat);
            $templateProcessor->setValue('t_tujuan', $instruction->destination->name);
            $templateProcessor->setValue('tgl_berangkat', date('d-m-Y', strtotime($instruction->tgl_berangkat)));
            $templateProcessor->setValue('tgl_pulang', date('d-m-Y', strtotime($instruction->tgl_pulang)));
            $templateProcessor->setValue('akun', $instruction->account->name);
            $templateProcessor->setValue('ket', $instruction->ket);
            $templateProcessor->setValue('tgl', $instruction->created_at->format('d-m-Y'));
        }
        
        foreach ($items as $item) {
        $fileName = 'SPPD ' . $item->name;
        }
        $templateProcessor->saveAs($fileName . '.docx');
        // $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        // $objWriter->save($fileName . '.docx');
        return response()->download($fileName . '.docx')->deleteFileAfterSend(true);

        // return view('welcome');
    }

    public function tugas(Request $request)
    {
        $updateIns = [
            'status' => $request->status_instruction,
        ];

        $updateEmploye = [
            'status' => $request->status_employe
        ];

        Instruction::where('id', $request->instruction)->update($updateIns);
        Employe::where('id', $request->id)->update($updateEmploye);
        DB::commit();
        return redirect(route('instructions.show', $request->instruction))->with('toast_success', 'Berhasil Menyimpan Data!');

    }

    public function selesai(Request $request)
    {

        $instruction = Instruction::where('id', $request->instruction)->first();
        $instruction->update([
            'status' => $request->status_instruction,
        ]);

        $employe = Employe::where('id', $request->id)->first();
        $employe->update([
            'status' => $request->status_employe,
        ]);

        return redirect(route('instructions.show', $request->instruction))->with('toast_success', 'Berhasil Menyimpan Data!');
    }

    public function export() 
    {
        return Excel::download(new SuratExport, 'BKU.xlsx');
        // return 'berhasil';
    }

}
