<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\data_kecamatan;
use DB;
use PDF;

class KecamatanController extends Controller
{
    public function index(){

        //ambil data kecamatan
        $kecamatan = data_kecamatan::all();

        //mengirm data kec ke view kecamatan
        return view ('data_kecamatan', ['data_kecamatan'=> $kecamatan]);
    }

    public function tambah()
    {
        return view('tambah_kecamatan');
    }

    public function store(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request, [
            'nama_kecamatan'=>'required',
            
        ],$messages);
        
        DB::table('data_kecamatan')->insert([
            'nama_kecamatan'=>$request->nama_kecamatan,
            
        ]);

    
        return redirect('/data_kecamatan');

    }

    public function edit($id)
    {
        //ngambil data kecamatan based id yg dipilih
        $kecamatan=DB::table('data_kecamatan')->where('id',$id)->get(); 
        
        //passing data kecamatan ke view
        return view('edit_kecamatan',['kecamatan'=>$kecamatan]);
    }

    public function update(Request $request)
    {
        $messages = [
            'required' => 'Semua Kolom Inputan Wajib Diisi!!!'
        ];

        $this->validate($request, [
            'nama_kecamatan'=>'required',
            
        ],$messages);
        
        //update data pegawai
        DB::table('data_kecamatan')->where('id',$request->id)->update([
            'nama_kecamatan'=>$request->nama_kecamatan,
            
        ]);

        return redirect('/data_kecamatan');
    }

    public function hapus($id)
    {
        //menghapus data berdasarkan id yg dipilih
        DB::table('data_kecamatan')->where('id',$id)->delete();

        //balik kehalaman depan
        return redirect('/data_kecamatan');
    }


    public function cetak()
    {
        $kecamatan= data_kecamatan::all();

        $pdf = PDF::loadview('datakecamatan_pdf',['kecamatan'=>$kecamatan])->setPaper('a4', 'potrait');
        set_time_limit(600);
        return $pdf->download('data-kecamatan-pdf'.date('Y-m-d').'.pdf');
        // return $pdf->stream();
    }
}
