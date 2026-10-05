<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kwitansi</title>
    <style>
        body {
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif
        }
    </style>
</head>
<body>
    <table>
            @php
                $uharian = 0;
                $umakan = 0;
                $utransport = 0;
            @endphp
            @foreach ($instruction->employe as $key)
                {{ $uharian += $key->uharian }}
                {{ $umakan += $key->umakan }}
                {{ $utransport += $key->utransport }}
            @endforeach
            @php
                $total = (($uharian * $instruction->lama) + ($umakan * $instruction->lama) + ($utransport * $instruction->lama));
               
            @endphp
        
    </table>
    <h4 style="text-align: center;">
        RINCIAN BIAYA PERJALANAN DINAS<br>
        {{ strtoupper($instruction->category->name) }}
    </h4>
    <h4 style="text-align: center;">
        KWITANSI
    </h4>
    <table border="0" width="100%">
        <tr>
            <td width="20%">Nomor</td>
            <td width="80%"> : {{ $instruction->no_kwitansi }}</td>
        </tr>
        <tr>
            <td>Kode Rekening</td>
            <td> : {{ $instruction->rekening->nomor }}</td>
        </tr>
        <tr>
            <td style="vertical-align: top;">Sudah terima dari</td>
            <td style="vertical-align: top;"> : Bendahara Pengeluaran Pembantu Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota Sub Kegiatan {{ $instruction->terima }}</td>
        </tr>
         <tr>
            <td>Jumlah uang</td>
            <td> : @currency($total)</td>
        </tr> 
        <tr>
            <td style="vertical-align: top;">Guna membayar</td>
            <td style="vertical-align: top;"> : Biaya perjalanan dinas dalam daerah dalam rangka {{ $instruction->kegiatan }} tanggal {{ date('d-m-Y', strtotime($instruction->tgl_berangkat)); }}</td>
        </tr>
        <tr>
            <td>Terbilang</td>
            <td> : {{ $instruction->terbilang }}</td>
        </tr>
    </table>

    <h4 style="text-align: center;">
        PERINCIAN PERHITUNGAN BIAYA PERJALANAN DINAS
    </h4>

    <table border="1" align="center" width="80%" style="border: 1px solid black; font-size: 12px;">
        <tr>
            <td width="5%"><b>No.</b></td>
            <td width="35%" align="center"><b>PERHITUNGAN BIAYA</b></td>
            <td width="25%" align="center"><b>JUMLAH</b></td>
            <td width="35%" align="center"><b>NAMA DAN TANDA TANGAN
                PENERIMA
                </b></td>
        </tr>
        @foreach ($instruction->employe as $index => $key)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>
                Uang Harian<br>
                1 org x {{ $instruction->lama }} kl &nbsp;&nbsp;&nbsp;x&nbsp;&nbsp;&nbsp;  @currency($key->uharian) <br>
                JUMLAH : <br>
                Uang Makan<br>
                1 org x {{ $instruction->lama }} kl &nbsp;&nbsp;&nbsp;x&nbsp;&nbsp;&nbsp;  @currency($key->umakan) <br>
                JUMLAH : <br>
                Uang Transport<br>
                1 org x {{ $instruction->lama }} kl &nbsp;&nbsp;&nbsp;x&nbsp;&nbsp;&nbsp;  @currency($key->utransport) <br>
                JUMLAH : 
            </td>
            <td align="right">
                @currency($key->uharian * $instruction->lama)<br><br>
                @currency($key->umakan * $instruction->lama)<br><br>
                @currency($key->utransport * $instruction->lama)
                <hr>
                @currency(($key->uharian * $instruction->lama) + ($key->umakan * $instruction->lama))
            </td>
            <td style="vertical-align: bottom;" align="center">
               <u>( {{ $key->name }} )</u>
            </td>
        </tr>
        @endforeach
        <tr>
            <td></td>
            <td><b>JUMLAH SELURUHNYA</b></td>
            <td align="right"><b>@currency($total)</b></td>
            <td></td>
        </tr>
    </table>

    <br><br>

    <table style="font-size: 14px;" align="center" border="0" width="80%">
        <tr>
            <td align="center" rowspan="2">Mengetahui, <br>KUASA PENGGUNA ANGGARAN</td>
            <td align="center">
                Lunas dibayar pada tanggal :   &nbsp;&nbsp;-   &nbsp;&nbsp;- {{ $instruction->created_at->format('Y') }}
            </td>
        </tr>
        <tr>
            <td align="center">BENDAHARA PENGELUARAN<br>PEMBANTU</td>
        </tr>
        <tr>
            <td>
                <br><br><br><br><br><br><br><br>
            </td>
            <td>
                <br><br><br><br><br><br><br><br>
            </td>
        </tr>
        <tr style="font-size: 11px;">
            <td align="center">
                <u><b>dr. JOHAN TRI PUTRANTO</b></u><br>
                NIP. 19800609 200903 1 002
            </td>
            <td align="center">
                <u><b>YUYUN INJANAWATI,A.md.Keb</b></u><br>
                NIP. 19840318 201704 2 007
            </td>
        </tr>
    </table>

</body>
</html>