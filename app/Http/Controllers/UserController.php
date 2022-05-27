<?php

namespace App\Http\Controllers;

use Request;



use App; // для работы с базой данных!

class UserController extends Controller
{



    public function indexx(){
			$url_photo = App\url_photo::all();
			//return $url_photo;

            return view('test');// вернуть значение переменной в шаблон


			//return view('tasks.view_bd' )->with('url_photo', $url_photo );
	    //return view('tasks.index'); //, compact('id'));
    }
			

        public function index()
    {

    	//$input = Request::input('html_arr');//Request::fullUrl();//Request::url();//Request::path(); //Request::all();
    	//return $input;
    	//$input_arr = explode(" ", $input);
    	//$data['cheese'] = $input ;


    	//return view('content\foto')->compact('data');

        
        $photo_link = App\url_photo::all();
        //echo $photo_link;
        return view('test_2' , compact('photo_link'));
    	//$photo_links = App\url_photo::find($photo_link); 

	    //return view('tasks.show' , compact('task'));

    	//return view('test_2' , compact('photo_links') )->with('photo', $input );; // вернуть значение переменной в шаблон
    	//return view('content\foto')->with('photo', $input );// вернуть значение переменной в шаблон

/*      return view('content\foto', [
 					'students' => $input,
				]); */
    }


}
