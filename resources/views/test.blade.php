<?php


//echo "1";
$photo_arr = explode("\n", $photo);
//print_r($photo_arr);
//$photo_arr = $photo;
foreach ($photo_arr as &$photo_url) {
$pos_mini = 'ib';
// Определяем позицию строки, до которой нужно все отрезать
 $pos_mini_n = strpos($photo_url, $pos_mini);

//echo $pos_mini_n;

//Отрезаем все, что идет до нужной нам позиции
 $mini_url = substr($photo_url, $pos_mini_n);
$pos_mini_2 = '">';
//echo $pos_mini_2 . '<br>'; 
// Точно таким же образом находим позицию конечной строки
 $pos_mini_n_2 = strpos($mini_url, $pos_mini_2);

// Отрезаем нужное количество символов от нулевого
 //echo $pos_mini_n_2 . '<br>';
 $pos_mini_n_2 = $pos_mini_n_2;


 //echo $pos_mini_n_2 . '<br>';
 $mini_url = substr($mini_url, 0, $pos_mini_n_2);

//echo $mini_url . '<br>';
//echo $photo_url . '<br>';

$pos_full_1 = 'src="';//$pos_mini_2;

$pos_full_n_1 = strpos($photo_url, $pos_full_1);

$full_url = substr($photo_url, $pos_full_n_1);


$pos_full_2 = 'ht';//$pos_mini_2;

$pos_full_n_2 = strpos($full_url, $pos_full_2);

$full_url = substr($full_url, $pos_full_n_2);


//echo $full_url . '<br>';

$pos_alt_1 = '" alt="';

//echo $pos_alt_1 . '<br>';

$pos_alt_n_1 = (strpos($photo_url, $pos_alt_1)) + strlen($pos_alt_1);

//echo $pos_alt_n_1 . '<br>';

$alt_url = substr($photo_url, $pos_alt_n_1);

//echo $alt_url . '<br>';

$pos_alt_2 ='" bor';
//echo $pos_alt_2 . '<br>';
$pos_alt_n_2 = (strpos($alt_url, $pos_alt_2));
$alt_url = substr($alt_url, 0, $pos_alt_n_2);
//echo $alt_url . '<br>';

// обрезаю конец у full_url

$pos_full_3 = $pos_alt_1;
//echo $pos_full_3 . '<br>';
$pos_full_n_3 = (strpos($full_url, $pos_full_3));

$full_url = substr($full_url, 0, $pos_full_n_3);

// вычлиняю расширение картинки часть 1
$type_url = $end_url = $full_url;


//echo $full_url . '<br>';
//echo $type_url . '<br>';

// обрезание картинки (alt)

$pos_full_4 = $alt_url;
//echo $pos_full_4 . '<br>';
$pos_full_n_4 = (strpos($full_url, $pos_full_4));
$full_url = substr($full_url, 0, $pos_full_n_4);
//echo $full_url . '<br>';

// вычлиняю расширение картинки 2
$pos_type_1 = $alt_url;
//echo $pos_type_1 . '<br>';
$pos_type_n_1 = (strpos($type_url, $pos_type_1)) + strlen($pos_type_1);
$type_url = substr($type_url, $pos_type_n_1);
//echo $type_url . '<br>';

// вычлиняем подсайт

$type_sait = $end_url;

$pos_sait_1 = $pos_mini;
$pos_sait_n_1 = (strpos($type_sait, $pos_sait_1));
$type_sait = (substr($type_sait, 0, $pos_sait_n_1));
//echo $type_sait . '<br>';
echo $mini_url . '<br>';
// url мини картинки  и url full картинки 
$mini_url_sql =  $type_sait . $mini_url . '/' . $alt_url . $type_url;
//echo $mini_url_sql;
//echo '    ' . '<br>';
echo $end_url;
DB::table('url_photo')->insert(['mini_photo_link' => $mini_url_sql , 'photo_link' => $end_url ]); // вставка значения в БД
  
}


/*<a href="https://ibb.co/dyG7ve"><img src="https://image.ibb.co/fQsQgK/Screenshot-3.png" alt="Screenshot-3" border="0"></a>
*/

//print_r($photo_arr);




/*<a href="https://ibb.co/ZBck0Xk"><img src="https://i.ibb.co/gStBx9B/721tmg256dg11.jpg" alt="721tmg256dg11" border="0"></a>


https://i.ibb.co/gStBx9B/721tmg256dg11.jpg  full 
https://i.ibb.co/ZBck0Xk/721tmg256dg11.jpg mini

<a href="https://ibb.co/ZBck0Xk"><img src="https://i.ibb.co/ZBck0Xk/721tmg256dg11.jpg" alt="721tmg256dg11" border="0"></a>*/


/* РАБОЧИЙ КОД для записи в БД
foreach ($photo_arr as &$photo_url) {

			DB::table('url_photo')->insert(['photo_link' => $photo_url ]); // вставка значения в БД
		}*/




		
				//echo '<a href="{{ $value-> value }}">';
				//$value-> value ;
				//echo '</a>';

/*foreach ($photo_arr as &$value) {
	echo  $value . '<br>';
	$pos1 = 'https://';
	// Определяем позицию строки, до которой нужно все отрезать
	$pos1_n = strpos($value, $pos1);
	//Отрезаем все, что идет до нужной нам позиции
	$content_s = substr($value, $pos1_n);
	// Точно таким же образом находим позицию конечной строки
	$pos2 = 'jpg';
	$pos2_n = strpos($content_s, $pos2);
	// Отрезаем нужное количество символов от нулевого
	//$content_s = substr($content_s, 0, $pos2_n);
	//echo $content_s;
    //$photo_html =  $value . ">";

			/*	<a href="{{ $photo_link-> photo_link }}">
				{{ $photo_link-> photo_link }}
				</a>

  }*/


//print_r($photo_arr);


//DB::insert('insert into users (id, name) values (?, ?)', [1, 'Dayle']);

// Запись в БД 

/*DB::table('url_photo')->insert(
    ['photo_link' => 'https://stackoverflow.com/questions/39118995/difference-between-laravel-dbinsert-and-dbtable-insert']
);*/
//$test = $photo * 2 ;

//echo '<br>' . $test;