<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <style>
        body {
            background-image: url("hotelc.jpg");
        }

        #custd {
            display: block;
            text-align: center;
            padding: 40px 5px;
            font-size: 25px;
            font-weight: bold;
            border: 2px solid black;
            border-radius: 25px;
            width: 40%;

            margin: auto;
        }

        p {
            font-family: 'Ubuntu', sans-serif;
            text-align: center;
            font-size: 35px;
            font-weight: bold;
            text-shadow: 0px 1px 2px;
        }

        div {
            text-align: center;
        }

        input {
            display: block;
            text-align: center;
            align-items: center;
            margin: auto;
            border-radius: 20px;
            padding: 10px 15px;
            width: 55px;
            font-size: 15px;
        }

        h3 {
            text-align: right;
        }

        .flef {

            position: relative;
            float: left;
            left: 13%;
        }

        .button {
            border: 1px solid black;
            display: inline-block;
            background-color: rgb(197, 197, 197);
            width: 8%;
            font-weight: 600;
            padding: 10px;
            border-radius: 20px;
            font-size: 15px;
        }

        .button:hover {
            background-color: rgb(167, 167, 167);
            font-weight: 650;
            font-size: 16px;
        }

        
        #logo {
            position: relative;
            right: 20px;
            top: 20px;
            font-size: 17px;
            border: 2px solid black;
            text-decoration: none;
            padding: 8px 22px;
            border-radius: 20px;
            background-color: rgb(0, 0, 0);
            color: white;
        }
        #logo:hover {
            color: gainsboro;
        }
        #bck{
            text-decoration: none;
            display: inline-block;
            color: black;
            border: 1px solid black;
            font-weight: 600;
            background-color: rgb(197, 197, 197);
            width: 5%;
            padding: 10px;
            border-radius: 20px;
            font-size: 15px;
        }
        #bck:hover {
            background-color: rgb(167, 167, 167);
            font-weight: 650;
            font-size: 16px;
        }
    </style>

</head>

<body>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <?php
session_start();
require_once('connection.php');
require_once('connection.php');

if (isset($_SESSION['email'])) {
    // echo ' Well Come ' . $_SESSION['email'].'<br/>';
    $user = $_SESSION["email"];
    $sql1 = "SELECT name FROM login where email_id='$user'";
    $result = $con->query($sql1);
    echo '<h3>' . '<a href="logout.php?logout" id="logo">Logout</a>' . '</h3>';
    if ($result->num_rows > 0) {
        
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            echo '<p>Welcome ' . $row['name'] . '</p> ';
        }
        echo "<div><h2>Get Customer details by Bill no</h2>" . '</div><br/>';
        
        ?>


    <form method="GET">
        <input type="text" name="bill_no" placeholder="bill_no">
        <br>
        <div><input type="submit" name="button1" class="button" placeholder="GET DETAILS" />
        
            <a href="logout.php?logout"  id="bck">Back</a></div>
        <br>
    </form>

    <?php


if (array_key_exists('button1', $_GET)) {
    
    $conn = mysqli_connect('localhost', 'root', '', 'hotel_mgnt');
    $sql2 = "SELECT * FROM customer where bill_no='" . $_GET['bill_no'] . "'";
    $result2 = $conn->query($sql2);
    if ($result2->num_rows > 0) {
        // output data of each row
                while ($row = $result2->fetch_assoc()) {
                    
                    
                    
                    echo '<div id="custd">' . 'First name:' . $row['first_name'] .'<br/>'. '<br/>
                    Last name : ' . $row['last_name'] . '<br/>'. '<br/>
                    Phone no : ' . $row['phone_no'] .'<br/>'.'<br/>
                    Address :' . $row['address'] . '<br/>'.'<br/>
                    Check IN :' . $row['check_in'] . '<br/>'.'<br/>
                    Check OUT : ' . $row['check_out'] . '<br/>'.'<br/>
                    Bill no : ' . $row['bill_no'] . '<br/>'.'<br/>
                    Room no : ' . $row['room_no'] .  '<br/>'.'<br/>
					Hotel ID: ' . $row['hotel_id'] .  '<br/>'.'</div>';
                            }
            }
        }
    }
} else {
    header("location:index.php");
}

?>
</body>

</html>