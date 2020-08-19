<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Account</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
 --><!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>	
<!-- start menu -->
<script src="js/simpleCart.min.js"> </script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>				
</head>
<body> 
	<!--top-header-->
	<div class="top-header">
	<div class="container">
		<div class="top-header-main">
			<div class="col-md-4 top-header-left">
				<div class="search-bar">
					<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
			</div>
			<div class="col-md-4 top-header-middle">
				<a href="index.jsp"><img src="images/logo-4.png" alt="" /></a>
			</div>
			<div class="col-md-4 top-header-right">
				<div class="cart box_1">
						<a href="#">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="images/cart-1.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--top-header-->
<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="index.jsp">Home</a></li>
					<li class="grid"><a href="#">Men</a>
						<!-- <div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div> -->
					</li>
					<li class="grid"><a href="#">Women</a>
						<!-- <div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div> -->
					</li>
					<li class="grid"><a href="#">Kids</a>
						<!-- <div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div> -->
					</li>
					<li class="grid"><a href="#">Sports</a>
						<!-- <div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div> -->
					</li>
					<li class="grid"><a href="#">Brands</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>	
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Account</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-account-->
	<div class="account">
		<div class="container"> 
			<div class="account-bottom">
				<div class="col-md-6 account-left">
					<form action="../../Register" method="post">
					<div class="account-top heading">
						<h3>NEW CUSTOMERS</h3>
					</div>
					<div class="address">
						<span>First Name</span>
						<input type="text" name="firstName">
					</div>
					<div class="address">
						<span>Last Name</span>
						<input type="text" name="lastName">
					</div>
					<div class="address">
						<span>Email Address</span>
						<input type="text" name="email">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="text" name = "password">
					</div>
					<div class="address">
						<span>Reenter Password</span>
						<input type="text">
					</div>
					<div class="address new">
						<input type="submit" value="submit">
					</div>
					</form>
				</div>
				<div class="col-md-6 account-left">
					<form action="../../loginUser" method="post">
					<div class="account-top heading">
						<h3>REGISTERED CUSTOMERS</h3>
					</div>
					<div class="address">
						<span>Email Address</span>
						<input type="text" name="email">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="password" name="password">
					</div>
					<div class="address">
						<a class="forgot" href="#">Forgot Your Password?</a>
						<input type="submit" value="Login">
					</div>
					</form>
				</div>
				<div class="col-md-6 account-left" style="margin-top: 40px;">
					<form action="../../login" method="post">
					<div class="account-top heading">
						<h3>REGISTERED Admin</h3>
					</div>
					<div class="address">
						<span>Email Address</span>
						<input type="text" name="email">
					</div>
					<div class="address">
						<span>Password</span>
						<input type="password" name="password">
					</div>
					<div class="address">
						<a class="forgot" href="#">Forgot Your Password?</a>
						<input type="submit" value="Login">
					</div>
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-account-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-3 footer-left">
					<h3>ABOUT US</h3>
					<ul>
						<li><a href="#">Who We Are</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
						<li><a href="#">Our Sites</a></li>
						<li><a href="#">In The News</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Carrers</a></li>					 
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>YOUR ACCOUNT</h3>
					<ul>
						<li><a href="account.jsp">Your Account</a></li>
						<li><a href="#">Personal Information</a></li>
						<li><a href="contact.jsp">Addresses</a></li>
						<li><a href="#">Discount</a></li>
						<li><a href="#">Track your order</a></li>					 					 
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>CUSTOMER SERVICES</h3>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Cancellation</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Bulk Orders</a></li>
						<li><a href="#">Buying Guides</a></li>					 
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>CATEGORIES</h3>
					<ul>
						<li><a href="#">Sports Shoes</a></li>
						<li><a href="#">Casual Shoes</a></li>
						<li><a href="#">Formal Shoes</a></li>
						<li><a href="#">Party Shoes</a></li>
						<li><a href="#">Ethnic</a></li>				 
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-footer-->
	<!--end-footer-text-->
	<div class="footer-text">
		<div class="container">
			<div class="footer-main">
				<p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->	
</body>
</html>