<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mahasiswa;

class MhsController extends Controller
{
    public function mahasiswa(){
       
        $mahasiswa = mahasiswa::paginate(6);
        return view ('mahasiswa',['mahasiswa' => $mahasiswa]);
    }

    public function search(Request $request){
       
        $cari = $request->cari;
        $mahasiswa = mahasiswa::where('nama','like','%'.$cari.'%')->paginate();
        return view ('mahasiswa',['mahasiswa' => $mahasiswa]);
    }

    public function formmhs()
    {
        return view('formmhs');
    }

    public function simpanMhs(Request $request)
    {
        mahasiswa::create([
            'nim' => $request->nim,
            'nama'=>$request->nama,   
            'gender' => $request->gender,
            'jurusan'=>$request->jurusan,
            'bidangminat'=>$request->bidangminat
        ]);
        return redirect("/mahasiswa")->with('alert01','Berhasil disimpan');
    }

    public function editMhs($id)
    {
        $mahasiswa = Mahasiswa::find($id);
        return view('formedit', ['mahasiswa'=> $mahasiswa]);
    }

    public function updateMhs($id, Request $request)
    {
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->nim = $request->nim;
        $mahasiswa->nama = $request->nama;
        $mahasiswa->gender = $request->gender;
        $mahasiswa->jurusan = $request->jurusan;
        $mahasiswa->bidangminat = $request->bidangminat;
        $mahasiswa->save();
        return redirect('/mahasiswa')->with('alert02','Berhasil Update');
    }

    public function hapusMhs($id){
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->delete();
        return redirect('/mahasiswa')->with('alert03','Berhasil Hapus');
    }
        
}
