@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Pegawai</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('employes.store') }}" method="POST">
            @csrf
            <div class="box-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama</label>
                <input required type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="Masukkan Nama">
                @error('name')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">NIP</label>
                <input required type="text" class="form-control" name="nip" value="{{ old('nip') }}" placeholder="Masukkan NIP">
                @error('nip')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Pangkat</label>
                <input required type="text" class="form-control" name="pangkat" value="{{ old('pangkat') }}" placeholder="Masukkan Pangkat">
                @error('pangkat')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Golongan</label>
                <input required type="text" class="form-control" name="gol" value="{{ old('gol') }}" placeholder="Masukkan Golongan">
                @error('gol')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Jabatan</label>
                <input required type="text" class="form-control" name="jabatan" value="{{ old('jabatan') }}" placeholder="Masukkan Jabatan">
                @error('jabatan')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Uang Harian</label><br>
                <input required type="number" class="form-control" name="uharian" value="{{ old('uharian') }}" placeholder="Masukkan Uang Harian">
                @error('uharian')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Uang Makan</label><br>
                <input required type="number" class="form-control" name="umakan" value="{{ old('umakan') }}" placeholder="Masukkan Uang Makan">
                @error('umakan')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Uang Transport</label><br>
                <input required type="number" class="form-control" name="utransport" value="{{ old('utransport') }}" placeholder="Masukkan Uang Transport">
                @error('utransport')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>

            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('employes.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection