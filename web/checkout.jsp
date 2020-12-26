<%@page import="com.clothe.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
	<header><div class="navigation" style="margin-top:-45px">
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
	<div class="banner10" id="home1">
		<div class="container">
			<h2></h2>
		</div>
	</div>
                                <div align="center">
	<h1>Check Out</h1>
	<br/>
	
</div>
<style>
.row-main {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
  width:400px;
 padding-left: 100px;
 width:400px;
}
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;


}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 40%; /* IE10 */
  flex: 40%;
}

.col-75 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  padding: 5px 20px 15px 20px;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 20px;
}

.btn {
  background-color: #2D5296;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 30%;
  align:center;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
  margin-left:350px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row-main {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<div class="row-main">
  <div class="col-15">
    <div class="container" style="background-color: #f2f2f2; border: 1px solid lightgrey;">
      <form action="">
      
                                        <c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
				<c:if test="${i == Product.getId() }">
				<table style="table-layout: fixed;width: 90%;">
				<c:set var="total" value="${total + Product.getPrice() }"></c:set>
						
				
					</tr>
                                </table>
                                                		                  </c:if>
			</c:forEach>
		</c:forEach>
                <c:choose>
   <c:when test="${session == null}">
				<%
				JOptionPane.showMessageDialog(null, "Please Login first", "Info", JOptionPane.INFORMATION_MESSAGE);
				request.getRequestDispatcher("login.jsp").forward(request, response);
				%>
		</c:when>
  </c:choose>
                
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label><i class="fa fa-user"></i> Full Name</label>
            <input type="text" name="firstname" value="${username }">
            <label><i class="fa fa-envelope"></i> Email</label>
            <input type="text" name="email" value="${email }">
            <label><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" value="${address }">
            <label><i class="fa fa-institution"></i> City</label>
            <input type="text" name="city" placeholder="Enter Your City Name" required="">

            <div class="row">
              <div class="col-50">
                <label>State</label>
                <input type="text" name="state" placeholder="NY" required="">
              </div>
              <div class="col-50">
                <label>Zip</label>
                <input type="text" name="zip" placeholder="10001" required="">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label>Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
             <label>Total Amount</label>
            <input type="text" name="cardname" value="${ total}">
            <label>Name on Card</label>
            <input type="text" name="cardname" placeholder="John More Doe" required="">
            <label>Credit card number</label>
            <input type="text" name="cardnumber" placeholder="1111-2222-3333-4444" required="">
            <label>Exp Month</label>
            <input type="text" name="expmonth" placeholder="September" required="">
            <div class="row">
              <div class="col-50">
                <label>Exp Year</label>
                <input type="text"  name="expyear" placeholder="2018" required="">
              </div>
              <div class="col-50">
                <label>CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" required="">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
       <a href="Controller?page=success"><input type="" value="Continue to Checkout" class="btn">
      </form>
    </div>
  </div>
           
  <div class="col-25">
    </div>
</div>

</body>
</html>
