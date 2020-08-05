<?php

namespace App\Exports;

use App\data_kecamatan;
use Maatwebsite\Excel\Concerns\FromCollection;

class KecamatanExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return data_kecamatan::all();
    }
}
