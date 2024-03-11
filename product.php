<?php require_once "db.php";
	$qr = "SELECT *FROM hang_hoas";
	$result = mysqli_query($conn,$qr);
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
				<li><a href="" class="nav-link">Product</a></li>
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
			<?php 
				foreach ($result as $value) {?>
					<div class="cart-add">
						<div class="image">
							<a href="index.php?id=<?php echo $value["id"]; ?>"><img src="<?php echo $value["hinh"]; ?>" alt="galaxy"></a>
						</div>
						<div class="name">
						<a href="index.php?id=<?php echo $value["id"]; ?>"><p><?php  echo $value["Ten_hang_hoa"]; ?></p></a>	
						</div>
						<div class="price">
							<a href="index.php?id=<?php echo $value["id"]; ?>"><p><?php echo number_format($value["gia"]); ?></p></a>
						</div>
					</div>
				<?php
				}
			 ?>

			</section>
	</main>
</body>
</html>