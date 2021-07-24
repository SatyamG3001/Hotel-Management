
<?php
 
    $con=mysqli_connect('localhost','root','','hotel_mgnt');
 
    if(!$con)
    {
        die(' Please Check Your Connection'.mysqli_error($con));
    }
?>
