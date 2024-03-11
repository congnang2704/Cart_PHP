<?php 
session_start();
if (isset($_POST["update-cart"])) {
		if (isset($_SESSION["cart-add"])) {
		foreach ($_SESSION["cart-add"] as $value) {
			if ($_POST["sl".$value["id"]] <= 0) {
				
				unset($_SESSION["cart-add"]["sl".$value["id"]]);
			}
			else{
			 	$_SESSION["cart-add"][$value["id"]]["sl"] = $_POST["sl".$value["id"]];
			}
		}
	}
}
	
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Cart</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<div class="logo-container">
			<img src="uploads/logo.png" alt="logo">
		</div>
		<nav>
			<ul class="nav-links">
				<li><a href="" class="nav-link">home</a></li>
				<li><a href="Product.php" class="nav-link">Product</a></li>
				<li><a href="" class="nav-link">Detail</a></li>
				<li><a href="" class="nav-link">Cart</a></li>
			</ul>
		</nav>
		<div class="cart">
			CART
		</div>
	</header>
	<main>
		<section class="show-product">

				<div class="table">
								<form action="cart2.php" method="POST">
				<table>
					<thead>
					<tr>
						<th>ID</th>
						<th>Tên sản phẩm</th>
						<th>Đơn giá</th>
						<th>số lượng</th>
						<th>Thành tiền</th>
						<th>&nbsp</th>
					</tr>
					</thead>
					<tbody>
					<?php 
					if (isset($_SESSION["cart-add"])) {
									foreach ($_SESSION["cart-add"] as  $value) {
								$tong = 0;
								$tong = $value["gia"]*$value["sl"];
							?>
							<tr>
								<td><?php echo $value["id"] ?></td>
								<td><?php echo $value["Ten_hang_hoa"]; ?></td>
								<td><?php echo $value["gia"]; ?></td>
								<td style="text-align: center;"><input type="number" min="1" name="sl<?php echo $value["id"]; ?>" value="<?php echo $value["sl"]; ?>"></td>
								<td><?php echo number_format($tong);  ?></td>
								<td>
									<a href="deletecart.php?id=<?php echo $value["id"]; ?>">Xóa</a>
							
							</tr>
						<?php
						}
					}
				
			
					 ?>
					
					</tbody>
				</table>
				<button type="submit" name="update-cart">UPDATE CART</button>
			</form>
				</div>


		</section>
	</main>
</body>
</html>