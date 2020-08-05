<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Nama Paien</th>
            <th>Kecamatan</th>
            <th>NIK</th>
            <th>Jenis TB</th>
            <th>Alamat</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Tahun</th>
            <th>Bulan</th>
            <th>Jenis Tindakan</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
    @php $no = 1 @endphp
    @foreach($riwayat_pasien as $pasien)
        <tr>
            <td>{{ $no++ }}</td>
            <td>{{ $pasien->nama_pasien }}</td>
            <td>{{ $pasien->nama_kecamatan }}</td>
            <td>{{ $pasien->NIK }}</td>
            <td>{{ $pasien->jenis_tb }}</td>
            <td>{{ $pasien->alamat }}</td>
            <td>{{ $pasien->latitude }}</td>
            <td>{{ $pasien->longitude }}</td>
            <td>{{ $pasien->tahun }}</td>
            <td>{{ $pasien->bulan }}</td>
            <td>{{ $pasien->jenis_tindakan }}</td>
            <td>{{ $pasien->status }}</td>
            
        </tr>
    @endforeach
    </tbody>
</table>