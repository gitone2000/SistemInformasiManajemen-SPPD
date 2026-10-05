@extends('layouts.master')
@section('container')
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
              Dashboard
              <small>Aplikasi Puskesmas Gondosari</small>
            </h1>
          </section>
  
          <!-- Main content -->
          <section class="content">
  
              <div class="row">
                <div class="col-lg-4 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-green-gradient">
                    <div class="inner">
                      <p style="font-size: 20px;">{{ $pegawai }}</p>
                      <p>Jumlah Pegawai</p>
                    </div>
                    <div class="icon">
                      <i class="ion-android-contacts"></i>
                    </div>
                    {{-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> --}}
                  </div>
                </div><!-- ./col -->

                <div class="col-lg-4 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-blue-gradient">
                    <div class="inner">
                      <p style="font-size: 20px;">{{ $spt }}</p>
                      <p>Jumlah SPT</p>
                    </div>
                    <div class="icon">
                      <i class="ion-android-clipboard"></i>
                    </div>
                    {{-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> --}}
                  </div>
                </div><!-- ./col -->
              </div>
  
          </section><!-- /.content -->
@endsection