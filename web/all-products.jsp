<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unique Fabrics</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Women's Fashion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
											<li><a href="Controller?page=women">Ethnic Wear</a></li>
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
	
	<div class="tiazon-content">
 	<div class="container">
 		<div class="row">
 				<div class="col-md-4"><!-- left -->
 						<div class="list-group"><!-- products -->
						  <a href="Controller?page=all-products" class="list-group-item" style="background:  #d6d4d3;">
						    All Products
						  </a>
						  <a href="Controller?page=mobiles" class="list-group-item">Mobiles</a>
						  <a href="Controller?page=laptops" class="list-group-item">Laptops</a>
						  <a href="Controller?page=clothing" class="list-group-item">Clothing</a>
						  <a href="Controller?page=women" class="list-group-item">Home Decor</a>
						</div> 
 				</div><!-- left -->

 				<div class="col-md-8"><!-- right -->
 					<h2 style="text-align: center;">All Products</h2><br>
 					
 					<h5>Sort by(Price):</h5>
					<form action="Controller" method="get" style="border: none;margin:0px;padding: 0px;margin-bottom: 20px;">
					<input type="hidden" name="page" value="price-sort">
					<input type="hidden" name="action" value="all-products">
					<select name="sort">
					<option value="low-to-high">Low to high</option>
					<option value="high-to-high">high to low</option>
					</select>
					<input type="submit" value="Go!">
					</form>
 					
 					<c:forEach items="${list }" var="product">
 						
 							
		 					<div class="col-md-4">
		 						<img src="${product.getImage() }" class="img-responsive" ><br>
		 						<div class="text-center"><a style="color: black;"><c:out value="${product.getName() }"></c:out></a></div>	
		 						<p style="text-align: center;"> $ <c:out value="${ product.getPrice() }"></c:out></p>
		 						<div class="text-center">  <a class="btn btn-primary" href="Controller?page=addtocart&action=allproducts&id=<c:out value="${product.getId()}"/>">Add to Cart</a> </div><br>
		 					</div>
 							
 						
 						
 					</c:forEach>
 					
 				</div>
 			</div>
 		</div>
 	</div>
</body>
</html>