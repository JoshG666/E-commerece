
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Shape an E-Commerce online Shopping Category Flat
	Bootstarp responsive Website Template| Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Shape Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="<c:url value="/resources/web/css/bootstrap.css"/>" rel="stylesheet" type="text/css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/web/js/simpleCart.min.js"/>">
	
</script>
<script src="<c:url value="/resources/web/js/jquery.min.js"/>"></script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/web/css/style.css"/>" rel="stylesheet" type="text/css" />
<!-- Custom Theme files -->
<!--webfont-->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet' type='text/css'>
<script src="<c:url value="/resources/web/js/jquery.easydropdown.js"/>"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="<c:url value="/resources/web/js/jquery.magnific-popup.js"/>"> type="text/javascript"></script>
<link href="<c:url value="/resources/web/css/magnific-popup.css" />"
	rel="stylesheet" type="text/css">
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});
	});
</script>
<!----details-product-slider--->
</head>
<body>
   <div class="header">
	<div class="container">
		<div class="header-top">
      		 <div class="logo">
				<a href="index.html"><img src=src="<c:url value="/resources/web/images/logo.png"/>" alt=""/></a>
			 </div>
		   <div class="header_right">
			 <ul class="social">
				<li><a href=""> <i class="fb"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
				<li><a href=""><i class="utube"> </i> </a></li>
				<li><a href=""><i class="pin"> </i> </a></li>
				<li><a href=""><i class="instagram"> </i> </a></li>
			 </ul>
		    <div class="lang_list">
			  <select tabindex="4" class="dropdown">
				<option value="" class="label" value="">En</option>
				<option value="1">English</option>
				<option value="2">French</option>
				<option value="3">German</option>
			  </select>
   			</div>
			<div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
		 </div>  
		 <div class="apparel_box">
			<ul class="login">
				<li class="login_text"><a href="login">Login</a></li>
				<li class="wish"><a href="checkout">Wish List</a></li>
				<div class='clearfix'></div>
		    </ul>
		    <ul class="quick_access">
				<li class="view_cart"><a href="checkout">View Cart</a></li>
				<li class="check"><a href="checkout">Checkout</a></li>
				<div class='clearfix'></div>
		     </ul>
			<div class="search">
			   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			   <input type="submit" value="">
			</div>
		  </div>
		</div>
    </div>
   <div class="main">
	  <div class="content_box">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="menu_box">
				   	  	<h3 class="menu_head">Menu</h3>
				   	     <ul class="nav">
					   	  	<li><a href="about">About</a></li>
					   	  	
					   	  	<li><a href="apparel.html">Sale</a></li>
					   	  	<li><a href="apparel.html">Brands</a></li>
					   	  	
					   	  	<li><a href="contact">Contact</a></li>
					   	 </ul>
			   	    </div>
			   	 </div>
			  <div class="col-md-9">
			    <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index" title="Go to Home Page">Home</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="home">&nbsp;
                        &nbsp;Account
                        <span>&gt;</span>&nbsp;
                    </li>
                    <li class="women">
                       Login
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <div class="account_grid">
			   <div class="col-md-6 login-left">
			  	 <h3>NEW CUSTOMERS</h3>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
				 <a class="acount-btn" href="register">Create an Account</a>
			   </div>
			   <div class="col-md-6 login-right">
			  	<h3>REGISTERED CUSTOMERS</h3>
				<p>If you have an account with us, please log in.</p>
				
				
				<form name="login" 
				action="<c:url value='/j_spring_security_check' />" method="post" >
				 <div class="error" style="color: #ff0000;">${usernameError}${emailError}${userPhoneError }</div>
<c:if test="${not empty message}">
<div class="error" style="color: #ff0000;">${message}${usernameError}</div>
</c:if>
				  <div>
					<span>User name<label>*</label></span>
					 <input name="username" type="text"/>
					 	
					
				  </div>
				  <div>
					<span>Password<label>*</label></span>
					 <input name="password" type="password"/>
					 	
					
				  </div>
				  <a class="forgot" href="#">Forgot Your Password?</a>
				  <input type="submit" value="Login">
				  <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
			 </div>
		   </div>
		  </div>
	     </div>
	    </div>
	    </div>
		<div class="container">
		  <div class="brands">
			 <ul class="brand_icons">
				<li><img src="<c:url value="/resources/web/images/icon1.jpg"/>" class="img-responsive" alt="" /></li>
					<li><img src="<c:url value="/resources/web/images/icon2.jpg"/>" class="img-responsive" alt="" /></li>
					<li><img src="<c:url value="/resources/web/images/icon3.jpg"/>" class="img-responsive" alt="" /></li>
					<li><img src="<c:url value="/resources/web/images/icon4.jpg"/>" class="img-responsive" alt="" /></li>
					<li><img src="<c:url value="/resources/web/images/icon5.jpg"/>" class="img-responsive" alt="" /></li>
					<li><img src="<c:url value="/resources/web/images/icon6.jpg"/>" class="img-responsive" alt="" /></li>
					<li class="last"><img src="<c:url value="/resources/web/images/icon7.jpg"/>" class="img-responsive" alt="" /></li>
			 </ul>
		   </div>
	    </div>
	    <div class="container">
	      <div class="instagram_top">
	      	<div class="instagram text-center">
				<h3><i class="insta_icon"> </i> Instagram feed:&nbsp;<span class="small">#Surfhouse</span></h3>
			</div>
	        <ul class="instagram_grid">
			 <li><a class="popup-with-zoom-anim" href="#small-dialog1"><img
							src="<c:url value="/resources/web/images/i1.jpg"/>" class="img-responsive" alt="" /></a></li>
					<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img
							src="<c:url value="/resources/web/images/i2.jpg"/>" class="img-responsive" alt="" /></a></li>
					<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img
							src="<c:url value="/resources/web/images/i3.jpg"/>" class="img-responsive" alt="" /></a></li>
					<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img
							src="<c:url value="/resources/web/images/i4.jpg"/>" class="img-responsive" alt="" /></a></li>
					<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img
							src="<c:url value="/resources/web/images/i5.jpg"/>" class="img-responsive" alt="" /></a></li>
					<li class="last_instagram"><a class="popup-with-zoom-anim"
						href="#small-dialog1"><img src="<c:url value="/resources/web/images/i6.jpg"/>"
							class="img-responsive" alt="" /></a></li>
			  <div class="clearfix"></div>
			  <div id="small-dialog1" class="mfp-hide">
				<div class="pop_up">
					<h4>A Sample Photo Stream</h4>
					<img src="<c:url value="/resources/web/images/i_zoom.jpg"/>" class="img-responsive" alt=""/>
				</div>
			  </div>
			</ul>
		  </div>
	      <ul class="footer_social">
			<li><a href="#"> <i class="fb"> </i> </a></li>
			<li><a href="#"><i class="tw"> </i> </a></li>
			<li><a href="#"><i class="pin"> </i> </a></li>
			<div class="clearfix"></div>
		   </ul>
	    </div>
        <div class="footer">
			<div class="container">
				<div class="footer-grid">
					<h3>Category</h3>
					<ul class="list1">
					  <li><a href="index">Home</a></li>
					  <li><a href="about">About us</a></li>
					 
					  <li><a href="contact">Contact</a></li>
				    </ul>
				</div>
				
				
				  <div class="footer-grid">
					<h3>Newsletter</h3>
					<p class="footer_desc">Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p>
					<div class="search_footer">
			          <input type="text" class="text" value="Insert Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Insert Email';}">
			          <input type="submit" value="Submit">
			        </div>
			        <img src="images/payment.png" class="img-responsive" alt=""/>
				 </div>
				 <div class="footer-grid footer-grid_last">
					<h3>About Us</h3>
					<p class="footer_desc">Diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,.</p>
                    <p class="f_text">Phone:  &nbsp;&nbsp;&nbsp;00-250-2131</p>
                    <p class="email">Email: &nbsp;&nbsp;&nbsp;<a href="#">info(at)Shape.com</a></p>		
                 </div>
				 <div class="clearfix"> </div>
			</div>
		</div>
        <div class="footer_bottom">
        	<div class="container">
        		<div class="copy">
				   <p>Copyright &copy; 2015 Shape. All Rights Reserved . Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			    </div>
        	</div>
        </div>
</body>
</html>		