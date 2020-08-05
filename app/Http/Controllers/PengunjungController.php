<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\data_faskes;
use App\data_pasien;
use App\riwayat_pasien;
use DB;

class PengunjungController extends Controller
{
    public function peta_faskes_p() //untuk buat peta titik faskes
    {
        $data = data_faskes::all(); //panggil tabel faskes
        
        // return view ('peta_faskes_p')->with([  //return ke peta_faskes dengan bikin variabel arr
        //     'arr' => $data
        // ]);
        return view ('peng_petafaskes')->with([  //return ke peta_faskes dengan bikin variabel arr
            'arr' => $data
        ]);
       
    }

    public function peta_faskes2_p(Request $f)
    {   
        $bulan = $f->bulan;
        $tahun = $f->tahun;

        $data = DB::table('riwayat_pasien')
                    ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                    ->leftjoin('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                    ->select(   'data_faskes.nama_faskes', 
                                'data_faskes.latitude', 
                                'data_faskes.longitude', 
                                'data_faskes.alamat', 
                                DB::raw('count(riwayat_pasien.id_pasien) as jumlah_pasien'))
                    ->groupBy('data_pasien.id_faskes')
                    ->where('riwayat_pasien.tahun', $tahun)
                    ->where('riwayat_pasien.bulan',$bulan)
                    // ->pluck('total', 'data_pasien.nama_faskes');
                    ->get();
        // return $data;
        // return view ('peta_faskes2_p')->with([  //return ke peta_pasien dengan bikin variabel faskes
        //     'faskes' => $data,
        // ]);
        return view ('peng_petafaskes2')->with([  //return ke peta_pasien dengan bikin variabel faskes
            'faskes' => $data,
        ]);
        
        //return $data;
        // //return $data;
        
    }   

    //fungsi titik faskes supaya muncul semua 10 Okt19
    public function titik_faskes(Request $Request)
    {
        //buat ngambil jumlah pasien di faskes tiap bulan
        $bulan = $Request->bulan;
        $tahun = $Request->tahun; 

        $titik = DB::table('data_faskes')
        ->join('data_kecamatan', 'data_kecamatan.id', '=', 'data_faskes.id_kecamatan')
        ->get();

        $data_titik = [];

        foreach ($titik as $key => $value) {
            $data_titik[] = [
                'id' => $value->id,
                'nama_faskes' => $value->nama_faskes,
                'kecamatan' => $value->nama_kecamatan,
                'lat' => $value->latitude,
                'long' => $value->longitude,
                'alamat' => $value->alamat,
                'jumlah_pas' => $this->apiJumlahRiwayat($value->id,$bulan,$tahun)
            ];
        }

        // return $data_titik;
        // return view ('peta_faskes2_p')->with([  //return ke peta_pasien dengan bikin variabel faskes
        //     'jumlah_pasien' => $data_titik, //manggil jumlah pasien di faskes itu
        //     'bulan' => $bulan,
        //     'tahun' => $tahun
        // ]);
        return view ('peng_petafaskes2')->with([  //return ke peta_pasien dengan bikin variabel faskes
            'jumlah_pasien' => $data_titik, //manggil jumlah pasien di faskes itu
            'bulan' => $bulan,
            'tahun' => $tahun
        ]);

    }

    public function apiJumlahRiwayat($id_faskes,$bulan,$tahun)
    {
        $riwayat = DB::table('riwayat_pasien')
                    ->join('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                    ->join('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                    ->where('riwayat_pasien.tahun', $tahun)
                    ->where('riwayat_pasien.bulan', $bulan)
                    ->where('data_pasien.id_faskes', $id_faskes)
                    ->count();
        return $riwayat;
        # code...
    }

    public function peta_pasien_p()
    {
        $data = riwayat_pasien::all();
        $bulan = null;
        $tahun = null;
        return view ('peng_petapasien')->with([  //return ke peta_pasien dengan bikin variabel arr
            'pasien' => $data,
            'bulan' => $bulan,
            'tahun' => $tahun
        ]);
        
    }

    public function peta_pasienn_p(Request $r)
    {   
        $bulan = $r->bulan;
        $tahun = $r->tahun;

        $data = DB::table('riwayat_pasien')
                ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                ->where('tahun', $tahun)
                ->where('bulan', $bulan)
                ->get();
        
            return view ('peng_petapasienn')->with([  //return ke peta_pasien dengan bikin variabel arr
                'pasien' => $data,
                'tahun' => $tahun,
                'bulan' => $bulan
            ]);
    } 

   

}
