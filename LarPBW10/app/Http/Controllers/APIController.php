<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mahasiswa;

class APIController extends Controller
{
    public function list(request $req){
        $mahasiswa = Mahasiswa::all();
        return response()->json([
            'success' => true,
            'message' => 'Show Success',
            'data' => $mahasiswa
        ],200);
        

    }

    public function add(request $req){
        $mahasiswa = Mahasiswa::create([
            'nim' => $req-> nim,
            'nama' => $req-> nama,
            'gender' => $req-> gender,
            'jurusan' => $req-> jurusan,
            'bidangminat' => $req-> bidangminat,
            ]);
            if($mahasiswa){
                return response()->json([
                    'success' => true,
                    'messsage' =>'Saving Success',
                ],200);
            }
            else{
                return response()->json([
                    'success' => false,
                    'messsage' =>'Saving Failed',
                ],401);
                
            }
    }
    public function update(request $req){
        $mahasiswa = Mahasiswa::whereId($req->id)->update([
            'nim' => $req-> nim,
            'nama' => $req-> nama,
            'gender' => $req-> gender,
            'jurusan' => $req-> jurusan,
            'bidangminat' => $req-> bidangminat, 
        ]);
            if($mahasiswa){
                return response()->json([
                    'success' => true,
                    'messsage' =>'Update Success',
            ],200);
            }
            else{
                return response()->json([
                    'success' => false,
                    'messsage' =>'Update Failed',
            ],400);
            }


    }

    public function delete($id){
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->delete();
        if($mahasiswa){
            return response()->json([
                'success' => true,
                'messsage' =>'Delete Success',
        ],200);
        }
        else{
            return response()->json([
                'success' => false,
                'messsage' =>'Delete Failed',
        ],400);
        }
            


    }
}
