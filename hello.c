<!DOCKTYPE html>
<html>
<head><title>Post and Get</title></head>
<body>
<form action="" method="GET">
<label for="num1">Enter Number1</label>
<input type="number" id="num1" name="num1"/><br>
<label for="num2">Enter Number2</label>
<input type="number" id="num2" name="num2"/><br>
<button type="submit">Click</button>
</form>
<?php
if(isset($_GET['num1'])&&isset($_GET['num2'])){
	$num1=$_GET['num1'];
	$num2=$_GET['num2'];
}
if(is_numeric($num1)&&is_numeric($num2)){
	$sum=$num1+$num2;
	$product=$num1*$num2;
	$diff=$num1-$num2;
	echo "<p>sum=$sum</p>";
	echo "<p>product=$product</p>";
	echo "<p>difference=$diff</p>";
}
else{
	echo "<p>It is Not Number</p>";
 }
 ?>
</body>
</html>
