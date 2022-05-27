
<!-- 1. Add latest jQuery and fancybox files -->

<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ asset('style.css') }}" />


<!-- 2. Create links -->




<!-- 3. Have fun! -->

<?php


//echo '<link rel="stylesheet" href="css/bootstrap.min.css" >';
//echo "<link rel='stylesheet' href='css/style.css'> ";

//$photo = $input_arr;

//echo $photo;

//$photo_arr = explode(">", $photo);

//$photo_str = implode(",", $photo);
//echo $photo_str;

$photo_end = explode(">", $photo);

//echo $photo_end[2] . ">";

    if(!empty($photo))
    {
        //echo '<pre>';
       // print_r($photo);
        
    }
    //require_once('admin.html');


//echo '<img src="https://i.ibb.co/s5q1ZdR/721tmg256dg11my.jpg"></a> ';

echo '<div class="container" > <div class="row"> ';

foreach ($photo_end as &$value) {
	$pos1 = 'https://';
	// Определяем позицию строки, до которой нужно все отрезать
	$pos1_n = strpos($value, $pos1);
	//Отрезаем все, что идет до нужной нам позиции
	$content_s = substr($value, $pos1_n);
	// Точно таким же образом находим позицию конечной строки
	$pos2 = ' alt';
	$pos2_n = strpos($content_s, $pos2);
	// Отрезаем нужное количество символов от нулевого
	$content_s = substr($content_s, 0, $pos2_n);
	//echo $content_s;
    $photo_html =  $value . ">";


  	echo  '<div class="filters__img "><a data-fancybox="gallery" href="' . $content_s  . '>' . $photo_html . "</a></div>";
}


echo "</div> </div> ";

/*for ($i = 1; $i <= 3; $i++) {
	$a = "Hello,";
echo "<div style='background-color:#33FFCC; box-shadow:rgb(51,102,255);width: 200px'>
<p style='font-size:xx-large;color: rgb(204,51,102)'>". $a . "<b>people</b>!</p>
</div>";
}*/



//die();
?>