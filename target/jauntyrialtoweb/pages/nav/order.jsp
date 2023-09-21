<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Shopping Site</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/images/logo4.jpg"
	type="image/x-icon">
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body>
	<div class="headpic">
		<img src="../../assets/images/banner/cart.png" alt="">
	</div>
	<div class="head1">MY ACCOUNT</div>
	<div class="head2">DETAILS</div>
	<div id="ph5">
		<h5>From your My Account you have the ability to view your recent
			account activity and update your account information.</h5>
	</div>
	<main id="powedm">
		<div class="powed">
			<aside class="pow">
				<ul>
					<li class="powa"><a
						href="<%=request.getContextPath()%>/pages/nav/profile.jsp">PROFILE</a></li>
					<li class="powa"><a
						href="<%=request.getContextPath()%>/pages/nav/order.jsp">ORDERS</a></li>
				</ul>
			</aside>
			<section class="pnem">
				<h2>ORDERS</h2>

				<div id="" class="ordmd"></div>
			</section>
		</div>
	</main>
</body>
<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
</html>