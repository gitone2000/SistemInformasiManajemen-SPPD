@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah SPPD</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('trips.store') }}" method="POST">
            @csrf
            <div class="box-body">
              <div class="form-group">
                  <label>Nomor SPT</label>
                  <select required class="form-control select2" name="instruction_id" data-placeholder="Pilih SPT" style="width: 100%;">
                    <option value="" selected disabled>Pilih Nomor SPT</option>
                    @foreach($instructions as $key)
                      <option value="{{ $key->id }}" {{ old('instruction_id') == $key->id ? 'selected' : '' }}>090/{{ $key->no_spt }}/408.36.6/{{ $key->created_at->format('Y') }}</option>
                    @endforeach
                  </select>
                  @error('instruction_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label>Kategori Perjalanan</label>
                  <select required class="form-control select2" name="category_id" data-placeholder="Pilih Kategori Perjalanan" style="width: 100%;">
                    <option value="" selected disabled>Pilih Kategori Perjalanan</option>
                    @foreach($categories as $key)
                      <option value="{{ $key->id }}" {{ old('category_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                  @error('category_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label>Pegawai Ditugaskan</label>
                  <select required class="form-control select2" name="employe_id" data-placeholder="Pilih Pegawai" style="width: 100%;">
                    <option value="" selected disabled>Pilih Pegawai</option>
                    @foreach($employes as $key)
                      <option value="{{ $key->id }}" {{ old('employe_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                  @error('employe_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Maksud</label>
                  <input required type="text" class="form-control" value="{{ old('maksud') }}" name="maksud" placeholder="Masukkan Maksud">
                  @error('maksud')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label>Transportasi</label>
                  <select required class="form-control select2" name="transport_id" data-placeholder="Pilih Transportasi" style="width: 100%;">
                    <option value="" selected disabled>Pilih Transportasi</option>
                    @foreach($transports as $key)
                      <option value="{{ $key->id }}" {{ old('transport_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                  @error('transport')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Tempat Berangkat</label>
                  <input required type="text" class="form-control" value="{{ old('t_berangkat') }}" name="t_berangkat" placeholder="Masukkan Tempat">
                  @error('t_berangkat')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label>Tempat Tujuan</label>
                  <select required class="form-control select2" name="destination_id" data-placeholder="Pilih Tujuan" style="width: 100%;">
                    <option value="" selected disabled>Pilih Tujuan</option>
                    @foreach($destinations as $key)
                      <option value="{{ $key->id }}" {{ old('destination_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                  @error('destination_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Lama Perjalanan</label>
                  <input required type="number" class="form-control" value="{{ old('lama') }}" name="lama" placeholder="Masukkan Lama (Hari)">
                  @error('lama')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

                <div class="row">
                  <div class="col-md-6">
                      <div class="form-group">
                      <label>Tanggal Berangkat</label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                          <input required type="date" value="{{ old('tgl_berangkat') }}" name="tgl_berangkat" class="form-control pull-right">
                          @error('tgl_berangkat')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                        </div>
                    <!-- /.input group -->
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="form-group">
                      <label>Tanggal Pulang</label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                          <input required type="date" name="tgl_pulang" value="{{ old('tgl_pulang') }}" class="form-control pull-right">
                          @error('tgl_pulang')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                        </div>
                    <!-- /.input group -->
                      </div>
                  </div>
                </div>

                <div class="form-group">
                  <label>Akun Anggaran</label>
                  <select required class="form-control select2" name="account_id" data-placeholder="Pilih Akun" style="width: 100%;">
                    <option value="" selected disabled>Pilih Akun</option>
                    @foreach($accounts as $key)
                      <option value="{{ $key->id }}" {{ old('account_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                  @error('account_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Keterangan</label><br>
                <textarea required name="ket" cols="40" rows="10"></textarea>
                @error('ket')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('trips.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection