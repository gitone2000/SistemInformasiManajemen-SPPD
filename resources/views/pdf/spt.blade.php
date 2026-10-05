<!DOCTYPE html>
<html>
<head>
	<title>SPT</title>
</head>
<body>
	<table align="center" border="0" width="100%" style="margin-top: -20px;">
		<tr>
			<td width="20%" align="center">
				 <img width="120px" height="120px" src="img/logo.png"> 
			</td>
			<td align="center">
				<h4>
					PEMERINTAH KABUPATEN PACITAN<br>
					DINAS KESEHATAN<br>
					PUSKESMAS GONDOSARI<br>
					<p style="margin-top: -20px;">
						Jln. Gondosari - Ploso Gondosari Kecamatan Punung, e-mail : gondosaripuskesmas@gmail.com Telp. 081216825500<br>
					<strong>Gondosari</strong>
					</p>
				</h4>
			</td>
		</tr>
	</table>
	<hr style="border: 1px; border-style: double;margin-top: -10px;">

	<h4 style="text-align: center;">
		<u>SURAT PERINTAH TUGAS</u>
		<p style="margin-top: -20px; text-align:center;">
			Nomor : 090/{{ $instruction->no_spt }}/408.36.6/{{ $instruction->created_at->format('Y') }}
		</p>
	</h4>

	<table border="0" align="center" width="100%" style="font-size: 14px;">
		<tr>
			<td width="10%">Dasar</td>
			<td width="5%">:</td>
			<td width="5%"></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td style="vertical-align: top;">1. </td>
			<td style="vertical-align: top;">Peraturan Daerah Kabupaten Pacitan Nomor 8 Tahun 2022 Tentang Anggaran Pendapatan dan Belanja Daerah Kabupaten Pacitan Tahun Anggaran 2023 ;</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td style="vertical-align: top;">2. </td>
			<td style="vertical-align: top;">Peraturan Bupati Pacitan Nomor 134 Tahun 2022 Tentang Penjabaran Anggaran Pendapatan Dan Belanja Daerah Kabupaten Pacitan Tahun 2023;</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td style="vertical-align: top;">3. </td>
			<td style="vertical-align: top;">Peraturan Bupati Pacitan Nomor 17 tahun 2021 Tentang Standar Satuan Biaya Pemerintah Kabupaten Pacitan Tahun 2023;</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td style="vertical-align: top;">4. </td>
			<td style="vertical-align: top;">DPA OPD Dinas Kesehatan Kabupaten Pacitan Tahun Anggaran 2023 Nomor : DPA/A.1/1.02.0.00.0.00.01.0000/001/2023 tanggal 30 Desember 2022.</td>
		</tr>
	</table>

	<h5 style="text-align: center;">
		MEMERINTAHKAN : 
	</h5>

	<table border="0" align="center" width="100%" style="font-size: 14px;">
		<tr>
			<td width="10%">Kepada</td>
			<td width="5%">:</td>
			<td width="10%"></td>
			<td width="25%"></td>
			<td></td>
		</tr>
		@foreach ($instruction->employe as $key)
		<tr>
			<td></td>
			<td></td>
			<td align="center" style="vertical-align: top;">{{ $loop->iteration }}.</td>
			<td>Nama</td>
			<td>: {{ $key->name }}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td>Pangkat/gol</td>
			<td>: {{ $key->pangkat }} {{ $key->gol }}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td>NIP</td>
			<td>: {{ $key->nip }}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td>Jabatan</td>
			<td>: {{ $key->jabatan }}</td>
		</tr>
		<br>
		@endforeach
		<tr>
			<td style="vertical-align: top;">Untuk</td>
			<td style="vertical-align: top;">:</td>
			<td style="vertical-align: top;" colspan="3">{{ $instruction->keperluan }}</td>
		</tr>
	</table>

	<br><br>

	<table border="0" align="right" width="40%" style="font-size: 14px;text-align:center;">
		<tr>
			<td>Gondosari, {{ $instruction->created_at->format('d-m-Y') }}</td>
		</tr>
		<tr>
			<td>Kepala Puskesmas Gondosari</td>
		</tr>
		<tr>
			<td>
				<br><br><br><br><br>
			</td>
		</tr>
		<tr>
			<td>
				<u><b>dr. JOHAN TRI PUTRANTO</b></u><br>
				Pembina<br>
				NIP. 19800609 200903 1 002 
			</td>
		</tr>
	</table>


</body>
</html>