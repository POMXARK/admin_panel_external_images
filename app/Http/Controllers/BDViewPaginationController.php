<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\url_photo;

class BDViewPaginationController extends Controller
{
    public function photo_pagination(){
    	$photo_pagination = url_photo::paginate(12);
    	//return $photo_view;
    	//$users = User::simplePaginate(3);
    	//return view ('photo_pagination', compact('photo_view'));
    	return view('photo_pagination', compact('photo_pagination') );
    }    
}
