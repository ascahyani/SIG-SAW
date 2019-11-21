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
		<h5>Data Fasilitas Kesehatan yang Menangani Tuberkulosisd di Kota Bandarlampung</h4>
		
	</center>
 
	<table class='table table-bordered'>
		<thead>
        <tr>			
           <th>No.</th>
            <th>Nama Fasilitas Kesehatan</th>
            <th>Kecamatan</th>
            <th>Tahun</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Alamat</th>
            <th>Ketersediaan Alat</th>
          
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($data_faskes as $faskes)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $faskes->nama_faskes }}</td>
                <td>{{ $faskes->kec->nama_kecamatan }}</td>
                <td>{{ $faskes->tahun }}</td>
                <td>{{ $faskes->latitude }}</td>
                <td>{{ $faskes->longitude }}</td>
                <td>{{ $faskes->alamat }}</td>
                <td>{{ $faskes->ketersediaan_alat }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>