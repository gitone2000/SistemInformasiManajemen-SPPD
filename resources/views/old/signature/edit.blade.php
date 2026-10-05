@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Penandatangan</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('signatures.update', $signatures->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="box-body">
                <div class="form-group">
                    <label>Penandatangan</label>
                    <select class="form-control select2" name="employe_id" data-placeholder="Pilih Penandatangan" style="width: 100%;">
                      @foreach($employes as $key)
                        <option 
                        @foreach($signatures->employe as $tag_lama)
                        @if($tag_lama->id == $key->id)
                        selected
                        @endif
                        @endforeach
                         value="{{ $key->id }}">{{ $key->name }}</option>
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