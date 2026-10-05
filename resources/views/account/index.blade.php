@extends('layouts.master')
@section('container')

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Data Akun
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <a href="{{ route('accounts.create') }}" class="btn btn-md bg-green">Tambah</a>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <td>No</td>
                        <td>Nama Akun</td>
                        <td>Aksi</td>
                      </tr>
                    </thead>
                        @foreach ($accounts as $key)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $key->name }}</td>
                            <td>
                                <a class="btn btn-info" href="{{ route('accounts.show', $key->id) }}">Show</a>
                                <a class="btn btn-warning" href="{{ route('accounts.edit', $key->id) }}">Edit</a>
                                <form action="{{ route('accounts.destroy', $key->id) }}" method="post" style="display: inline;">
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