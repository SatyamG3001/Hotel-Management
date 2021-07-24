<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <style type="text/css">
    
        body {
            background-repeat: no-repeat;
            font-family: 'Ubuntu', sans-serif;
            background-image: url('hotelc.jpg');
        }
        select {

            width: 300px;
            font-size: 15px;
        }

        .container {
            box-sizing: border-box;
            font-family: 'Ubuntu', sans-serif;
            display: inline-block;
            color: rgb(37, 6, 35);
            width: 43%;
            border: 3px solid rgb(34, 7, 7);
            border-radius: 30px;
        }

        .container div {
            position: relative;
            float: left;
            left: 13%;
            text-shadow: 1px 0px 2px;

        }

        h3 {
            display: inline-block;
        }

        input {
            
            border: 2px solid black;
            border-radius: 10px;
            padding: 5px 10px;
            text-align: center;
            border: none;
        }
        .btn {
            font-size: 15px;
            font-weight: bold;
            font-family: 'Ubuntu', sans-serif;
            color: rgb(255, 205, 205);
            padding: 10px 25px;
            margin: 15px 4px;
            background-color: rgb(17, 26, 29);
            border-radius: 20px;
        }

        .btn:hover {
            background-color: rgb(38, 42, 43);
            color: rgb(195, 189, 202);
        }
        .container select{
            padding: 5px 10px;
            border-radius: 10px;
            border: none
        }
        option{
            background-color: rgb(194, 194, 194);
        }
        h1{
            text-shadow: 1px 0px 2px;
            color: rgb(17, 17, 75);
        }
        #custrd{
            
            display: block;
            border: 2px solid rgb(71, 43, 43);
            text-align: center;
            border-radius: 20px;
            width: 20%;
            margin: auto;
            font-size: 20px;
            font-weight: 800;
            padding-top: 10px;
            padding-bottom: 0px;
        }
        #recs{
            
            display: block;
            text-align: center;
            width: 20%;
            margin: auto;
            font-size: 15px;
            font-weight: 500;
        }
        a{
            text-decoration: none;
        }
    </style>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#country').on('change', function () {
                var countryID = $(this).val();
                if (countryID) {
                    $.ajax({
                        type: 'POST',
                        url: 'ajaxFile.php',
                        data: 'country_id=' + countryID,

                        success: function (html) {
                            $('#state').html(html);
                            $('#city').html('<option value="">Select state first</option>');
                        }
                    });
                } else {
                    $('#state').html('<option value="">Select country first</option>');
                    $('#city').html('<option value="">Select state first</option>');
                }
            });

            $('#state').on('change', function () {
                var stateID = $(this).val();
                if (stateID) {
                    $.ajax({
                        type: 'POST',
                        url: 'ajaxFile.php',
                        data: 'state_id=' + stateID,
                        success: function (html) {
                            $('#city').html(html);
                        }
                    });
                } else {
                    $('#city').html('<option value="">Select state first</option>');
                }
            });



        });
    </script>
</head>

<body>
    <center>



        <?php
        //Include database configuration file
        include('config.php');

        //Get all country data
        $query = "SELECT * FROM countries  ORDER BY country_name ASC";
        $run_query = mysqli_query($con, $query);
        //Count total number of rows
        $count = mysqli_num_rows($run_query);

        ?>
        <header><h1>Welcome To Customer Portal</h1></header>
        <div class="container">
            <form action=" " method="POST">
                <div class="divi">
                    <h3><label>Enter your First Name:</label></h3>
                    <input type="text" id="fname" name="fname" placeholder="First name">
                </div>
                <div class="divi">
                    <h3><label>Enter your Last Name:</label></h3>
                    <input type="text" id="lname" name="lname" placeholder="Last name">
                </div>
                <div class="divi">
                    <h3><label>Enter your Phone no:</label></h3>
                    <input type="PHONE" id="phone" name="phone" placeholder="Phone number">
                </div>
                <div class="divi">
                    <h3> <label>Enter your Address:</label></h3>
                    <input type="textbox" id="address" name="address" placeholder="Address">
                </div>
                <div class="divi">
                    <h3> <label>Enter your Check IN date:</label></h3>
                    <input type="text" id="check_in" name="check_in" placeholder="Check In date">
                </div>
                <div class="divi">
                    <h3><label>Enter your Check Out date:</label></h3>
                    <input type="text" id="check_out" name="check_out" placeholder="Check Out date">
                </div>
                <div class="divi">
                    <h3><label>Enter your booked Room No:</label></h3>
                    <input type="text" id="room_no" name="room_no" placeholder="Enter hotel Room no">
                </div>

                <!-- <h3> <label>SELECT LOCATION</label>  </h3> -->
                
                <select name="country" id="country">
                    <option value="">Select Country</option>
                    <?php
                    if ($count > 0) {
                        while ($row = mysqli_fetch_array($run_query)) {
                            $country_id = $row['country_id'];
                            $country_name = $row['country_name'];

                            echo "<option value='$country_id'>$country_name</option>";
                        }
                    } else {
                        echo '<option value="">Country not available</option>';
                    }

                    ?>
                </select><br><br>

                <select name="state" id="state">
                    <option value="">Select country first</option>
                </select>
                <br><br>

                <select name="city" id="city">
                    <option value="">Select state first</option>
                </select>
                <br><br>
                <input type="submit" name="button1" class="btn" placeholder="submit">
                <a href="javascript:history.back() " class="btn">Back</a>
            
        </div>
        <br><br>
        </form>
        </div>
    </center>
    <?php
    if (isset($_POST['button1'])) {
        if (!empty($_POST['city']) && !empty($_POST['fname']) && !empty($_POST['lname']) && !empty($_POST['phone']) && !empty($_POST['address']) && !empty($_POST['check_in']) && !empty($_POST['check_out']) && !empty($_POST['room_no'])) {

            $query = "SELECT city_name FROM cities where city_id='" . $_POST['city'] . "'";
			
            $run_query = mysqli_query($con, $query);
            //Count total number of rows
            $count = mysqli_num_rows($run_query);
            if ($count > 0) {
                while ($row = mysqli_fetch_array($run_query)) {

                    $city5 = $row['city_name'];
                    $query = "SELECT room1,room2,room3,room4,room5 FROM hotel_location where location='$city5'";
                    $run_query = mysqli_query($con, $query);
                    //Count total number of rows
                    $count = mysqli_num_rows($run_query);
                    if ($count > 0) {
                        while ($row = mysqli_fetch_array($run_query)) {
                        echo '<div id="custrd"> </br>
                             rooms available are
                             </br>'.
                            $row['room1'] . '<br>'.
                            $row['room2'] . '<br>'.
                            $row['room3'] . '<br>'.
                            $row['room4'] . '<br>'.
                            $row['room5'] . '<br>'.
                            '</div>';                        }
                    } else {
                        echo "no room or hotel available near selected location";
                    }
                    $fname = $_POST['fname'];
                    $lname = $_POST['lname'];
                    $phone = $_POST['phone'];
                    $address = $_POST['address'];
                    $check_in = $_POST['check_in'];
                    $check_out = $_POST['check_out'];
                    $room_no = $_POST['room_no'];
					$query8 = "SELECT hotel_id FROM hotel_location where location='$city5'";
					$run_query = mysqli_query($con, $query8);
					//Count total number of rows
					$count = mysqli_num_rows($run_query);
					if ($count > 0) {
						while ($row = mysqli_fetch_array($run_query)) {
							$h11=$row['hotel_id'];
						}
					}

							$sql11 = "INSERT INTO customer (first_name, last_name, phone_no, address, check_in, check_out,room_no,hotel_id)VALUES('$fname','$lname','$phone','$address','$check_in','$check_out','$room_no','$h11')";
							if ($con->query($sql11) === TRUE) {
                        echo '<br><div id="recs">New record created successfully.</div>';
                    } else {
                        echo "Error:";
                    }
					
					$query6 = "SELECT bill_no FROM customer where phone_no='$phone'";
					$run_query = mysqli_query($con, $query6);
					//Count total number of rows
					$count = mysqli_num_rows($run_query);
					if ($count > 0) {
						while ($row = mysqli_fetch_array($run_query)) {
							$h12=$row['bill_no'];
							echo '<br><div id="recs">Your Bill no is</div>';
							echo '<div id="custrd"> '.
                            $row['bill_no'] . '<br>'.
                            '</div>';
							
						}
						
					}else{
						echo 'no bill no found';
					}
					
                }
            }
        } else {
            echo "invalid entry";
        }
    }

    ?>


</body>

</html>