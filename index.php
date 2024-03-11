<?php require_once "db.php";
$id = $_GET["id"];
	$sql ="SELECT *FROM hang_hoas where id = $id";
	$result = mysqli_query($conn,$sql);
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
				<li><a href="product.php" class="nav-link">Product</a></li>
				<li><a href="" class="nav-link">Detail</a></li>
				<li><a href="" class="nav-link">Cart</a></li>
			</ul>
		</nav>
		<div class="cart">
			CART
		</div>
	</header>
	<main>
		<section class="presentation">
			<?php 
				while ($row = mysqli_fetch_array($result)) {?>
			<div class="introduction">
				<div class="intro-text">
					<h1><?php  echo $row["Ten_hang_hoa"]; ?></h1>
					<p><?php  echo number_format($row["gia"]); ?></p>
				</div>
				<div class="cta">
					<form action="cart.php?id=<?php echo $row["id"]; ?>" method="POST">
					<button class="cta-select">14 Inch</button>
						<button class="cta-add" type="submit" name="add-to-cart">
							Add to cart
						</button>
					<label>Số lượng:<input type="number" name="sl" value="1" min="1"></label>

					</form>
				</div>
			</div>
			<div class="cover">
				<img src="<?php echo $row["hinh"]; ?>" alt="Laptop">
			</div>
				<?php }
			 ?>

		</section>
	</main>
</body>
</html>