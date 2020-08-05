@extends('master_admin')
@section('content')

@section ('judul')

    <div class="content-page">
        
			
        <!-- Start content -->
        <div class="content">
           <div class="container-fluid">
       
               <div class="row">
                   <div class="col-sm-12">
                       <div class="page-title-box">
                       <h4 class="page-title">Sistem Informasi Geografis Penyebaran Penyakit Tuberkulosis di Kota Bandar Lampung</h4>
                                    
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active">Halaman Kelola Data Pasien TB</li>
                                        
                                    </ol>
                       </div>
                   </div>
               </div>
               <!-- end row -->

               <div class="row">
                            <div class="col-12">
                                <div class="card m-b-20">
                                    <div class="card-body">
      
                                        <h4 class="mt-0 header-title">Form Edit Data Pasien TB</h4>
                                        <br/>
                                            {{-- menampilkan error validasi --}}
                                            @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                            @endif
                                            <br/>
                                        @foreach ($data_pasien as $pasien)
                                            <form method="post" action="/data_pasien_tb/update" class="form-horizontal">
                                            {{csrf_field()}}  <!-- untuk generate token-->
                                          

                                            <input type="hidden" name="id" name="id" value="{{$pasien->id}}">
                                            

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Kecamatan</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="nama_kecamatan">
                                                    @foreach($kecamatan as $kec)
                                                        <option  value="{{$kec->id}}" @if($pasien->id_kecamatan == $kec->id) selected @endif>{{$kec->nama_kecamatan}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Jenis TB</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="jenis_tb">
                                                    <option selected>{{old('jenis_tb', $pasien->jenis_tb)}}</option>
                                                    <option value="Paru">Paru</option>
                                                    <option value="Ekstra Paru">Ekstra Paru</option>
                                                    
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Faskes</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="nama_faskes">
                                                    @foreach($faskes as $fas)
                                                        <option value="{{$fas->id}}" @if($pasien->id_faskes == $fas->id) selected @endif>{{$fas->nama_faskes}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">NIK</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="NIK" value="{{$pasien->NIK}}" id="example-text-input">
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Nama</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="nama" value="{{$pasien->nama_pasien}}" id="example-text-input">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-date-input" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="date" value="{{old('tanggal_lahir', $pasien->tanggal_lahir)}}" name="tanggal_lahir" id="example-date-input">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Jenis TB</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="tipe_diagnosa">
                                                    <option selected>{{old('tipe_diagnosa', $pasien->tipe_diagnosa)}}</option>
                                                    <option value="Terdiagnosis Klinis">Terdiagnosis Klinis</option>
                                                    <option value="Terkonfirmasi Bakteriologis">Terkonfirmasi Bakteriologis</option>
                                                    
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Alamat</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="alamat" value="{{$pasien->alamat}}" id="mapsearch">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="card">
                                                            <div class="header">
                                                                <h2>
                                                                    <center>Pilih Alamat Pasien</center>
                                                                    <small><center><span class="text-danger">*klik marker sesuai lokasi Faskes</span></small>
                                                                </h2>
                                                            </div>
                                                    </div>
                                            </div>
                                        </div>

					                    <div class="form-group">
                                            <div id="dvMap" style="width: 100%; height: 400px;"></div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Latitude</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="latitude" value="{{$pasien->latitude}}" id="lat">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Longitude</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="longitude" value="{{$pasien->longitude}}" id="long">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-date-input" class="col-sm-2 col-form-label">Tanggal Mulai Pengobatan</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="date" value="{{old('tanggal_mulaipengobatan', $pasien->tanggal_mulaipengobatan)}}" name="mulai_pengobatan" id="example-date-input">
                                            </div>
                                        </div>

                                        <div class="pull-right">
                                            <button type="submit" class="btn btn-primary btn-rounded btn-md">Simpan</button>
                                        </div>

                                        </form>
                                        @endforeach
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->
       
           </div> <!-- container-fluid -->
       
       </div> <!-- content -->
       
    </div>

@endsection