@extends('layouts.master')
@section('container')

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Data SPT
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <a href="{{ route('instructions.create') }}" class="btn btn-md bg-green">Tambah</a>
                  <a href="{{ route('excel') }}" class="btn btn-md bg-blue">Export Lap. Perjadin</a>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <td>No</td>
                        <td>Nama Kegiatan</td>
                        <td>Pegawai Ditugaskan</td>
                        <td>Tanggal Tugas</td>
                        <td>Aksi</td>
                      </tr>
                    </thead>
                        @foreach ($instructions as $key)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $key->kegiatan }}</td>
                            <td>
                              @foreach ($key->employe as $emp)
                                {{ $emp->name }},
                              @endforeach
                              </td>
                            <td>{{ $key->tgl_berangkat }}</td>
                            <td>
                               <a class="btn btn-info" href="{{ route('instructions.show', $key->id) }}">Show</a> 
                                <a class="btn btn-warning" href="{{ route('instructions.edit', $key->id) }}">Edit</a>
                                <!-- <a class="btn btn-success" href="{{ route('instructions.print', $key->id) }}">Print</a> -->
                                <form action="{{ route('instructions.destroy', $key->id) }}" method="post" style="display: inline;">
                                    @method('delete')
                                    @csrf
                                    <button class="btn btn-danger border-0 " onclick="return confirm('Are you sure?')">Hapus</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->

@endsection