<?php

namespace App\Http\Controllers;

use Request;

use App; // для работы с базой данных!

class BDInsertController extends Controller
{
   public function BD_insert(){
   	$input = Request::input('html_arr');
   	$input_arr = explode(" ", $input);
   	return view('test')->with('photo', $input );
   	//$photo_links = App\url_photo::find($photo_link);
   	//return view('test' , compact('photo_links') )->with('photo', $input );; // вернуть значение переменной в шаблон
   	//return view('test');
   }
}
