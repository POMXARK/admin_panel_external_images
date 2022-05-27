<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ViewPhotoController extends Controller
{
    
    public function view_photo(){
			$view_photo = App\url_photo::all();
	    return view('test_2' , compact('view_photo'));
    
}
