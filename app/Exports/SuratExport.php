<?php

namespace App\Exports;

use App\Models\Instruction;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class SuratExport implements FromView, WithEvents, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('excel.instruction', [
            'instructions' => DB::table('instruction_employes')
                            ->join('employes', 'instruction_employes.employe_id', '=', 'employes.id')
                            ->join('instructions', 'instruction_employes.instruction_id', '=', 'instructions.id')
                            ->join('destinations', 'instructions.destination_id', '=', 'destinations.id')
                            ->select(
                                'employes.name as nama',
                                'employes.nip as nip',
                                'instructions.tgl_berangkat as tgl_berangkat',
                                'instructions.tgl_pulang as tgl_pulang',
                                'instructions.sub_komponen as sub_komponen',
                                'employes.gol as gol',
                                'destinations.name as t_tujuan',
                                'instructions.lama as lama',
                                'employes.utransport as utransport',
                                'employes.uharian as uharian'
                            )
                            ->orderBy('instructions.tgl_berangkat', 'asc')
                            ->get(),
            'hitung' => DB::table('instruction_employes')->count('*'),
        ]);
    }

    public function registerEvents(): array
    {
        $cellRanges = DB::table('instruction_employes')->count('*');
        $styleArray = [
        'font' => [
            'bold' => true,
        ],
        ];

        return [
            AfterSheet::class    => function(AfterSheet $event) use ($styleArray, $cellRanges)
            {
                $cellRange = 'A1:AQ4'; // All headers
                $last = $cellRanges + 5;
                $cellRanges = 'A1:AQ'. $last; //All Column
                $lastRow = 'A'. $last . ':AQ' . $last; //Last Row
                $lastRows = 'A'. $last . ':U' . $last; //Last Row Center
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setName('Arial');
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(8);
                $event->sheet->getStyle($cellRange)->ApplyFromArray($styleArray);
                $event->sheet->getStyle($lastRow)->ApplyFromArray($styleArray);
                $event->sheet->getStyle($cellRanges)->applyFromArray([
                    'borders' => [
                        'allBorders' => [
                            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                            'color' => ['argb' => '000000'],
                        ],
                    ],
                ])->getAlignment()->setWrapText(true);
                $event->sheet->getStyle($cellRange)->getFill()
                ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                ->getStartColor()->setARGB('dbdbdb');
                $event->sheet->getStyle($lastRow)->getFill()
                ->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
                ->getStartColor()->setARGB('d8b454');
                $event->sheet->getDelegate()->getStyle($cellRange)
                                ->getAlignment()
                                ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                $event->sheet->getDelegate()->getStyle($lastRows)
                                ->getAlignment()
                                ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            },
        ];
    }
}
