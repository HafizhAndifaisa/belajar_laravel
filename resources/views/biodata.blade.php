<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel</title>
</head>
<body>
 
	<h1>Tutorial Laravel</h1>
	<a href="https://www.malasngoding.com/category/laravel">www.malasngoding.com</a>
    <br>
 
    <p>Nama : {{ $nama }}</p>

    <p>Mata Pelajaran</p>
	<ul>
 
		@foreach($matkul as $m)
 
		<li>{{ $m }}</li>
 
		@endforeach
		
	</ul>

</body>
</html>