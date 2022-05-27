<?php

parser('https://www.google.com','src="','.png"');


function parser($sait , $pos1, $pos2) {
//откуда будем парсить информацию
 $sait = 'https://www.google.com' ;
 $content = file_get_contents($sait);
 //$content = $sait;
 //echo $content ;
// Определяем позицию строки, до которой нужно все отрезать
 $pos1 = strpos($content, 'src="');

//Отрезаем все, что идет до нужной нам позиции
 $content = substr($content, $pos1);

// Точно таким же образом находим позицию конечной строки
 $pos2 = strpos($content, '.png"');

// Отрезаем нужное количество символов от нулевого
 $content = substr($content, 5, $pos2);
 //$content = $sait . '' . $content ;
//если в тексте встречается текст, который нам не нужен, вырезаем его
 //$content = str_replace('текст который нужно вырезать','', $content);

// выводим спарсенный текст.
 echo  "\"" . $sait . $content;

//echo "вставляем сюда завершающий код";
 }
 ?>