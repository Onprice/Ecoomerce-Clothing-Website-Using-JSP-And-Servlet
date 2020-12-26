<%@page import="com.clothe.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Unique Fabrics</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- countdown -->
<link rel="stylesheet" href="css/jquery.countdown.css" />
<!-- //countdown -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<style></style>
</head>
<body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>
<div class="header">
		<div class="container">
			<div class="w3l_login">
				  <img src="images/logo.jpg">
			</div>
			<div class="w3l_logo">
				<h1 style="font-family:halvetica"><a href="index.jsp">UNIQUE FABRICS<span style="color:orange">For Fashion Lovers</span></a></h1>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<header><div class="navigation" style="margin-top:-40px">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
   <ul class="nav navbar-nav">
<li class="active"><a href="index.jsp" class="act">Home</a></li>	
<!-- Mega Menu -->
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
<ul class="dropdown-menu multi-column columns-3">
    <div class="row">
<div class="col-sm-3">
		<ul class="multi-column-dropdown">
		<h6>Clothing</h6>
	<li><a href="#">Kids<span>Wear</span></a></li>
	<li><a href="Controller?page=kids_5">Kids Wear Below 5 years</a></li>
	<li><a href="Controller?page=kids_10">Kids Wear Above 5 Years</a></li>
	<li><a href="Controller?page=clothing">Kids Sweater</a></li>
											
	</ul>
	</div>
<div class="col-sm-3">
    <ul class="multi-column-dropdown">
	<h6>Women's Wear</h6>
<li><a href="Controller?women">Ethnic Wear</a></li>
<li><a href="Controller?page=woman_western">Western <span>Wear</span></a></li>
   <li><a href="Controller?page=woman_shrugs">Shrugs</a></li>
        <li><a href="Controller?page=woman_party">Party Wear</a></li>
</ul>
</div>
<div class="col-sm-2">
    <ul class="multi-column-dropdown">
<h6>Men's Wear</h6>
<li><a href="Controller?page=men_ethnic">Ethnic Wear</a></li>
<li><a href="Controller?page=mens_cas">Casuals</a></li>
<li><a href="Controller?page=mens_jeans">Jeans</a></li>
<li><a href="Controller?page=mens_formals">Formals</a></li>
		</ul>
	</div>
<div class="col-sm-4">
<div class="w3ls_products_pos">
<h4>50%<i>Off/-</i></h4>
<img src="images/1.jpg" alt=" " class="img-responsive" />
	</div>
	</div>
<div class="clearfix"></div>
</div>
</ul>
	</li>
	<c:choose>
            <c:when test="${session == null}">
	<li><a href="Controller?page=login">Login</a></li>
<li><a href="Controller?page=sign-up">Sign-up</a></li>
	</c:when>
<c:when test="${session != null}">
     <li><a href="Controller?page=logout" style="color: #F24638;">Logout</a></li>
<li><a href="#">My Account(<c:out value="${username }"></c:out>)</a></li>
	</c:when>
	</c:choose>
	<li><a href="Controller?page=showcart">    <img src="images/bag.png" alt="" /> cart(<c:out value="${x}"/>)</a></li>
	</ul>
	</div>
	</nav>
		</div>
	</div>
		<h1>
			
                </h1>
	</header>
        <div class="banner10" id="home1">
		<div class="container">
			<h2></h2>
		</div>
	</div>
                                <div align="center">
	<h1></h1>
	<br/>
<c:choose>

<c:when test="${session != null}">
				
				
				<div class="container" style="margin-top: 60px;margin-bottom: 60px;">
					<h4>Thank you <font color="#6bb1f8"><c:out value="${name }"></c:out></font> for Shopping with us. We received your order and it will be delivered to <font color="#6bb1f8"><c:out value="${address }"></c:out></font> with in 4-5 working days.</h4>
					<h4>Confirmation mail will be sent shortly to <font color="#6bb1f8"><c:out value="${email }"></c:out></font>.</h4>
					
					<br><br>
					<a href="Controller?page=index"><input type="button" value="Continue Shopping" class="btn btn-warning" style="width:100%;padding:8px;font-size:16px;"></a>
				</div>
			
		</c:when>
	
	</c:choose>
 
<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>Contact</h3>
					<ul class="address">
		
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info"> 
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Short Codes</a></li>
						<li><a href="#">FAQ's</a></li>
						<li><a href="#">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info"> 
						<li><a href="#">Dresses</a></li>
						<li><a href="#">Sweaters</a></li>
						<li><a href="#">Shirts</a></li>
						<li><a href="#">Sarees</a></li>
						<li><a href="#">Shorts & Skirts</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info"> 
						<li><a href="#">Summer Store</a></li>
						<li><a href="#">My Cart</a></li>
					</ul>
					<h4>Follow Us</h4>
					<div class="agileits_social_button">
						<ul>
							<li><a href="#" class="facebook"> </a></li>
							<li><a href="#" class="twitter"> </a></li>
							<li><a href="#" class="google"> </a></li>
							<li><a href="#" class="pinterest"> </a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
            <div class="footer-copy">
			<div class="footer-copy1">
				<div class="footer-copy-pos">
					<a href="#home1" class="scroll"><img src="images/arrow.png" alt=" " class="img-responsive" /></a>
				</div>
			</div>
			<div class="container">
				<p>&copy; 2020 Unique Fabrics. All rights reserved |</a></p>
			</div>
		</div>
	</div>
<!-- //footer -->
</body>
</html>