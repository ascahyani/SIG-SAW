<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\data_kepadatan;
use App\data_kecamatan;
use DB;
use PDF;

class KepadatanController extends Controller
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
    
    public function index(){

        //ambil data kepadatan
        $kepadatan = data_kepadatan::all();

        //mengirm data kec ke view kepadatan
        return view ('data_kepadatan', ['data_kepadatan'=> $kepadatan]);
    }

    public function tambah()
    {
        $kecamatan = DB::table('data_kecamatan')->get();
        return view ('tambah_kepadatan')-> with([
           'kecamatan' => $kecamatan
        ]);
    }

    public function store(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request,[
            'luas_daerah'=>'required',
            'jumlah_penduduk'=>'required',
            'kepadatan_penduduk'=>'required',
            'tahun'=>'required',
        ],$messages);
        
        DB::table('data_kepadatan')->insert([
            'id_kecamatan'=>$request->kecamatan,
            'luas_daerah'=>$request->luas_daerah,
            'jumlah_penduduk'=>$request->jumlah_penduduk,
            'kepadatan_penduduk'=>$request->kepadatan_penduduk,
            'tahun'=>$request->tahun,
          
        ]);

    
        return redirect('/data_kepadatan');

    }

    public function edit($id)
    {
        //ngambil data kepadatan based id yg dipilih
        $kepadatan=DB::table('data_kepadatan')->where('id',$id)->get(); 
        
        $kecamatan=DB::table('data_kecamatan')->get();
        //passing data kepadatan ke view
        return view('edit_kepadatan')-> with([
            'kepadatan'=>$kepadatan,
            'kecamatan' => $kecamatan
         ]);
    }

    public function update(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request,[
            'luas_daerah'=>'required',
            'jumlah_penduduk'=>'required',
            'kepadatan_penduduk'=>'required',
            'tahun'=>'required',
        ],$messages);

        //update data kepadatan
        DB::table('data_kepadatan')->where('id',$request->id)->update([
            'id_kecamatan'=>$request->nama_kecamatan,
            'luas_daerah'=>$request->luas_daerah,
            'jumlah_penduduk'=>$request->jumlah_penduduk,
            'kepadatan_penduduk'=>$request->kepadatan_penduduk,
            'tahun'=>$request->tahun,
            
        ]);

        return redirect('/data_kepadatan');
    }

    public function hapus($id)
    {
        //menghapus data berdasarkan id yg dipilih
        DB::table('data_kepadatan')->where('id',$id)->delete();

        //balik kehalaman depan
        return redirect('/data_kepadatan');
    }

    public function cetak()
    {
        $padat= data_kepadatan::all();

        $pdf = PDF::loadview('datakepadatan_pdf',['padat'=>$padat])->setPaper('a4', 'potrait');
        set_time_limit(600);
        return $pdf->download('data-Kepadatan-penduduk-pdf'.date('Y-m-d').'.pdf');
        // return $pdf->stream();
    }
}
