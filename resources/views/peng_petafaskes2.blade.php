<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SIG TB Kota Bandar Lampung</title>

  <!-- Bootstrap core CSS -->
  
  <link href="/assets/pengunjung/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/assets/pengunjung/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="/assets/pengunjung/css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/">Halaman Pengunjung</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/peta_pasien_pengunjung">Peta Pasien TB</a>
          </li>

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/peta_faskes_pengunjung">Peta Titik Faskes</a>
          </li>

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/gpoligon_p">Peta Daerah Resiko TB</a>
          </li>

        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->

  <!-- Portfolio Grid -->
  <section class="bg-light page-section" id="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Halaman Peta</h2>
          <h3 class="section-subheading text-muted">Sistem Informasi Geografis Penyebaran Penyakit TB di Kota Bandarlampung</h3>
        </div>
      </div>

      <div class="row">
          <div class="col-17">
            <div class="card m-b-25">
              <div class="card-body">
                  <div class="row clearfix">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <h3 class="section-heading text-uppercase"><center>Peta Faskes yang Menangani Pasien Penyakit Tuberkulosis di Kota Bandar Lampung</center></h3>
                      <hr />
                     
                         </div>
                       </div>
                    <h4 class="mt-0 header-title">Pilih Bulan dan Tahun</h4><br>
                      <form method="post" action="/peta_faskes_pengunjung/cari" class="form-horizontal">
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
                                        </form><br><br>
                                        <h2> {{ $bulan }} {{ $tahun }}</h2>

                                        <div class="form-group">
                                            <div id="dvMap" style="width: 100%; height: 450px;"></div>
                                        </div> <br>

                                        <div class="col-lg-15">
                                            <div class="card m-b-30 text-white bg-info">
                                                <div class="card-body">
                                                    <blockquote class="card-blockquote mb-0">
                                                    <p>Peta ini menggambarkan Sebaran Titik Fasilitas Kesehatan yang menangani Pasien TB di Kota Bandarlampung. Informasi tentang nama, alamat dan jumlah pasien yang ditangani
                                                        faskes tersebut pada bulan dan tahun tertentu dapat anda lihat dengan mengklik Titik Pasien pada Peta. 
                                                    </p>
                                                    </blockquote>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div> <!-- end col --> 
      </div>
    </div>
  </section>

  
  
 

  <!-- Clients -->
  <section class="py-5">
    <div class="container">
        <div class="row justify-content-center">    
           
               
                    <div class="col-md-1 col-sm-3">
                    <a href="https://www.unila.ac.id/">
                        <img class="img-fluid d-block mx-auto" src="/assets/pengunjung/img/logos/unila2018.png" alt="">
                    </a>
                    </div>
                    
                    <div class="col-md-1 col-sm-3">
                    <a href="#">
                        <img class="img-fluid d-block mx-auto" src="/assets/pengunjung/img/logos/dinkes2.jpg" alt="">
                    </a>
                    </div>
               
            </div>
        </div>
  </section>

  

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
      <div class="col-md-12">
          <span class="copyright"> &copy; 2019 Asti Cahyani-Ilmu Komputer Universitas Lampung</span>
        </div>

       
        

       
      </div>
    </div>
  </footer>

  <!-- Portfolio Modals -->

  
  

  

  <!-- Bootstrap core JavaScript -->
  <script src="/assets/pengunjung/vendor/jquery/jquery.min.js"></script>
  <script src="/assets/pengunjung/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/assets/pengunjung/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="/assets/pengunjung/js/jqBootstrapValidation.js"></script>
  <script src="/assets/pengunjung/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/assets/pengunjung/js/agency.min.js"></script>
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



</body>

</html>
