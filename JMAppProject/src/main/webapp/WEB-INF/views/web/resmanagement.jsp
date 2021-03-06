<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page  contentType="text/html;charset=UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Food House a Hotels and Restaurants Category Flat Bootstarp responsive Website Template |About :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/bootstrap-3.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/style.css" />

	<%-- <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' /> --%>
	<link href='http://fonts.googleapis.com/css?family=Niconne|Playball|Open+Sans:300italic,400italic,600italic,400,300,600,700' rel='stylesheet' type='text/css'>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/bootstrap-3.3/js/bootstrap.min.js"></script>
	<%-- <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/prefixfree.min.js"></script> --%>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/jquery-ui.min.js"></script>

</head>
<body>
	<!--start-header-->
	<div id="home" class="header">
			<!--logo-->
			<div class="header-top">
			<div class="container">
		<!--top-nav-->
			<div class="top-nav">
						<span class="menu two"> </span>
					<ul>
						<li><a href="/ourapp/home">Home</a></li> 
						<li><a href="/ourapp/web/memberindex">회원관리</a></li>
						<li><a class="active" href="/ourapp/web/resmanagement">가맹점관리</a></li> 
						<li><a href="/ourapp/web/ordermanagement">주문관리</a></li> 
						<li><a href="/ourapp/web/restaurantmanege">매장관리</a></li> 
						<li><a href="/ourapp/web/menumanagement">메뉴관리</a></li> 
						<li><a href="/ourapp/web/contact">오시는길</a></li>
						<li class="lost"><a href="/ourapp/member/login">로그인</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
		<!-- script-for-menu -->
				<script>
					$(document).ready(function(){
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle(200);
						});
					});
				</script>
		</div>
	<!--End-top-nav-script-->
				<div class="clearfix"> </div>
		</div>
		<div class="head-bg">
					<div class="logo three">
							<a href="/ourapp/home"><h1>FOOD<span>House</span></h1></a>
					</div>
		</div>
		<!--/header-->
	</div>
		<div class="menu-section">
		     <div class="container">
			      <h2>Restaurant Management</h2>
				  <p>가맹점 관리 페이지 입니다.</p><br/>
				  <p>관리자 로그인 후 이용 바랍니다.</p> 
				     
				       <div class="menu-grids">
					        <div class="col-md-4 menu-grid" >
                              <a href="/ourapp/restaurant/list"> <img src="/ourapp/resources/img/g1.jpg" class="img-responsive" alt="" /></a>
									<div class="price">
                                    <span style="font-size:30pt">List</span>
                                </div>
								<p>가맹점 목록 열람 및 수정</p>

							</div>
							
							
							<div class="col-md-4 menu-grid">
								<a href="/ourapp/restaurant/add"> <img src="/ourapp/resources/img/g2.jpg" class="img-responsive" alt="" /></a>
								<div class="price">
                                    <span style="font-size:30pt">Register</span>
                                </div>
								<p>가맹점 추가</p>

							</div>
							<div class="col-md-4 menu-grid">
								<a href="/ourapp/restaurant/delete"> <img src="/ourapp/resources/img/g4.jpg" class="img-responsive" alt="" /></a>
								<div class="price">
                                     <span style="font-size:30pt">Delete</span>
                                </div>
								<p>가맹점 삭제</p>

							</div>
							
					   </div>
				 </div>
			 </div>
		</div>
	
<!--/start-footer-->
	<div class= "footer">
		 <div class="container">                                                   
			<div class="col-md-3 footer-grid">
					<div class="logo two">
						<a href="/ourapp/home"><h3>FOOD<span>House</span></h3></a>
					</div>
				</div>
				<div class=" col-md-3 footer-grid footer-grid2">
					<div class="bottom-nav">
					       <h4>LEARN</h4>
							<ul>
							<li><a class="active" href="/ourapp/home">Home</a></li> 
							<li><a href="/ourapp/web/memberindex">회원관리</a></li>
							<li><a href="/ourapp/web/resmanagement">가맹점관리</a></li> 
							<li><a href="/ourapp/web/ordermanagement">주문관리</a></li> 
							<li><a href="/ourapp/web/restaurantmanege">매장관리</a></li>
							<li><a href="/ourapp/web/menumanagement">메뉴관리</a></li>
							<li><a href="/ourapp/web/contact">오시는길</a></li>
							<div class="clearfix"> </div>
						</ul>
					 </div>
				</div>
				<div class=" col-md-3 footer-grid">
					<div class="Office Address">
				        <h4>ADDRESS</h4>
				       <ul class="bottom-icons">
							<li><a class="home" href="#"><span> </span></a>Lorem ipsy street,Newyork</li>
							<li><a class="mail" href="mailto:info@example.com"><span> </span>123 int@example.com</a></li>
							<li><a class="mbl" href="#"><span> </span></a>+91 000 00 00 00 0</li>	
							<div class="clearfix"> </div>	
						</ul>
					 </div>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>SUPPORT WITH</h4>
						<div class="support">
						   <input type="text" class="text" value="Enter email to reset it" onfocus="this.value = '';" onblur="if (this.value == 'Enter email to reset it') {this.value = 'Enter email to reset it';}">
						<input type="submit" value="SUBMIT" class="botton">
						     						     <p>Lorem ipsum dolor sit amet conse aliqua. Ut enim ad minim veniam Lorem ctetur adipisicing .</p>
						</div>
				    </div>
			    	<div class="clearfix"> </div>	
				</div>
			</div>
			<div class="copy-right">
			  <div class="container">
					 <p>Copyright &copy; 2015 All Rights Reserved Design by <a href="http://w3layouts.com/">W3layouts</a> </p>
			   </div>	
			   
			
			</div>	
			<!--start-smoth-scrolling-->
			<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							<!--start-smooth-scrolling-->
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

</body>
</html>