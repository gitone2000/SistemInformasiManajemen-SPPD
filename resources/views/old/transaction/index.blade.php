@extends('layouts.master')
@section('container')

        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Data Pembiayaan
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <a href="{{ route('transactions.create') }}" class="btn btn-md bg-green">Tambah</a>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <td>No</td>
                        <td>Nomor SPT</td>
                        <td>Pegawai</td>
                        <td>Aksi</td>
                      </tr>
                    </thead>
                        @foreach ($transactions as $key)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>090/{{ $key->instruction->no_spt }}/408.36.6/{{ $key->instruction->created_at->format('Y') }}</td>
                            <td>
                              @foreach ($key->instruction->employe as $emp)
                                {{ $emp->name }},
                              @endforeach
                              </td>
                            <td>
                                {{-- <a class="btn btn-info" href="{{ route('transactions.show', $key->id) }}">Show</a> --}}
                                <a class="btn btn-warning" href="{{ route('transactions.edit', $key->id) }}">Edit</a>
                                <a class="btn btn-success" href="{{ route('transactions.print', $key->id) }}">Print</a>
                                <form action="{{ route('transactions.destroy', $key->id) }}" method="post" style="display: inline;">
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