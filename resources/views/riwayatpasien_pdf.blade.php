<!DOCTYPE html>
<html>
<head>
	<title>SIG TB Kota Bandarlampung</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		table tr td,
		table tr th{
			font-size: 9pt;
		}
	</style>
	<center>
		<h5>Data Riwayat Pasien Tuberkulosis Kota Bandarlampung</h4>
		
	</center>
 
	<table class='table table-bordered'>
		<thead>
        <tr>			
           <th>No.</th>
           <th>Nama Pasien</th>
           <th>Tahun</th>
           <th>Bulan</th>
           <th>jenis Tindakan</th>
           <th>Status</th>
          
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($riwayat_pasien as $riwayat)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $riwayat->pasien->nama_pasien }}</td>
                <td>{{ $riwayat->tahun }}</td>
                <td>{{ $riwayat->bulan }}</td>
                <td>{{ $riwayat->jenis_tindakan }}</td>
                <td>{{ $riwayat->status}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>