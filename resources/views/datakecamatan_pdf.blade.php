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
		<h5>Data Kecamatan di Kota Bandarlampung</h4>
		
	</center>
 
	<table class='table table-bordered'>
		<thead>
        <tr>			
           <th>No.</th>
           <th>Nama Kecamatan</th>
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($kecamatan as $kec)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $kec->nama_kecamatan }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>