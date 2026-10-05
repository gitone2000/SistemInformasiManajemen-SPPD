@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Pembiayaan</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('transactions.update', $transactions->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="box-body">
              <div class="form-group">
                <label for="exampleInputEmail1">Nomor Kwitansi</label>
                <input required type="text" class="form-control" value="{{ old('no_kwitansi', $transactions->no_kwitansi) }}" name="no_kwitansi" placeholder="Masukkan Nomor Kwitansi">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Sudah Terima Dari</label>
                <input required type="text" class="form-control" value="{{ old('terima', $transactions->terima) }}" name="terima" placeholder="Masukkan Terima Dari">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Guna Membayar</label><br>
                <textarea required name="guna" cols="40" rows="10">{{ $transactions->guna }}</textarea>
              </div>
                <div class="form-group">
                    <label>Nomor SPT</label>
                    <select required class="form-control select2" name="instruction_id" data-placeholder="Pilih SPT" style="width: 100%;">
                      <option value="" selected disabled>Pilih Nomor SPT</option>
                      @foreach($instructions as $key)
                        <option value="{{ $key->id }}" {{ old('instruction_id', $transactions->instruction_id) == $key->id ? 'selected' : '' }}>090/{{ $key->no_spt }}/408.36.6/{{ $key->created_at->format('Y') }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Nomor Rekening</label>
                    <select required class="form-control select2" name="rekening_id" data-placeholder="Pilih Rekening" style="width: 100%;">
                      <option value="" selected disabled>Pilih Nomor Rekening</option>
                      @foreach($rekenings as $key)
                        <option value="{{ $key->id }}" {{ old('rekening_id', $transactions->rekening_id) == $key->id ? 'selected' : '' }}>{{ $key->nomor }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Lama Perjalanan</label>
                    <input required type="number" class="form-control" value="{{ old('lama', $transactions->lama) }}" name="lama" placeholder="Masukkan Lama (Hari)">
                  </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('transactions.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection