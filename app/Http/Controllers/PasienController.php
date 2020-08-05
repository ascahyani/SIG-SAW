<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\data_pasien;
use DB;
use PDF;
use App\data_kecamatan;

class PasienController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function admin(){
        return view ('admin');
    }

    public function login(){
        return view ('login');
    }
    
    public function index()
    {
        $pasien= data_pasien::all();

        $kecamatan = DB::table('data_kecamatan')->get();
        return view ('data_pasien_tb')-> with([
            'kecamatan' => $kecamatan,
            'data_pasien' => $pasien
            ]);

        $faskes = DB::table('data_faskes')->get();
        return view ('data_pasien_tb')-> with([
        'data_faskes' => $faskes,
        'data_pasien' => $pasien
        ]);
    }

    public function tambah()
    {
        $kec = DB::table('data_kecamatan')->get();
        // $tb = DB::table('jenis_tb')->get();
        $faskes = DB::table('data_faskes')->get();
        return view ('tambah_datapasien')-> with([
            'kecamatan' => $kec,
            //'jenis_tb' => $tb,
            'faskes' => $faskes
            ]);
             
    }

    public function store(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request, [
            'nama_kecamatan'=>'required',
            'nama_faskes' => 'required',
            'jenis_tb'=>'required',
            'NIK'=>'required',
            'nama' =>'required',
            'tanggal_lahir' =>'required',
            'tipe_diagnosa' =>'required',
            'alamat' =>'required',
            'latitude' =>'required',
            'longitude' =>'required',
            'tanggal' => 'required',
        ],$messages);

        $data_pasien = DB::table('data_pasien')->insert([
            'id_kecamatan'=>$request->nama_kecamatan,
            'id_faskes' => $request->nama_faskes,
            'jenis_tb'=>$request->jenis_tb,
            'NIK'=>$request->NIK,
            'nama_pasien' => $request->nama,
            'tanggal_lahir' => $request->tanggal_lahir,
            'tipe_diagnosa' => $request->tipe_diagnosa,
            'alamat' => $request->alamat,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'tanggal_mulaipengobatan' => $request->tanggal
        ]);

        return redirect('data_pasien_tb');
    }

    public function edit($id)
    {
        $pasien=DB::table('data_pasien')->where('id',$id)->get();
        $kecamatan=DB::table('data_kecamatan')->get();
        $faskes=DB::table('data_faskes')->get();

        return view ('edit_pasien')-> with([
            'kecamatan' => $kecamatan,
            'faskes' => $faskes,
            'data_pasien'=>$pasien
            ]);
    }

    public function update(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];
        
        $this->validate($request, [
            'nama_kecamatan'=>'required',
            'jenis_tb'=>'required',
            'nama_faskes' => 'required',
            'NIK' =>'required',
            'nama' =>'required',
            'tanggal_lahir' =>'required',
            'tipe_diagnosa' =>'required',
            'alamat' =>'required',
            'latitude' =>'required',
            'longitude' =>'required',
            'mulai_pengobatan' => 'required',
        ],$messages);

        DB::table('data_pasien')->where('id',$request->id)->update([
            'id_kecamatan'=>$request->nama_kecamatan,
            'id_faskes'=>$request->nama_faskes,
            'jenis_tb'=>$request->jenis_tb,
            'NIK'=>$request->NIK,
            'tipe_diagnosa' => $request->tipe_diagnosa,
            'latitude'=>$request->latitude,
            'longitude'=>$request->longitude,
            'alamat'=>$request->alamat,
            'tanggal_mulaipengobatan'=>$request->mulai_pengobatan,
            'nama_pasien'=>$request->nama,
            'tanggal_lahir'=>$request->tanggal_lahir,
        ]);

        return redirect('/data_pasien_tb');
    }

    public function hapus($id)
    {
        //menghapus data berdasarkan id yg dipilih
        DB::table('data_pasien')->where('id',$id)->delete();

        //balik kehalaman depan
        return redirect('/data_pasien_tb');
    }

    public function data() //ngitung jumlah pasien TB di tiap kecamatan
                            // data pasien ada di tabel data_pasien
    {
        $kecamatan = data_kecamatan::all(); //panggil tabel kecamatan
        $arr = [];
        foreach ($kecamatan as $key => $value) {        //kecamatan dijadiin key
            $jumlah_pasien=data_pasien::where('id_kecamatan', $value->id)->count(); //itung jumlah pasien di tiap kecamatan, 
                                                                         //panggil dari tabel data_pasien based id_kecamatan, trus itung pasien
            $arr[] = [
                'kecamatan' => $value->nama_kecamatan, //panggil nama kecamatan nya
                'jumlah' => $jumlah_pasien
                        
            ];
        }

        return $arr;  //keluarin output nama kecamatan dan jumlah pasien yang udh diitung

    }

    public function cetak(Request $req)
    {
        $tahun = 2017;
        $bulan = 'Maret';

        $pasien = DB::table('data_pasien')->where('tahun', $tahun)->where('bulan', $bulan)->get();
        return $pasien;

        // $data = DB::table('data_pasien')
        //             ->leftjoin('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
        //             ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
        //             ->select ('data_pasien.id',
        //                         'data_kecamatan.nama_kecamatan',
        //                         'data_faskes.nama_faskes',
        //                         'data_pasien.jenis_tb',
        //                         'data_pasien.nama_pasien', 
        //                         'data_pasien.tanggal_lahir',
        //                         'data_pasien.alamat ',
        //                         'data_pasien.tipe_diagnosa', 
        //                         'data_pasien.latitude',
        //                         'data_pasien.longitude',
        //                         'data_pasien.tanggal_mulaipengobatan' )
        //             ->where('tahun', $tahun)
        //             ->where('bulan', $bulan)
        //             ->get();

        // $pdf = PDF::loadview('datapasien_pdf',['data_pasien'=>$pasien])->setPaper('a4', 'lanscape');
        // set_time_limit(600);
        // return $pdf->download('data-Pasien-pdf'.date('Y-m-d').'.pdf');
        // // return $pdf->stream();
    }
}
