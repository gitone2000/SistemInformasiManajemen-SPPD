@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Transportasi</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('transports.store') }}" method="POST">
            @csrf
            <div class="box-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama Transportasi</label>
                <input required type="text" class="form-control" name="name" placeholder="Masukkan Nama Transportasi">
              </div>
              <div class="form-group">
                  <label>Jenis Transportasi</label>
                  <select required class="form-control" name="jenis">
                    <option value="DARAT">DARAT</option>
                    <option value="LAUT">LAUT</option>
                    <option value="UDARA">UDARA</option>
                  </select>
              </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('transports.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection