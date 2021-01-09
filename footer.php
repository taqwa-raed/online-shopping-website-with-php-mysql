<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<div>
						<?php
							$query = "SELECT * FROM category";
							$result = mysqli_query($con, $query);
							while ($row = mysqli_fetch_assoc($result)) { ?>
								<a href=<?php echo '"product.php?categoryId='.$row['id'].'"';?> class="stext-107 cl7 hov-cl1 trans-04">
									<?php echo $row['name'].", "; ?>
								</a>	
						<?php } ?>		
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Admin Login
					</h4>

					<form action="MajesticAdmin-Free-Bootstrap-Admin-Template-master/template/pages/samples/login.php">
						<div class="p-t-18">
							<button class="flex-c-m cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Open Login Page
							</button>
						</div>
					</form>
				</div>
			</div>
			<div>
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>