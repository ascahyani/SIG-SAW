<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\riwayat_pasien;
use DB;
use PDF;
use Alert;

class RiwayatpasienController extends Controller
{
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

    public function store(Request $request)
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

        DB::table('riwayat_pasien')->insert([
            'id_pasien'=>$request->nama_pasien,
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
            'id_pasien'=>$request->nama_pasien,
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

    public function cetak()
    {
        $riwayat_pasien= riwayat_pasien::all();

        $pdf = PDF::loadview('riwayatpasien_pdf',['riwayat_pasien'=>$riwayat_pasien])->setPaper('a4', 'landscape');
    
        set_time_limit(300);
        return $pdf->download('data-riwayat_pasien-pdf');
        
    }
}
