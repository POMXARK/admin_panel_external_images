<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

	{!! Form::open(['action' => 'UserController@index']) !!}
	{!! Form::label('name', 'Name:') !!}
	{!! Form::textarea('html_arr', null, ['class' => 'form-control']) !!}
	{!! Form::submit('Загрузить' , ['class' => 'form-control'] ) !!}
	{!! Form::close() !!}

	@php 

		//echo Form::open(['url' => 'content\foto', 'method' => 'post']);

		//echo link_to_action('UserController@index', $title = null, $parameters = [], $attributes = []);
		//echo link_to('web', $title = null, $attributes = [], $secure = null);
		//echo Form::textarea('keterangan', null, ['id' => 'keterangan', 'rows' => 4, 'cols' => 54, 'style' => 'resize:none']);
		//echo "<br>";
		//echo Form::submit('Click Me!');
	@endphp

</body>
</html>


