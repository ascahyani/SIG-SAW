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
                               <li class="breadcrumb-item active mdi mdi-chevron-right ">Halaman Admin</li>
                           </ol>
                       </div>
                   </div>
               </div>
               <!-- end row -->
               <div class="row">
                            <div class="col-12">
                                <div class="card m-b-20">
                                    <div class="card-body">

                                        <div class="row clearfix">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="card">
                                                    <div class="header">
                                                        <h2>
                                                        <center>Peta Penyebaran Pasien Penyakit Tuberkulosis di Kota Bandar Lampung</center>
                                                           
                                                           </h2>
                                                       </div>
                                                       <hr />
                                                   </div>
                                               </div>
                                           </div>
                                           <h4 class="mt-0 header-title">Pilih Bulan dan Tahun</h4>
                                           <form method="post" action="/peta_faskes/cari" class="form-horizontal">
   
                                               {{csrf_field()}}  <!-- untuk generate token-->
   
                                           <div class="form-group row">
                                               <label class="col-sm-2 col-form-label">Bulan</label>
                                               <div class="col-sm-10">
                                                   <select class="custom-select" name="bulan">
                                                       <option selected>Pilih Bulan</option>
                                                       <option value="Januari">Januari</option>
                                                       <option value="Februari">februari</option>
                                                       <option value="Maret">Maret</option>
                                                       <option value="April">April</option>
                                                       <option value="Mei">Mei</option>
                                                       <option value="Juni">Juni</option>
                                                       <option value="Juli">Juli</option>
                                                       <option value="Agustus">Agustus</option>
                                                       <option value="September">September</option>
                                                       <option value="Oktober">Oktober</option>
                                                       <option value="November">November</option>
                                                       <option value="Desember">Desember</option>
                                                   </select>
                                               </div>
                                           </div>
                                           
                                           <div class="form-group row">
                                               <label class="col-sm-2 col-form-label">Tahun</label>
                                               <div class="col-sm-10">
                                                   <select class="custom-select" name="tahun" id="tahun">
                                                      
                                                   </select>
                                               </div>
                                           </div>

                                           <div class="pull-right">
                                                <button type="submit" class="btn btn-primary btn-rounded btn-md mb-4 float-right">Cari</button>
                                            </div>
                                        </form>
                                        <h2> {{ $bulan }} {{ $tahun }}</h2>

                                        <div class="form-group">
                                            <div id="dvMap" style="width: 100%; height: 400px;"></div>
                                        </div> 
                                        
                                    </div>
                                </div>
                            </div> <!-- end col -->
       
           </div> <!-- container-fluid -->
       
       </div> <!-- content -->
       
    </div>

@endsection
@push('script')
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBt6a6dy99jZcyrlIe7OghOsZ0khO1x4O8&libraries=places" async defer> </script>
<script type="text/javascript">

var markers = [

@foreach( $jumlah_pasien as $a){  //variabel faskes dari controller SIGTBcontroller@peta_faskes2
 "lat": "{{ $a['lat'] }}",     //panggil lat
 "long": "{{ $a['long'] }}",       //panggil long
 "nama_faskes": "{{ $a['nama_faskes'] }}",      //panggil namafaskes
 "alamat": "{{ $a['alamat'] }}",          //panggil alamat
 "jumlah_pasien": "{{ $a['jumlah_pas'] }}",
 "nama_kecamatan": "{{  $a['kecamatan'] }}"

 },
@endforeach
    ];

        window.onload = function () {

            var mapOptions = {
            center: new google.maps.LatLng(-5.3971396, 105.2667887),        //center map nya, itu lat lang kota balam
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);

            for (i = 0; i < markers.length; i++) {
                var data = markers[i];              //bikin variabel data
                var latnya = data.lat;
                var longnya = data.long;

        var myLatlng = new google.maps.LatLng(latnya, longnya);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    icon: {
                      url: "/assets/assets/images/marker2.png",     //marker di peta nya
                      scaledSize: new google.maps.Size(30, 30)      //ukuran marker nya
                          },
                    title: data.nama_faskes
                });

                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(          //bikin info di titik nya, kalo di klik ntar muncul
                            '<p><b>Nama Faskes</b> : ' + data.nama_faskes + '<br></p>' +
                            '<p><b>Kecamatan</b> : ' + data.nama_kecamatan + '<br></p>' +
                            '<p><b>Alamat</b> : ' + data.alamat + '<br></p>' + '<br>' +
                            '<p><b>Jumlah Pasien</b> : ' + data.jumlah_pasien + '<br></p>' 
                            
                        );
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
  google.maps.event.addListener(map, 'click', function( event ){
  alert( "latitude: "+event.latLng.lat()+" "+", longitude: "+event.latLng.lng() );
});
        }
    </script>

    <script>
        $(document).ready(function(){
            var tanggal = new Date().getFullYear();
            min = tanggal - 4;
            max = tanggal + 4;
            select = document.getElementById('tahun');

            for (var i=min; i<=max; i++){
                var opt = document.createElement('option');
                opt.value = i;
                opt.innerHTML = i;
                select.appendChild(opt);
            } 
        })
    </script>

@endpush
