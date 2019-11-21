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
		<h5>Data Kepadatan Penduduk Kota Bandarlampung</h4>
		
	</center>
 
	<table class='table table-bordered'>
		<thead>
        <tr>			
           <th>No.</th>
           <th>Nama Kecamatan</th>
            <th>Luas Daerah</th>
           <th>Jumlah Penduduk</th>
           <th>Kepadatan Penduduk</th>
           <th>Tahun</th>
          
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($padat as $kep)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $kep->kec->nama_kecamatan }}</td>
                <td>{{ $kep->luas_daerah }}</td>
                <td>{{ $kep->jumlah_penduduk }}</td>
                <td>{{ $kep->kepadatan_penduduk }}</td>
                <td>{{ $kep->tahun }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>