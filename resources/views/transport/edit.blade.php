@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Transportasi</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('transports.update', $transports->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="box-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nama Transportasi</label>
                <input required type="text" class="form-control" name="name" value="{{ old('name', $transports->name) }}" placeholder="Masukkan Nama Transportasi">
              </div>
              <div class="form-group">
                  <label>Jenis Transportasi</label>
                  <select required class="form-control" name="jenis">
                    <option value="DARAT" {{ $transports->jenis == 'DARAT' ? 'selected' : '' }}>DARAT</option>
                    <option value="LAUT" {{ $transports->jenis == 'LAUT' ? 'selected' : '' }}>LAUT</option>
                  <option value="UDARA" {{ $transports->jenis == 'UDARA' ? 'selected' : '' }}>UDARA</option>
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