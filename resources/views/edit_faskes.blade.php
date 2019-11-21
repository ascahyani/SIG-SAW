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
                                        <li class="breadcrumb-item active">Halaman Kelola Data Fasilitas Kesehatan</li>
                                        
                                    </ol>
                       </div>
                   </div>
               </div>
               <!-- end row -->

               <div class="row">
                            <div class="col-12">
                                <div class="card m-b-20">
                                    <div class="card-body">
      
                                        <h4 class="mt-0 header-title">Form Edit Data Fasilitas Kesehatan</h4>

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
                                        
                                        @foreach ($data_faskes as $faskes)
                                            <form method="post" action="/data_faskes/update" class="form-horizontal">
                                            {{csrf_field()}}  <!-- untuk generate token-->
                                        
                                        <input type="hidden" name="id" name="id" value="{{$faskes->id}}">

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Kecamatan</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="nama_kecamatan">
                                                   
                                                    @foreach($kecamatan as $kec)
                                                        <option  value="{{$kec->id}}" @if($faskes->id_kecamatan == $kec->id) selected @endif>{{$kec->nama_kecamatan}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Tahun</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="tahun" value="{{$faskes->tahun}}" id="example-text-input">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Nama Faskes</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="nama_faskes" value="{{$faskes->nama_faskes}}" id="example-text-input">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Ketersediaan Alat Pengecekan TB</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="ketersediaan_alat" value="{{$faskes->ketersediaan_alat}}">
                                                    <option selected>{{old('ketersediaan_alat', $faskes->ketersediaan_alat)}}</option>
                                                    <option value="Ada">Ada</option>
                                                    <option value="Tidak Ada">Tidak Ada</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Alamat</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="alamat" value="{{$faskes->alamat}}" id="mapsearch">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="card">
                                                            <div class="header">
                                                                <h2>
                                                                    <center>Pilih Lokasi Faskes</center>
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
                                                <input class="form-control" type="text" name="latitude" value="{{$faskes->latitude}}" id="lat">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="example-text-input" class="col-sm-2 col-form-label">Longitude</label>
                                            <div class="col-sm-10">
                                                <input class="form-control" type="text" name="longitude" value="{{$faskes->longitude}}" id="long">
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