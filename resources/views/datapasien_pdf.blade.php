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
		<h5>Data Indeks Rumah Tangga Berperilaku Hidup Bersih dan Sehat di Kota Bandarlampung</h4>
		
	</center>
 
	<table class='table table-bordered'>
		<thead>
        <tr>			
           <th>No.</th>
           <th>Nama Kecamatan</th>
           <th>Nama Faskes</th>
           <th>Jenis TB</th>
           <th>Nama</th>
           <th>Tanggal Lahir</th>
           <th>Alamat</th>
           <th>Tipe Diagnosa</th>
           <th>latitude</th>
           <th>longitude</th>
           <th>Mulai Pengobatan</th>                                    
          
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($data_pasien as $pasien)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $pasien->kec->nama_kecamatan}}</td>
                <td>{{ $pasien->faskes->nama_faskes }}</td>
                <td>{{ $pasien->jenis_tb }}</td>
                <td>{{ $pasien->nama_pasien }}</td>
                <td>{{ $pasien->tanggal_lahir }}</td>
                <td>{{ $pasien->alamat }}</td>
                <td>{{ $pasien->tipe_diagnosa }}</td>
                <td>{{ $pasien->latitude }}</td>
                <td>{{ $pasien->longitude }}</td>
                <td>{{ $pasien->tanggal_mulaipengobatan }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>