@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Akun</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('accounts.update', $accounts->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="box-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama Akun</label>
                <input required type="text" class="form-control" name="name" value="{{ old('name', $accounts->name) }}" placeholder="Masukkan Nama Akun">
              @error('name')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('accounts.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection