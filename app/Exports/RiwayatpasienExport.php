<?php

namespace App\Exports;
use Illuminate\Http\Request;
use DB;
use App\riwayat_pasien;
use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;

// class RiwayatpasienExport implements FromCollection
// {
//     /**
//     * @return \Illuminate\Support\Collection
//     */
//     public function collection()
//     {
//         // $tahun = $r->tahun;
//         // $bulan = $r->bulan;

//         //$tahun = 2017;
//         //$bulan = "Juni";
//         //$puskes = "Puskesmas Labuhan Ratu";

//         // return riwayat_pasien::all();

//         $data = DB::table('riwayat_pasien')
//                     ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
//                     ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
//                     ->select ('data_pasien.nama_pasien',
//                                 'data_kecamatan.nama_kecamatan',
//                                 'data_pasien.NIK',
//                                 'data_pasien.jenis_tb',
//                                 'data_pasien.alamat',
//                                 'data_pasien.latitude',
//                                 'data_pasien.longitude',
//                                 'riwayat_pasien.tahun',
//                                 'riwayat_pasien.bulan',
//                                 'riwayat_pasien.jenis_tindakan',
//                                 'riwayat_pasien.status')
//                     // ->where('riwayat_pasien.tahun', $tahun)
//                     // ->where('riwayat_pasien.bulan', $bulan)
//                     //->where('data_pasien.id_puskesmas', $puskes)
//                     ->get();
//         return $data;
//     }
// }

class RiwayatpasienExport implements FromView
{
    use Exportable;
    
    public function View(): View
    {
        $data = DB::table('riwayat_pasien')
                    ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                    ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                    ->select ('data_pasien.nama_pasien',
                                'data_kecamatan.nama_kecamatan',
                                'data_pasien.NIK',
                                'data_pasien.jenis_tb',
                                'data_pasien.alamat',
                                'data_pasien.latitude',
                                'data_pasien.longitude',
                                'riwayat_pasien.tahun',
                                'riwayat_pasien.bulan',
                                'riwayat_pasien.jenis_tindakan',
                                'riwayat_pasien.status')
                    // ->where('riwayat_pasien.tahun', $tahun)
                    // ->where('riwayat_pasien.bulan', $bulan)
                    //->where('data_pasien.id_puskesmas', $puskes)
                    ->get();

        return view('export.Riwayat')-> with([
            'riwayat_pasien' => $data
         ]);
    }
}
