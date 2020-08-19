<%@page import="com.shoes.model.Product"%>
<%@page import="com.shoes.model.Cart"%>
<%@page import="com.shoes.DAO.impl.ProductDaoImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!--fonts-->
<!-- <link
	href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
	rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<style>
.mainmenubtn {
	color: #8c2830;
	cursor: pointer;
	padding: 20px;
	margin-top: 20px;
	border-radius: 10px;
	font-weight: 900;
	border: 1px solid #8c2830;
	background-color: white;
}

.dropdown {
	position: absolute;
	display: inline-block;
	z-index: 3;
}

.dropdown-child {
	display: none;
	background-color: white;
	min-width: 200px;
}

.dropdown-child a {
	color: #8c2830;
	padding: 20px;
	text-decoration: none;
	display: block;
	border-radius: 10px;
	font-weight: 900;
	border: 1px solid #8c2830;
	background-color: white;
}

.dropdown:hover .dropdown-child {
	display: block;
}
.single-left {
	margin-bottom: 40px;
}
</style>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start menu -->
<script src="js/simpleCart.min.js">
	
</script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
</head>
<body>
					<%
						Cart cart=(Cart)session.getAttribute("cart");
					     if(cart==null){
					    	 cart=new Cart();
					    	 session.setAttribute("cart", cart);
					     }
						     		     
						 %>
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-4 top-header-left">
					<div class="search-bar">
						<input type="text" value="Search" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="">
					</div>
				</div>
				<div class="col-md-4 top-header-middle">
					<a href="index-user.jsp"><img src="images/logo-4.png" alt="" /></a>
				</div>
				<div class="col-md-4 top-header-right">
					<div class="dropdown" style="float: left">
						<%
							String name = null;
						Cookie cookie = null;
						Cookie[] cookies = null;
						cookies = request.getCookies();
						if (cookies != null) {

							for (int i = 0; i < cookies.length; i++) {
								cookie = cookies[i];

								if ((cookie.getName()).compareTo("name") == 0) {
							cookie.setMaxAge(60 * 60 * 24);
							response.addCookie(cookie);
							name = cookie.getValue();
								}
							}
						}
						%>
						<button class="mainmenubtn">
							Hello, <%=name%>
						</button>
						<div class="dropdown-child">
							<a href="#">Xem Thông tin cá nhân</a> 
							<a href="checkout.jsp">Xem giỏ hàng</a> 
							<a href="history.jsp">Xem
								Lịch sử giao dịch</a>
							<a href="index.jsp">Đăng xuất</a>
						</div>
					</div>
					<div class="cart box_1">
						<a href="checkout.jsp">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span> (<span
										id="simpleCart_quantity" class="simpleCart_quantity"></span>
									items)
								</div>
								<img src="images/cart-1.png" alt="" />
						</a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
						</p>
						<div class="clearfix"></div>
					</div>
					<div style="clear: both;"></div>
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
				<ul class="memenu skyblue">
					<li class="active"><a href="index-user.jsp">Home</a></li>
					<li class="grid"><a href="products-user.jsp">Men</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products-user.jsp">New Arrivals</a></li>
										<li><a href="products-user.jsp">Men</a></li>
										<li><a href="products-user.jsp">Women</a></li>
										<li><a href="products-user.jsp">Accessories</a></li>
										<li><a href="products-user.jsp">Kids</a></li>
										<li><a href="products-user.jsp">login</a></li>
										<li><a href="products-user.jsp">Brands</a></li>
										<li><a href="products-user.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="products-user.jsp">Women</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products-user.jsp">New Arrivals</a></li>
										<li><a href="products-user.jsp">Men</a></li>
										<li><a href="products-user.jsp">Women</a></li>
										<li><a href="products-user.jsp">Accessories</a></li>
										<li><a href="products-user.jsp">Kids</a></li>
										<li><a href="products-user.jsp">login</a></li>
										<li><a href="products-user.jsp">Brands</a></li>
										<li><a href="products-user.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="products-user.jsp">Kids</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products-user.jsp">New Arrivals</a></li>
										<li><a href="products-user.jsp">Men</a></li>
										<li><a href="products-user.jsp">Women</a></li>
										<li><a href="products-user.jsp">Accessories</a></li>
										<li><a href="products-user.jsp">Kids</a></li>
										<li><a href="products-user.jsp">login</a></li>
										<li><a href="products-user.jsp">Brands</a></li>
										<li><a href="products-user.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="products-user.jsp">Sports</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products-user.jsp">New Arrivals</a></li>
										<li><a href="products-user.jsp">Men</a></li>
										<li><a href="products-user.jsp">Women</a></li>
										<li><a href="products-user.jsp">Accessories</a></li>
										<li><a href="products-user.jsp">Kids</a></li>
										<li><a href="products-user.jsp">login</a></li>
										<li><a href="products-user.jsp">Brands</a></li>
										<li><a href="products-user.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="products-user.jsp">Brands</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products-user.jsp">Levis</a></li>
										<li><a href="products-user.jsp">Persol</a></li>
										<li><a href="products-user.jsp">Nike</a></li>
										<li><a href="products-user.jsp">Edwin</a></li>
										<li><a href="products-user.jsp">New Balance</a></li>
										<li><a href="products-user.jsp">Jack & Jones</a></li>
										<li><a href="products-user.jsp">Paul Smith</a></li>
										<li><a href="products-user.jsp">Ray-Ban</a></li>
										<li><a href="products-user.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index-user.jsp">Home</a></li>
					<li class="active">New Products</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-product-->
					
	<div class="product">
		<div class="container">
			<div class="product-main">
				<div class="col-md-9 p-left">
					<div class="product-one">
					<!-- list porduct -->
						<% 
						ProductDaoImpl dao = new ProductDaoImpl();
						List<Product> products = dao.getPart3();
						for (Product p:products){
							
						%>
						
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="single.jsp"> <img src="./images/<%= p.getImage() %>" />
										<div class="mask mask1"><span>Quick View</span></div>
									</a>
									<h4><%= p.getName() %></h4>
									<p><a class="item_add" href="../../Cart?id=<%= p.getId()%>"><i></i> <span class=" item_price">$<%=p.getPrice() %></span></a></p>
								</div>
							</div>
						
						<%} %>
					</div>
					<div style="clear:both; margin-left: 37%;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="products1-user.jsp">Previous</a>
							</li>
							<li class="page-item"><a class="page-link" href="products-user.jsp">1</a></li>
							<li class="page-item"><a class="page-link" href="products1-user.jsp">2</a></li>
							<li class="page-item active"><a class="page-link" href="products2-user.jsp">3</a></li>
							<li class="page-item"><a class="page-link" href="products2-user.jsp"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 p-right single-right">
					<h3>Categories</h3>
					<ul class="product-categories">
						<li><a href="#">Blucher Shoe</a> <span class="count">(14)</span></li>
						<li><a href="#">Clog Shoe</a> <span class="count">(2)</span></li>
						<li><a href="#">Snow Boot Shoe</a> <span class="count">(2)</span></li>
						<li><a href="#">Galesh Shoe</a> <span class="count">(11)</span></li>
						<li><a href="#">pataugas Shoe</a> <span class="count">(3)</span></li>
						<li><a href="#">Jazz Shoe</a> <span class="count">(3)</span></li>
					</ul>
					<h3>Colors</h3>
					<ul class="product-categories">
						<li><a href="#">Green</a> <span class="count">(14)</span></li>
						<li><a href="#">Blue</a> <span class="count">(2)</span></li>
						<li><a href="#">Red</a> <span class="count">(2)</span></li>
						<li><a href="#">Gray</a> <span class="count">(8)</span></li>
						<li><a href="#">Green</a> <span class="count">(11)</span></li>
						<li><a href="#">Yellow</a> <span class="count">(2)</span></li>
					</ul>
					<h3>Sizes</h3>
					<ul class="product-categories">
						<li><a href="#">5.5</a> <span class="count">(14)</span></li>
						<li><a href="#">6</a> <span class="count">(2)</span></li>
						<li><a href="#">6.5</a> <span class="count">(2)</span></li>
						<li><a href="#">7</a> <span class="count">(8)</span></li>
						<li><a href="#">7.5</a> <span class="count">(11)</span></li>
					</ul>
					<h3>Price</h3>
					<ul class="product-categories p1">
						<li><a href="#">600$-700$</a> <span class="count">(14)</span></li>
						<li><a href="#">700$-800$</a> <span class="count">(2)</span></li>
						<li><a href="#">800$-900$</a> <span class="count">(2)</span></li>
						<li><a href="#">900$-1000$</a> <span class="count">(8)</span></li>
						<li><a href="#">1000$-1100$</a> <span class="count">(11)</span></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-product-->
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
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-footer-->
	<!--end-footer-text-->
	<div class="footer-text">
		<div class="container">
			<div class="footer-main">
				<p class="footer-class">Copyright &copy; 2015.Company name All
					rights reserved.</p>
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

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
	</div>
	<!--end-footer-text-->
</body>
</html>