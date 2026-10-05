@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Penandatangan</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('signatures.store') }}" method="POST">
            @csrf
            <div class="box-body">
                <div class="form-group">
                    <label>Penandatangan</label>
                    <select class="form-control select2" name="employe_id" data-placeholder="Pilih Penandatangan" style="width: 100%;">
                      <option value="" selected disabled>Pilih Pegawai</option>
                      @foreach($employes as $key)
                        <option value="{{ $key->id }}" {{ old('employe_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                      @endforeach
                    </select>
                  </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('signatures.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection