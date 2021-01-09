	<!-- Header -->
	<header  class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index.php" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.php">Categories</a>
							</li>

							<li>
								<a href="product.php">Products</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<?php
						$query = "SELECT count(cart_NO) as counter FROM cart";
						$result = $con->query($query);
					    $Row = $result->fetch_assoc()?>
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify=<?php echo '"'.$Row['counter'].'"'; ?>>
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.php"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>
	</header>


	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<?php
				        $query = "SELECT * FROM cart, product where cart.product_Id = product.id";
				        $result = $con->query($query);
			        	while($Row = $result->fetch_assoc()) {?>
							<li class="header-cart-item flex-w flex-t m-b-12">
								<div class="header-cart-item-img">
									<img src=<?php echo '"images/'.$Row['imagePath'].'"'; ?> alt="IMG">
								</div>

								<div class="header-cart-item-txt p-t-8">
									<a href=<?php echo '"product-detail.php?productId='.$Row['id'].'"';?> class="header-cart-item-name m-b-18 hov-cl1 trans-04">
										<?php echo $Row['name'] ; ?>
									</a>

									<span class="header-cart-item-info">
										<?php echo $Row['quantity'] ; ?> x $ <?php echo $Row['price'] ; ?>
									</span>
								</div>
							</li> 
					<?php } ?>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						<?php
				        $query = "SELECT sum(cart.total_price) as total FROM cart";
				        $result = $con->query($query);
				        $Row = $result->fetch_assoc(); ?>
						Total price with discount: $ <?php echo $Row['total'] ; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
