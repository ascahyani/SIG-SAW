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
                               <li class="breadcrumb-item active mdi mdi-chevron-right ">Halaman Peta Pesebaran Pasien Tuberkulosis</li>
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
                                        <form method="post" action="/pasien_kec/cari" class="form-horizontal">

                                            {{csrf_field()}}  <!-- untuk generate token-->

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Bulan</label>
                                            <div class="col-sm-10">
                                                <select class="custom-select" name="bulan">
                                                    <option selected>Pilih Bulan</option>
                                                    <option value="Januari">Januari</option>
                                                    <option value="Februari">Februari</option>
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
                                            
                                            <h2> {{ $bulan }} {{ $tahun }}</h2> 
                                            <br>

                                            <?php $namkec = DB::table('data_kecamatan')->orderby('nama_kecamatan')->get();?>
                                            <div class="form-check form-check-inline kecam">
                                                <input type="checkbox" class="form-check-input" id="check_all" name="kecamatan">
                                                <label class="form-check-label" for="defaultInline1">Tampilkan semua</label>
                                            </div>
                                            @foreach($namkec as $nama)
                                                @php
                                                $id = 'kecamatan-'.$nama->id;   
                                                @endphp                                      
                                                <div class="form-check form-check-inline kecam">
                                                    <input type="checkbox" class="form-check-input kec" name="kecamatan" value="{{$nama->id}}">
                                                    <label class="form-check-label" for="defaultInline1">{{$nama->nama_kecamatan}}</label>
                                                </div>
                                            @endforeach
                                          

                                        <div class="form-group">
                                            <div id="dvMap" style="width: 100%; height: 500px;"></div>
                                        </div>

                                        <div class="col-lg-15">
                                            <div class="card m-b-30 text-white bg-primary">
                                                <div class="card-body">
                                                    <blockquote class="card-blockquote mb-0">
                                                    <p>Peta ini menampilkan Sebaran Titik Pasien Tuberkulosis sesuai Alamat Pasien. Informasi tentang nama dan alamat Pasien
                                                        dapat anda lihat dengan mengklik Titik Pasien pada Peta. 
                                                    </p>
                                                    </blockquote>
                                                </div>
                                            </div>
                                        </div>

                                        </form>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                    </div> <!-- end row -->
    
           </div> <!-- container-fluid -->
       
       </div> <!-- content -->
       
    </div>

@endsection
@push('script')
{{-- <script>
    $(function(){
        
    $('.kec').click(function(){
        var kecaa = [];
        $('.kec').each(function(){
            if($(this).is(":checked")){
                kecaa.push($(this).val());
            }
        });

        finalkecaa = kecaa.toString();
        console.log(finalkecaa);

        $.ajax({
            type:'get',
            dataType:'html',
            url: '',
            data: {keca: kecaa},
            success: function(response){
                console.log(response);
                $('.updateDiv').html(response);
            }
        });

    });
    
});
</script> --}}
<script type="text/javascript">
let pasien = {!! json_encode($pasien) !!}
markersAll = [];
for(pas in pasien){
    let pasien_data = pasien[pas];
    data = {
        'lat' : pasien_data['latitude'],
        'long' : pasien_data['longitude'],
        'nama_pasien' : pasien_data['nama_pasien'],
        'alamat' : pasien_data['alamat']
    };
    markersAll.push(data);
}

function getMarkers(ids) {
    markers = [];
    for(pas in pasien){
        let pasien_data = pasien[pas];
        if(ids.includes(pasien_data['id_kecamatan'])){
            data = {
                'lat' : pasien_data['latitude'],
                'long' : pasien_data['longitude'],
                'nama_pasien' : pasien_data['nama_pasien'],
                'alamat' : pasien_data['alamat']
            };
            markers.push(data);
        }
    }
    return markers;
}

function loadMap(markers) {
    var mapOptions = {
        center: new google.maps.LatLng(-5.3971396, 105.2667887),
        zoom: 12,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var infoWindow = new google.maps.InfoWindow();
    var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);

    for (i = 0; i < markers.length; i++) {
        var data = markers[i];
        var latnya = data.lat;
        var longnya = data.long;

        var myLatlng = new google.maps.LatLng(latnya, longnya);
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            icon: {
                url: "/assets/assets/images/point.png",
                scaledSize: new google.maps.Size(10, 10)
            },
            title: data.nama_faskes
        });
        (function (marker, data) {
            google.maps.event.addListener(marker, "click", function (e) {
                infoWindow.setContent('<b>Alamat</b> :' + data.alamat + '<br>')
                infoWindow.open(map, marker);
            });
        })(marker, data);
    }
    google.maps.event.addListener(map, 'click', function( event ){
        alert( "latitude: "+event.latLng.lat()+" "+", longitude: "+event.latLng.lng() );
    });
}

window.onload = function () {
    loadMap(markersAll);
};

$(".kec").change(function() {
    let ids = [];
    $(':checkbox:checked').each(function(i){
        let val = parseInt($(this).val());
        ids.push(val);
    });
    console.log(ids);
    let markers = getMarkers(ids);
    console.log(markers);
    loadMap(markers);
});

$('#check_all').change(function () {
    if($('#check_all').is(":checked")){
        $('.kec').attr('checked', true); //klo klik "tampilkan semua", semua checkbox kecentang
        loadMap(markersAll);
    }else{
        $('.kec').attr('checked', false);
        loadMap([]);
    }
});
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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css">
    
    <script type="text/javascript">
        $(function() {
            $('.date-picker').datepicker( {
            changeMonth: true,
            changeYear: true,
            showButtonPanel: true,
            dateFormat: 'yy-mm',
            onClose: function(dateText, inst) { 
                $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
            }
            });
        });
    </script>
    <style>
        .ui-datepicker-calendar {
            display: none;
        }
    </style>

@endpush
