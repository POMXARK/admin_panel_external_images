<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div class="container">
	<table class="table table-dark">
  <thead>
    <tr>
    	<th scope="col">Id</th>
      <th scope="col">Name</th>    	
      <th scope="col">Mail</th>
    </tr>
  </thead>
  
  <tbody>
  	@foreach($users as $user)
    <tr>
    		
    		<!--<td>{{$loop->index +1 }}</td>-->
    		<td>{{$user->id}}</td>
				<td>{{$user->name}}</td>
				<td>{{$user->email}}</td>

    </tr>
    <tr>
		@endforeach
  </tbody>
  
</table>
{{$users->links()}}
</div>
</body>
</html>