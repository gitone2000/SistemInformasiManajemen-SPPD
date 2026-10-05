@extends('layouts.master')
@section('container')

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Detail Tugas
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <a href="{{ route('instructions.index') }}" class="btn btn-md bg-blue">Kembali</a>
                  <a href="{{ route('instructions.print', $key->id) }}" class="btn btn-md bg-green">Cetak SPT, Laporan, & Kuitansi</a>
                  <!-- <hr> -->
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table border="0" class="table table-striped">
                    <tr>
                      <td>Kegiatan</td>
                      <td>{{ $key->kegiatan }}</td>
                    </tr>
                    <tr>
                      <td>Sub Kegiatan</td>
                      <td>{{ $key->sub_kegiatan }}</td>
                    </tr>
                    <tr>
                      <td>Kategori Perjalanan</td>
                      <td>{{ $key->category->name }}</td>
                    </tr>
                    <tr>
                      <td>Pegawai Ditugaskan</td>
                      <td>
                        @foreach ($key->employe as $item)
                        - {{ $item->name }} <a class="btn btn-success btn-xs" href="{{ route('instructions.printsppd', ['id' => $item->id, 'instruction' => $key->id]) }}">
                          Cetak SPPD</a>
                          <br><br>
                        @endforeach
                      </td>
                    </tr>
                    <tr>
                      <td>Alat Angkut</td>
                      <td>{{ $key->transport->name }}</td>
                    </tr>
                    <tr>
                      <td>Tempat Berangkat</td>
                      <td>{{ $key->t_berangkat }}</td>
                    </tr>
                    <tr>
                      <td>Tempat Tujuan</td>
                      <td>{{ $key->destination->name }}</td>
                    </tr>
                    <tr>
                      <td>Lama Perjalanan</td>
                      <td>{{ $key->lama }} Hari</td>
                    </tr>
                    <tr>
                      <td>Tanggal Berangkat</td>
                      <td>{{ $key->tgl_berangkat }}</td>
                    </tr>
                    <tr>
                      <td>Tanggal Pulang</td>
                      <td>{{ $key->tgl_pulang }}</td>
                    </tr>
                    <tr>
                      <td>Akun Anggaran</td>
                      <td>{{ $key->account->name }}</td>
                    </tr>
                    <tr>
                      <td>Sudah Terima Dari</td>
                      <td>{{ $key->terima }}</td>
                    </tr>
                    <tr>
                      <td>Sub Komponen</td>
                      <td>{{ $key->sub_komponen }}</td>
                    </tr>
                    <tr>
                      <td>Jumlah Uang</td>
                      <td>{{ $key->terbilang }}</td>
                    </tr>
                    <tr>
                      <td>Nomor Rekening</td>
                      <td>{{ $key->rekening->nomor }}</td>
                    </tr>
                    <tr>
                      <td>Hadir Dalam</td>
                      <td>{{ $key->hadir }}</td>
                    </tr>
                    <tr>
                      <td>Arahan/Petunjuk</td>
                      <td>{{ $key->arahan }}</td>
                    </tr>
                    <tr>
                      <td>Temuan Masalah</td>
                      <td>{{ $key->masalah }}</td>
                    </tr>
                    <tr>
                      <td>Saran</td>
                      <td>{{ $key->saran }}</td>
                    </tr>
                    <tr>
                      <td>Lain - Lain</td>
                      <td>{{ $key->lain }}</td>
                    </tr>
                    <tr>
                      <td>keterangan</td>
                      <td>{{ $key->ket }}</td>
                    </tr>

                   
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->

@endsection