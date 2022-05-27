<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

class Pagination extends Controller
{
    public function users(){
    	$users = User::paginate(3);
    	//$users = User::simplePaginate(3);
    	return view ('Pagination', compact('users'));
    	//return view('test_php' );
    }
}
