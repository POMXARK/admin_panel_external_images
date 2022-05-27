<?php

parser('https://ibb.co/album/cmCUDv','https://i.ibb.co/','.jpg');

//parser('https://www.google.com','/images/branding','.png','https://www.google.com');

function parser($sait , $pos1, $pos2 , $pas3 = '') {
//откуда будем парсить информацию
 
$tips = $pos2;
for ($i = 1; $i <= 10; $i++) {
    echo $i;
}

 $content = file_get_contents($sait);
 $col = $content;

for ($i > 0; $col <= 100; $i++) {
 //$tip = ".jpg";
 //$pos2 = $tip;
 $rez_bez_probelov = mb_strlen($content,'utf-8');
 echo "<br>Kol simv: ".$rez_bez_probelov;
 echo " POS2: ".$tip;
 echo " POS1: ".$pos1;
 echo " POS2: ".$pos2;
 //$content = $sait;
 //echo $content ;
// Определяем позицию строки, до которой нужно все отрезать
 $pos1_n = strpos($content, $pos1);

//Отрезаем все, что идет до нужной нам позиции
 $content_s = substr($content, $pos1_n);


// Точно таким же образом находим позицию конечной строки
 $pos2_n = strpos($content_s, $pos2);
	echo " POS2_: ".$pos2;
// Отрезаем нужное количество символов от нулевого
 $content_s = substr($content_s, 0, $pos2_n);
 //$content = $sait . '' . $content ;
//если в тексте встречается текст, который нам не нужен, вырезаем его
 //$content = str_replace('текст который нужно вырезать','', $content);

// выводим спарсенный текст.
 //echo  "\"" . $sait . $content;
$content3  = $pas3 . $content_s . $tip;
echo $content3 ;
// обрезать ненужный кусок
echo " __POS2_: ".$pos2;
echo " __$content_: ";//.$content ;
$content = substr($content, 100);
//echo $content;
 $rez_bez_probelov = mb_strlen($col,'utf-8');
 echo "<br>Kol simv2: ".$rez_bez_probelov;
$content = substr($col, $rez_bez_probelov);
 echo " COL: ".$content;
//echo "вставляем сюда завершающий код";
}
 }
 ?>