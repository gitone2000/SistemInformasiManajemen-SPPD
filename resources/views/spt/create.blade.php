@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah SPT</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('instructions.store') }}" method="POST">
            @csrf
            <div class="box-body">

              <div class="form-group">
                <label for="exampleInputEmail1">Nama Kegiatan</label>
                <input required type="text" class="form-control" name="kegiatan" value="{{ old('kegiatan') }}"  placeholder="Masukkan Nama Kegiatan">
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Nama Sub Kegiatan</label>
                <input required type="text" class="form-control" name="sub_kegiatan" value="{{ old('sub_kegiatan') }}"  placeholder="Masukkan Nama Sub Kegiatan">
              </div>

              <div class="form-group">
                <label>Kategori Perjalanan</label>
                <select required class="form-control select2" name="category_id" data-placeholder="Pilih Kategori" style="width: 100%;">
                  <option value="" selected disabled>Pilih Kategori Perjalanan</option>
                  @foreach($categories as $key)
                    <option value="{{ $key->id }}" {{ old('category_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                  @endforeach
                </select>
              </div>

              <div class="row">
                  <div class="col-md-6">
                      <div class="form-group">
                      <label>Tanggal Berangkat</label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                          <input required type="date" value="{{ old('tgl_berangkat') }}" name="tgl_berangkat" id="tgl_berangkat" class="form-control pull-right">
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
                        </div>
                    <!-- /.input group -->
                      </div>
                  </div>
                </div>

                <div class="form-group">
                  <label>Pegawai Ditugaskan</label>
                  <select required class="form-control select2" name="employe_id[]" multiple="multiple" data-placeholder="Pilih Pegawai" style="width: 100%;">
                    @foreach($employes as $key)
                      <option value="{{ $key->id }}">{{ $key->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label>Transportasi</label>
                  <select required class="form-control select2" name="transport_id" data-placeholder="Pilih Transportasi" style="width: 100%;">
                    <option value="" selected disabled>Pilih Transportasi</option>
                    @foreach($transports as $key)
                      <option value="{{ $key->id }}" {{ old('transport_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label>Tempat Berangkat</label>
                  <select required class="form-control select2" name="t_berangkat" data-placeholder="Pilih Tempat" style="width: 100%;">
                    <option value="" selected disabled>Pilih Tujuan</option>
                    @foreach($destinations as $key)
                      <option value="{{ $key->name }}" {{ old('t_berangkat') === $key->name ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label>Tempat Tujuan</label>
                  <select required class="form-control select2" name="destination_id" data-placeholder="Pilih Tujuan" style="width: 100%;">
                    <option value="" selected disabled>Pilih Tujuan</option>
                    @foreach($destinations as $key)
                      <option value="{{ $key->id }}" {{ old('destination_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Lama Perjalanan</label>
                  <input required type="number" class="form-control" value="{{ old('lama') }}" name="lama" placeholder="Masukkan Lama (Hari)">
                </div>

                

                <div class="form-group">
                  <label>Akun Anggaran</label>
                  <select required class="form-control select2" name="account_id" data-placeholder="Pilih Akun" style="width: 100%;">
                    <option value="" selected disabled>Pilih Akun</option>
                    @foreach($accounts as $key)
                      <option value="{{ $key->id }}" {{ old('account_id') == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Sudah Terima Dari</label>
                  <input required type="text" class="form-control" value="{{ old('terima') }}" name="terima" placeholder="Masukkan Terima Dari">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Sub Komponen</label>
                  <input required type="text" class="form-control" value="{{ old('sub_komponen') }}" name="sub_komponen" placeholder="Masukkan Sub Komponen">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Jumlah Uang</label>
                  <input required type="text" class="form-control" value="{{ old('terbilang') }}" name="terbilang" placeholder="Masukkan Jumlah Uang">
                </div>

                <div class="form-group">
                    <label>Nomor Rekening</label>
                    <select required class="form-control select2" name="rekening_id" data-placeholder="Pilih Rekening" style="width: 100%;">
                      <option value="" selected disabled>Pilih Nomor Rekening</option>
                      @foreach($rekenings as $key)
                        <option value="{{ $key->id }}" {{ old('rekening_id') == $key->id ? 'selected' : '' }}>{{ $key->nomor }}</option>
                      @endforeach
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Hadir Dalam</label>
                    <input required type="text" class="form-control" value="{{ old('hadir') }}" placeholder="Masukkan Hadir Dalam" name="hadir" placeholder="Masukkan Hadir Dalam">
                  </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Arahan</label><br>
                        <input required type="text" class="form-control" value="{{ old('arahan') }}" placeholder="Masukkan Arahan" name="arahan" placeholder="Masukkan Arahan">
                      </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Masalah</label><br>
                        <input required type="text" class="form-control" value="{{ old('masalah') }}" placeholder="Masukkan Masalah" name="masalah" placeholder="Masukkan Masalah">
                      </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Saran</label><br>
                        <input required type="text" class="form-control" value="{{ old('saran') }}" placeholder="Masukkan Saran" name="saran" placeholder="Masukkan Saran">
                      </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Lain - Lain</label><br>
                        <input required type="text" class="form-control" value="{{ old('lain') }}" placeholder="Masukkan Lain - Lain" name="lain" placeholder="Masukkan Lain - Lain">
                      </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Keterangan</label><br>
                        <input required type="text" class="form-control" value="{{ old('ket') }}" placeholder="Masukkan Keterangan" name="ket" placeholder="Masukkan Keterangan">
                      </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('instructions.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection