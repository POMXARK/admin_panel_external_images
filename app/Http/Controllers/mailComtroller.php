<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Mail;

class mailComtroller extends Controller
{
    public function send(){
    	Mail::send(['text' => 'mail'], ['name','Web dev blog'], function ($message){
    		$message->to('1997pom@gmail.com', 'To web dev blog')->subject('Test email');
    		$message->from('1997pom@gmail.com', 'Web dev blog');

    	});
    }
}
