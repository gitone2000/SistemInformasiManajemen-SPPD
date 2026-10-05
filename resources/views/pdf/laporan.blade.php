<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Tugas</title>
</head>
<body>
    <h4 style="text-align: center;">
        LAPORAN PERJALANAN DINAS
    </h4>
    <br><br><br>

    <table align="center" width="90%" style="font-size: 15px;">
        <tr>
            <td style="vertical-align: top;" width="5%">I.</td>
            <td style="vertical-align: top;" width="40%">DASAR</td>
            <td style="vertical-align: top;" width="5%">:</td>
            <td style="vertical-align: top;">090/{{ $resumes->instruction->no_spt }}/408.36.6/{{ $resumes->created_at->format('Y') }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >II.</td>
            <td style="vertical-align: top;" >MAKSUD TUJUAN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->maksud }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >III.</td>
            <td style="vertical-align: top;" >TANGGAL PELAKSANAAN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->instruction->created_at->format('d-m-Y') }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >IV.</td>
            <td style="vertical-align: top;" >NAMA PETUGAS</td>
            <td style="vertical-align: top;">:</td>
            <td style="vertical-align: top;">
                @foreach ($resumes->instruction->employe as $key)
                - {{ $key->name }} <br>
                @endforeach  <br>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >V.</td>
            <td style="vertical-align: top;" >DAERAH TUJUAN/INSTANSI YANG DIKUNJUNGI<br><br></td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->destination->name }}</td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >VI.</td>
            <td style="vertical-align: top;" >HADIR DALAM PERTEMUAN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->hadir }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >VII.</td>
            <td style="vertical-align: top;" >PETUNJUK/ARAHAN YANG DIBERIKAN<br><br></td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->arahan }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >VIII.</td>
            <td style="vertical-align: top;" >MASALAH/TEMUAN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->masalah }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >IX.</td>
            <td style="vertical-align: top;" >SARAN TINDAKAN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->saran }}<br><br></td>
        </tr>
        <tr>
            <td style="vertical-align: top;" >X.</td>
            <td style="vertical-align: top;" >LAIN-LAIN</td>
            <td style="vertical-align: top;" >:</td>
            <td style="vertical-align: top;">{{ $resumes->lain }}<br><br></td>
        </tr>
    </table>
    <br><br>

    <table align="right" border="0" width="30%" style="font-size: 15px;">
        <tr>
            <td style="text-align: center;">
                Gondosari, {{ $resumes->created_at->format('d-m-Y') }}<br><br>
                Yang melaksanakan perjalanan dinas
            </td>
        </tr>
        <tr>
            <td style="text-align: center;"><br><br><br><br><br></td>
        </tr>
        <tr>
            <td style="text-align: center;">
                @foreach ($resumes->instruction->employe as $index=>$key)
                @if ($index == 0)
                <u><b>{{ $key->name }}</b></u><br>
                {{ $key->nip }}
                @else
                @php
                    $index + 99;
                @endphp
                @endif
                @endforeach
            </td>
        </tr>
    </table>
</body>
</html>