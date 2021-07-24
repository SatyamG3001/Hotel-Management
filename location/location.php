<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<form  action="" method="post"> 
<label >Enter State:</label>
<select id="location" >
  <option value="1">Maharashtra</option>
  <option value="2">Rajasthan</option>
  <option value="3">Uttar Pradesh</option>
  <option value="4">Delhi</option>
  <option value="5">Goa</option>
  <option value="6">Odisha</option>
</select>
<label >Enter City:</label>
<select id="city" name="city" >
  <option value="mumbai">Mumbai</option>
  <option value="thane">Thane</option>
  <option value="nashik">Nashik</option>
</select>
<input type="submit" name="button1" class="button" placeholder="Submit" />
</form>

<script type="text/javascript">
$('#location').on('change', function(){
	console.log($('#location').val());
    $('#city').html('');
    if($('#location').val()==1){
        $('#city').append('<option value="mumbai">mumbai</option>');
        $('#city').append('<option value="thane">thane</option>');
        $('#city').append('<option value="nashik">nashik</option>');
    }if($('#location').val()==4){
        $('#city').append('<option value="karolbagh">karolbagh</option>');
    }if($('#location').val()==3){
        $('#city').append('<option value="gorakhpur">gorakhpur</option>');
    }if($('#location').val()==2){
        $('#city').append('<option value="jaipur">jaipur</option>');
		$('#city').append('<option value="jodhpur">jodhpur</option>');
    }if($('#location').val()==5){
        $('#city').append('<option value="goa">goa</option>');
    }else {
        $('#city').append('<option value="bhubaneswar">bhubaneswar</option>');
		$('#city').append('<option value="cuttack">cuttack</option>');
    }
});
</script>
 <?php
      if(isset($_POST['button1'])){
        if(!empty($_POST['city'])) {
          $selected = $_POST['city'];
          echo 'You have chosen: ' . $selected;
        } else {
          echo 'Please select the value.';
        }
      }
?>


</body>
</html>
