<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\riwayat_pasien;
use DB;
use PDF;
use Alert;
use App\Exports\RiwayatpasienExport;
use Maatwebsite\Excel\Facades\Excel;


class RiwayatpasienController extends Controller
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
    
    public function Index()
    {
        $riwayat= riwayat_pasien::all();

        $data_pasien = DB::table('data_pasien')->get();
        return view ('data_riwayat_pasien')-> with([
            'data_pasien' => $data_pasien,
            'riwayat_pasien' => $riwayat
            ]);

    }

    public function tambah()
    {
        $data_pasien = DB::table('data_pasien')->get();
        return view ('tambah_riwayatpasien')-> with([
           'data_pasien' => $data_pasien
        ]);
        
    }

    public function data_pasien(Request $req) //untuk buat autofill dan autocomplete di tambah data
    {
        $search = $req->cari;

        if($search == ''){
           $data_pasien = DB::table('data_pasien')
                            ->join('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                            ->join('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                            ->select('data_pasien.id','data_pasien.nama_pasien', 'data_pasien.NIK', 'data_faskes.nama_faskes', 'data_kecamatan.nama_kecamatan')
                            ->limit(5)->get();
        }else{
           $data_pasien = DB::table('data_pasien')
                            ->join('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                            ->join('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                            ->select('data_pasien.id','data_pasien.nama_pasien', 'data_pasien.NIK', 'data_faskes.nama_faskes', 'data_kecamatan.nama_kecamatan')
                            ->where('data_pasien.nama_pasien', 'like', '%' .$search . '%')
                            ->limit(5)->get();
        }
  
        $response = array();
        foreach($data_pasien as $pasien){
           $response[] = array(
               "value" => $pasien->id,
               "label" => $pasien->nama_pasien,
               "faskes" => $pasien->nama_faskes,
               "kecamatan" => $pasien->nama_kecamatan,
               "NIK" => $pasien->NIK
            );
        }
        return response()->json($response);
        
    }

    public function store(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request, [
            'id_pasien'=>'required',
            'nama_pasien'=>'required',
            'tahun'=>'required',
            'bulan'=>'required',
            'jenis_tindakan'=>'required',
            'status'=>'required',
        ],$messages);

        DB::table('riwayat_pasien')->insert([
            'id_pasien'=>$request->id_pasien,
            'tahun'=>$request->tahun,
            'bulan'=>$request->bulan,
            'jenis_tindakan'=>$request->jenis_tindakan,
            'status'=>$request->status
        ]);

        return redirect('data_riwayat_pasien')->withMessage('Berhasil Ditambah');
    }

    
    public function edit($id)
    {
        $riwayat_pasien = DB::table('riwayat_pasien')->where('id',$id)->get();
        
        $data_pasien=DB::table('data_pasien')->get();

        return view('edit_riwayatpasien')->with([
            'data_pasien'=>$data_pasien,
            'riwayat_pasien'=>$riwayat_pasien
        ]);
    }

    public function edit_pasien(Request $req) //untuk buat autofill dan autocomplete di tambah data
    {
        $search = $req->cari;

        if($search == ''){
           $data_pasien = DB::table('data_pasien')
                            ->join('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                            ->join('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                            ->select('data_pasien.id','data_pasien.nama_pasien', 'data_pasien.NIK', 'data_faskes.nama_faskes', 'data_kecamatan.nama_kecamatan')
                            ->limit(5)->get();
        }else{
           $data_pasien = DB::table('data_pasien')
                            ->join('data_faskes', 'data_faskes.id', '=', 'data_pasien.id_faskes')
                            ->join('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                            ->select('data_pasien.id','data_pasien.nama_pasien', 'data_pasien.NIK', 'data_faskes.nama_faskes', 'data_kecamatan.nama_kecamatan')
                            ->where('data_pasien.nama_pasien', 'like', '%' .$search . '%')
                            ->limit(5)->get();
        }
  
        $response = array();
        foreach($data_pasien as $pasien){
           $response[] = array(
               "value" => $pasien->id,
               "label" => $pasien->nama_pasien,
               "faskes" => $pasien->nama_faskes,
               "kecamatan" => $pasien->nama_kecamatan,
               "NIK" => $pasien->NIK
            );
        }
        return response()->json($response);
        
    }


    public function update (Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request, [
            'nama_pasien'=>'required',
            'tahun'=>'required',
            'bulan'=>'required',
            'jenis_tindakan'=>'required',
            'status'=>'required',
        ],$messages);

        DB::table('riwayat_pasien')->where('id',$request->id)->update([
            'id_pasien'=>$request->id_pasien,
            'tahun'=>$request->tahun,
            'bulan'=>$request->bulan,
            'jenis_tindakan'=>$request->jenis_tindakan,
            'status'=>$request->status
        ]);

        return redirect('/data_riwayat_pasien');
    }


    public function hapus($id)
    {
        //menghapus data berdasarkan id yg dipilih
        DB::table('riwayat_pasien')->where('id',$id)->delete();

        //balik kehalaman depan
        //Alert::success('Berhasil menghapus data !')->persistent('Confirm');
     
        return redirect('/data_riwayat_pasien')
        ->with('success','User deleted successfully');;
        
    }
    public function filter()
    {
        $riwayat_pasien= riwayat_pasien::all();

        return view ('riwayatpasien_filter');
    }

    public function count()
    {
        $tahun = 2017;
        $bulan = "Maret";
        $kasus = DB::table('riwayat_pasien')     
                    ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                    ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                    ->select('data_pasien.id_kecamatan',
                            DB::raw('count(riwayat_pasien.id_pasien) as jumlah_pasien'))
                    ->groupBy('data_pasien.id_kecamatan')
                    ->where('riwayat_pasien.tahun', $tahun)
                    ->where('riwayat_pasien.bulan', $bulan)
                    ->get();
        return $kasus;
    }

    public function cetak(Request $req)
    {
        $tahun = $req->tahun;
        $bulan = $req->bulan;

        // $tahun = 2017;
        // $bulan = "September";

        $data = DB::table('riwayat_pasien')
                    ->leftjoin('data_pasien', 'data_pasien.id', '=', 'riwayat_pasien.id_pasien')
                    ->leftjoin('data_kecamatan', 'data_kecamatan.id', '=', 'data_pasien.id_kecamatan')
                    ->select ('data_pasien.nama_pasien',
                                'data_kecamatan.nama_kecamatan',
                                'data_pasien.jenis_tb',
                                'data_pasien.jenis_tb',
                                'data_pasien.alamat',
                                'data_pasien.latitude',
                                'data_pasien.longitude',
                                'riwayat_pasien.tahun',
                                'riwayat_pasien.bulan',
                                'riwayat_pasien.jenis_tindakan',
                                'riwayat_pasien.status')
                    ->where('riwayat_pasien.tahun', $tahun)
                    ->where('riwayat_pasien.bulan', $bulan)
                    ->get();

        //$riwayat = DB::table('riwayat_pasien')->where('tahun', $tahun)->where('bulan', $bulan)->get();;
        //$data_pasien = DB::table('data_pasien')->get();
        //return $data;

        $pdf = PDF::loadview('riwayatpasien_pdf',['riwayat_pasien'=>$data])
        ->setPaper('a4', 'landscape');
    
        set_time_limit(6000);
        return $pdf->download('data-riwayat_pasien'.date('Y-m-d').'.pdf');
        
    }

    
    public function excel()
	{
        //return (new RiwayatpasienExport)->download('Riwayat_Pasien.xlsx');
        return Excel::download(new RiwayatpasienExport, 'Riwayat_Pasien.xlsx');
	}
}
