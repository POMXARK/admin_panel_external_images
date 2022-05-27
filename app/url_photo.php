<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class url_photo extends Model
{
		public $table = "url_photo"; // Когда таблица не имеет множественного числа
    public static function incomplete() {
    	return static::where('complited', 0)->get();
    }
}
