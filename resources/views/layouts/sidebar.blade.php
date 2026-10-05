<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ asset('img/logo.png') }}" class="img-circle" alt="User Image"><br>
        </div>
        <div class="pull-left info">
          <p>{{ Auth::user()->name }}</p>
          <p>Puskesmas Gondosari</p>
          <!-- Status -->
          {{-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> --}}
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="/dashboard"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-server"></i> <span>Master Data</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li><a href="{{ route('employes.index') }}"><i class="fa fa-circle-o"></i> Pegawai</a></li>
            <li><a href="{{ route('destinations.index') }}"><i class="fa fa-circle-o"></i> Tujuan</a></li>
            <li><a href="{{ route('charges.index') }}"><i class="fa fa-circle-o"></i> Biaya</a></li>
            <li><a href="{{ route('accounts.index') }}"><i class="fa fa-circle-o"></i> Akun</a></li>
            <li><a href="{{ route('rekenings.index') }}"><i class="fa fa-circle-o"></i> Rekening</a></li>
            <li><a href="{{ route('categories.index') }}"><i class="fa fa-circle-o"></i> Kategori</a></li>
            <li><a href="{{ route('transports.index') }}"><i class="fa fa-circle-o"></i> Alat Angkut</a></li>
            <!-- <li><a href="{{ route('signatures.index') }}"><i class="fa fa-circle-o"></i> Penandatangan</a></li> -->
            <li><a href="{{ route('users.index') }}"><i class="fa fa-circle-o"></i> User</a></li>
          </ul>
        </li>
        <li><a href="{{ route('instructions.index') }}"><i class="fa fa-book"></i> <span>SPT</span></a></li>
       <!--  <li><a href="{{ route('trips.index') }}"><i class="fa fa-car"></i> <span>SPPD</span></a></li> -->
        <!-- <li><a href="{{ route('transactions.index') }}"><i class="fa fa-dollar"></i> <span>Pembiayaan</span></a></li> -->
        <!-- <li><a href="{{ route('resumes.index') }}"><i class="fa fa-info"></i> <span>Laporan Tugas</span></a></li> -->
      </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>