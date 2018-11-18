<?php
	//fname lname phoneno payment address cart
	session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
	$dbname = "test";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	$cart = serialize($_SESSION['cart_item']);
	$payment = '';
	switch ($_POST['PM']) {
		case 'COD':
			$payment = "Cash On Delivery";
			break;
		case 'CC':
			$payment = "Credit Card";
			break;
		case 'DB':
			$payment = "Debit Card";
			break;
	}
	$query = 'INSERT INTO userinfo VALUES ('.$_POST['phoneno'].', "'.$_POST['fname'].'", "'.$_POST['lname'].'", "'.$_POST['address'].'", "'.$payment.'", \''.$cart.'\');';
	$result = mysqli_query($conn, $query);
	if ($result) {
		include "thankyou.html";
		session_destroy();
	}
	else {
		include "submit_form_err.html";
	}
	mysqli_close($conn);
	
?>