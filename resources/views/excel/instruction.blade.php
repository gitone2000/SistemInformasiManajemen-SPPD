<table border="1">
    <thead>
        <tr>
            <th colspan="7">Surat Perintah Tugas</th>
            <th colspan="6">SPPD</th>
            <th colspan="14">Rincian Biaya</th>
            <th colspan="7">Berangkat</th>
            <th colspan="8">Kembali</th>
            <th></th>
        </tr>
        <tr>
            <th rowspan="2">No</th>
            <th rowspan="2">Nama Lengkap</th>
            <th rowspan="2">NIP</th>
            <th rowspan="2">NomorSurat Perintah Tugas</th>
            <th rowspan="2">Tanggal Surat Perintah Tugas</th>
            <th rowspan="2">Keperluan Perjalanan Dinas</th>
            <th rowspan="2">Bidang/Unit</th>
            <th rowspan="2">Gol. Peg</th>
            <th rowspan="2">Daerah Tujuan</th>
            <th rowspan="2">
                Moda Transportasi Yang Digunakan (darat, air, udara)
            </th>
            <th colspan="2">Tanggal</th>
            <th rowspan="2">Lama Hari</th>
            <th colspan="2">Uang Harian</th>
            <th rowspan="2">
                Uang Representasi (Khusus Sekda, Pimpinan dan Anggota
                DPRD, dan Pejabat Es II )
            </th>
            <th rowspan="2">Nama Penginapan/Hotel</th>
            <th rowspan="2">Biaya Akomodasi</th>
            <th rowspan="2">
                Biaya Lain/ Kontribusi/ Bantuan Transport
            </th>
            <th rowspan="2">
                Biaya Tiket Maskapai/Kereta/Travel/Bis Berangkat
            </th>
            <th rowspan="2">
                Biaya Tiket Maskapai/Kereta/Travel/Bis Kembali
            </th>
            <th rowspan="2">Bantuan Transport / BBM</th>
            <th rowspan="2">Biaya Taxi berangkat</th>
            <th rowspan="2">Biaya Taxi Pulang</th>
            <th rowspan="2">Biaya Travel</th>
            <th rowspan="2">Tidak Menginap di Hotel (30%)</th>
            <th rowspan="2">TOTAL BIAYA</th>
            <th rowspan="2">No. Bukti</th>
            <th rowspan="2">Tanggal Bukti</th>
            <th rowspan="2">No Tiket</th>
            <th rowspan="2">Nama Maskapai/Kereta/Travel/Bis</th>
            <th rowspan="2">Tempat Asal</th>
            <th rowspan="2">Tempat Tujuan</th>
            <th rowspan="2">Tgl Berangkat Sesuai Tiket</th>
            <th rowspan="2">Tgl Pulang Sesuai Tiket</th>
            <th rowspan="2">No. Bukti</th>
            <th rowspan="2">Tanggal Bukti</th>
            <th rowspan="2">No Tiket</th>
            <th rowspan="2">Nama Maskapai/Kereta/Travel/Bis</th>
            <th rowspan="2">Tempat Asal</th>
            <th rowspan="2">Tempat Tujuan</th>
            <th rowspan="2">Tgl Kembali Sesuai Tiket</th>
            <th rowspan="2">JUMLAH YANG DIBAYARKAN</th>
        </tr>
        <tr>
            <th>Berangkat</th>
            <th>Pulang</th>
            <th>Per Hari</th>
            <th>Total</th>
        </tr>
        <tr>
            <th>1</th>
            <th>2</th>
            <th>3</th>
            <th>4</th>
            <th>5</th>
            <th>6</th>
            <th>7</th>
            <th>8</th>
            <th>9</th>
            <th>10</th>
            <th>11</th>
            <th>12</th>
            <th>13</th>
            <th>14</th>
            <th>15</th>
            <th>16</th>
            <th>17</th>
            <th>18</th>
            <th>19</th>
            <th>20</th>
            <th>21</th>
            <th>22</th>
            <th>23</th>
            <th>24</th>
            <th>25</th>
            <th>26</th>
            <th>27=15+16+17+18+19+20+21+22+23+24+25+26</th>
            <th>28</th>
            <th>29</th>
            <th>30</th>
            <th>31</th>
            <th>32</th>
            <th>33</th>
            <th>34</th>
            <th>35</th>
            <th>36</th>
            <th>37</th>
            <th>38</th>
            <th>39</th>
            <th>40</th>
            <th>41</th>
            <th>42</th>
            <th>43</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($instructions as $key)
        <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $key->nama }}</td>
                <td>{{ $key->nip }}</td>
                <td>090/   /408.36.6/2023</td>
                <td>{{ $key->tgl_berangkat }}</td>
                <td>{{ $key->sub_komponen }}</td>
                <td>Puskesmas</td>
                <td>{{ $key->gol }}</td>
                <td>{{ $key->t_tujuan }}</td>
                <td>Darat</td>
                <td>{{ $key->tgl_berangkat }}</td>
                <td>{{ $key->tgl_pulang }}</td>
                <td>{{ $key->lama }}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>{{ $key->utransport }}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>{{ $key->utransport + $key->uharian }}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>{{ $key->utransport + $key->uharian }}</td>
        </tr>
        @endforeach
    </tbody>
    <tfoot>
        @php
            $total = 0;
        @endphp
        @foreach ($instructions as $key)
            {{ $total += $key->utransport }}
        @endforeach
        <tr>
            <td colspan="21">TOTAL</td>
            <td>{{ $total }}</td>
            <td colspan="21">{{ $total }}</td>
        </tr>
    </tfoot>
</table>