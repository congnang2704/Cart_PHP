<?php 		
session_start();
 require_once "db.php";
	$id = $_GET["id"];
	$qr = "SELECT *FROM hang_hoas where id = $id";
	$result = mysqli_query($conn,$qr);

	$product_cart = array();
	foreach ($result as $value) {
		$product_cart[$value["id"]]= $value;
	}
	$detail = $product_cart[$id];
	// echo "<pre>";
	// print_r($detail); 
	if (isset($_POST["add-to-cart"])) {
		$sl = $_POST["sl"];
			if (!isset($_SESSION["cart-add"])|| $_SESSION["cart-add"] ==null) {
		$product_cart[$id]["sl"] = $sl;
		$_SESSION["cart-add"][$id] = $product_cart[$id];
	}
	else{
		if (array_key_exists($id, $_SESSION["cart-add"])) {
			$_SESSION["cart-add"][$id]["sl"] +=$sl;
		}
		else{
			$product_cart[$id]["sl"] = $sl;
			$_SESSION["cart-add"][$id] = $product_cart[$id];
			
		}
		
		}
		header("location:cart2.php");
	}
	
	 
 ?>
