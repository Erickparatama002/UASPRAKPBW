<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mobil;

class MobilController extends Controller
{
    
    
    public function tahun(){
        $x = Mobil::all('tahun');
        $a=[2010,2011,2012];
        $b=[2013,2014,2015];
        $c=[2016,2017,2018];

        dd($x);

        foreach($x as $no=>$mobil)
        echo "$mobil";

    
         /*if(in_array($x,$a)){
           // $bobot=2;
           print ('2');
        }
       elseif($b){
           // $bobot=3;
           print ('2');
        }
    
        elseif($c){
            $bobot=4;
        }
        else {
            $bobot=5;
        }*/
    }
    
    public function normalisasi($id)
    {   
        
    }
    public function ranking($id)
    {   
        
    }
}
