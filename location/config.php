
<?php
$con=mysqli_connect('localhost','root','','hotel_mgnt');
if ($con->connect_error) {
die("Database Connection failed: " . $con->connect_error);
}
?>