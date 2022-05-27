<!-- 1. Add latest jQuery and fancybox files -->

<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ asset('style.css') }}" />


<!-- 2. Create links -->




<!-- 3. Have fun! -->


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  <ul>
    <div class="container " > <!-- <div class="row"> <div class="filters__img "><a data-fancybox="gallery"> -->

    @foreach ($photo_link as $url_photo)
    
    

    <a data-fancybox="gallery" href="{{$url_photo->photo_link}}"><img src="{{$url_photo->photo_link}}" class='filters__img '></a>

<!-- ПРИМЕР  <a data-fancybox="gallery" href="https://i.ibb.co/28dMT1h/721tmg256dg11my.jpg"><img src="https://i.ibb.co/28dMT1h/721tmg256dg11my.jpg" alt="721tmg256dg11my" border="0"></a> -->

<!--       <li>
  <a href="{{$url_photo->photo_link}}">
  {{$url_photo->photo_link}}
  </a>
</li> -->
    @endforeach 
  </ul>
</body>
</html>