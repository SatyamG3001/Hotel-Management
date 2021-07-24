<!DOCTYPE html>
<html>
<head>
	<title>index page</title>
	<style type="text/css">
		body, html {
			height: 100%;
			margin: 0;
		}

		.bg { 
			background-image: url("h1.jpg");
			height: 100%; 
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
		}
		
		.center {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			background-color: #f1f1f1;
			color: black;
			font-size: 16px;
			padding: 16px 30px;
			border: none;
			cursor: pointer;
			border-radius: 5px;
			text-align: center;
		}
		.center:hover{
			background-color: black;
			color: white;
		}
		.centere {
			position: absolute;
		    top: 60%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		    -ms-transform: translate(-50%, -50%);
		    background-color: #f1f1f1;
		    color: black;
		    font-size: 16px;
		    padding: 16px 30px;
		    border: none;
		    cursor: pointer;
		    border-radius: 5px;
		    text-align: center;
		}
		.centere:hover{
			background-color: black;
			color: white;
		}
	</style>	
</head>
<body >
<div class="bg">
	<a href="login/index.php"><button class="center">MANAGER LOGIN</button></a>
	<a href="location/index.php"><button class="centere">CUSTOMER PORTAL</button></a>
	
</div>
</body>
</html>