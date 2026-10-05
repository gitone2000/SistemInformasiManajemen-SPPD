@extends('layouts.master')
@section('container')

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Data Penandatangan
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  {{-- <a href="{{ route('signatures.create') }}" class="btn btn-md bg-green">Tambah</a> --}}
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <td>No</td>
                        <td>Nama</td>
                        <td>Aksi</td>
                      </tr>
                    </thead>
                        @foreach ($signatures as $key)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $key->employe->name }}</td>
                            <td>
                                <a class="btn btn-warning" href="{{ route('signatures.edit', $key->id) }}">Edit</a>
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