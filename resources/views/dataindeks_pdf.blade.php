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
           <th>Kecamatan</th>
           <th>Tahun</th>
           <th>Jumlah RTPHBS</th>
          
        </tr>
		</thead>
		<tbody>
			@php $i=1 @endphp
			@foreach($indeks_rtphbs as $indeks)
			<tr>
				<td>{{ $i++ }}</td>
                <td>{{ $indeks->kec->nama_kecamatan }}</td>
                <td>{{ $indeks->tahun }}</td>
                <td>{{ $indeks->jumlah_rtphbs }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
 
</body>
</html>