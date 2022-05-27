<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<ul>
		@foreach ($url_photo as $photo_link)
			<li>
				<a href="{{ $photo_link-> photo_link }}">
				{{ $photo_link-> photo_link }}
				</a>
			</li>
		@endforeach 
	</ul>
</body>
</html>