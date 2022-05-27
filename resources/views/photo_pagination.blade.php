@include('additions') 


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>




</head>
<body>
  

@include('header_main_menu')
		<div class="hover14 column">
  	@foreach($photo_pagination as $url_photo)
    
    		<a data-fancybox="gallery" href="{{$url_photo->photo_link}}"><div class='filters__img '><figure><img src="{{$url_photo->mini_photo_link}}" '></figure></div></a>


		@endforeach
		</div>
  </tbody>
  
</table>
{{$photo_pagination->links()}} 

</body>
</html>