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
                                        <li class="breadcrumb-item active">Halaman Kelola Data Riwayat Pasien</li>
                                        
                                    </ol>
                       </div>
                   </div>
               </div>
               <!-- end row -->

               <div class="row">
                            <div class="col-12">
                                <div class="card m-b-20">
                                    <div class="card-body">

                                        <h4 class="mt-0 header-title">Halaman Kelola Data Riwayat Pasien</h4> 
                                        <!-- <a href="/data_riwayat_pasien/filter" class="btn btn-outline-warning waves-effect waves-light" id="right-panel-link">Cetak Data</a> -->
                                        <a href="/data_riwayat_pasien/excel" class="btn btn-outline-warning waves-effect waves-light" id="right-panel-link">Cetak</a>
                                        <a href="/data_riwayat_pasien/tambah"class="btn btn-primary btn-md float-right mb-4" id="right-panel-link">Tambah Data Baru</a>
                                        
                                        <div class="table-responsive">
                                        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>			
                                                <th>No.</th>
                                                <th>Nama Pasien</th>
                                                <th>Tahun</th>
                                                <th>Bulan</th>
                                                <th>jenis Tindakan</th>
                                                <th>Status</th>
                                                <th style = "display:none">Aksi</th>
                                            </tr>
                                            </thead>


                                            <tbody>
                                                <?php $no = 0 ;?>
                                                @foreach($riwayat_pasien as $riwayat)
                                                <?php $no++ ?>
                                                <tr>				
                                                    <td>{{ $no}}</td>
                                                    <td>{{ $riwayat->pasien->nama_pasien }}</td>
                                                    <td>{{ $riwayat->tahun }}</td>
                                                    <td>{{ $riwayat->bulan }}</td>
                                                    <td>{{ $riwayat->jenis_tindakan }}</td>
                                                    <td>{{ $riwayat->status}}</td>

                                                        <td style = "display:none">
                                                        <a href="/data_riwayat_pasien/edit/{{$riwayat->id}}" type="hidden" class="btn btn-success btn-sm">Edit</a>
                                                        |
                                                        <a href="{{route('riwayat_pasien.hapus', $riwayat->id)}}" class="btn btn-danger btn-sm" onclick="return confirm('Anda yakin mau menghapus data ini ?')"> Hapus</a>

                                                        </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                </div> <!-- container-fluid -->
       
       </div> <!-- content -->
       
    </div>

@endsection
@push('script')

@media print {
       table td:last-child {display:none}
       table th:last-child {display:none}
   }
<script>
        jQuery(document).ready(function($){
            $('.alert_notif').on('click',function(){
                var getLink = $(this).attr('href');
                swal({
                    title: "Are you sure?",
                    text: "Your will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "Yes, delete it!",
                    closeOnConfirm: false
                        },function(){
                        window.location.href = getLink
                    });
                return false;
            });
        });
	
    </script>


    <!-- <script type="text/javascript">
    $(".remove").click(function(){
        var id = $(this).parents("tr").attr("id");
    
       swal({
        title: "Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "Yes, delete it!",
        cancelButtonText: "No, cancel plx!",
        closeOnConfirm: false,
        closeOnCancel: false
      },
      function(isConfirm) {
        if (isConfirm) {
          $.ajax({
             url: '/riwayat_pasien/hapus/{id}',
             type: 'DELETE',
             error: function() {
                alert('Something is wrong');
             },
             success: function(data) {
                  $("#"+id).remove();
                  swal("Deleted!", "Your imaginary file has been deleted.", "success");
             }
          });
        } else {
          swal("Cancelled", "Your imaginary file is safe :)", "error");
        }
      });
     
    }); -->
@endpush
