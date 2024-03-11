<?php 
session_start();
$id = $_GET["id"];
	if (isset($_SESSION["cart-add"][$id])) {
		
		unset($_SESSION["cart-add"][$id]);

		header("location:cart2.php");
	}
 ?>