@extends('layouts.master')
@section('container')
<section class="content">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Laporan</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form action="{{ route('resumes.update', $resumes->id) }}" method="POST">
            @method('PUT')
            @csrf
            <div class="box-body">
                <div class="form-group">
                    <label>Nomor SPT</label>
                    <select required class="form-control select2" name="instruction_id" data-placeholder="Pilih SPT" style="width: 100%;">
                      <option value="" selected disabled>Pilih Nomor SPT</option>
                      @foreach($instructions as $key)
                        <option value="{{ $key->id }}" {{ old('instruction_id', $resumes->instruction_id) == $key->id ? 'selected' : '' }}>090/{{ $key->no_spt }}/408.36.6/{{ $key->created_at->format('Y') }}</option>
                      @endforeach
                    </select>
                    @error('instruction_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                  </div>
                <div class="form-group">
                    <label>Daerah Tujuan</label>
                    <select required class="form-control select2" name="destination_id" data-placeholder="Pilih Tujuan" style="width: 100%;">
                      <option value="" selected disabled>Pilih Nomor SPT</option>
                      @foreach($destinations as $key)
                        <option value="{{ $key->id }}" {{ old('destination_id', $resumes->destination_id) == $key->id ? 'selected' : '' }}>{{ $key->name }}</option>
                      @endforeach
                    </select>
                    @error('destination_id')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Maksud</label><br>
                    <textarea required name="maksud" cols="40" rows="10">{{ $resumes->maksud }}</textarea>
                    @error('maksud')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                  </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Hadir Dalam</label>
                <input required type="text" class="form-control" value="{{ old('hadir', $resumes->hadir) }}" name="hadir" placeholder="Masukkan Hadir Dalam">
                @error('hadir')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
              </div>
              <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Arahan</label><br>
                        <textarea required name="arahan" cols="40" rows="10">{{ $resumes->arahan }}</textarea>
                        @error('arahan')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                      </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Masalah</label><br>
                        <textarea required name="masalah" cols="40" rows="10">{{ $resumes->masalah }}</textarea>
                        @error('masalah')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                      </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Saran</label><br>
                        <textarea required name="saran" cols="40" rows="10">{{ $resumes->saran }}</textarea>
                        @error('saran')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                      </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Lain - Lain</label><br>
                        <textarea required name="lain" cols="40" rows="10">{{ $resumes->lain }}</textarea>
                        @error('lain')
                        <div class="invalid-feedback">
                          {{ $message }}
                        </div>
                @enderror
                      </div>
                </div>
              </div>
            </div><!-- /.box-body -->

            <div class="box-footer">
              <a href="{{ route('resumes.index') }}" class="btn btn-default">Kembali</a>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
    </div>
</section>

@endsection