@include('additions') 


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>




</head>
<body>
  <div class="container col-9" >

@include('header_main_menu')
		<div class="hover14 column">
  	@foreach($photo_pagination as $url_photo)
    
    		<a data-fancybox="gallery" href="{{$url_photo->photo_link}}"><div><figure><img src="{{$url_photo->photo_link}}" class='filters__img '></figure></div></a>


		@endforeach
		</div>
  </tbody>
  
</table>
{{$photo_pagination->links()}} 

</body>
</html>