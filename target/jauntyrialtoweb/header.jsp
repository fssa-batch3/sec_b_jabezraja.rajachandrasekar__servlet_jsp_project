<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/style.css" />
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>

	<%
	String loggedEmail = (String) session.getAttribute("loggedEmail");
	if (loggedEmail == null) {
	%>
	<header id="hed">
		<div id="hf" class="header-left">
			<a href="<%=request.getContextPath()%>/index.jsp">JAUNTY</a>
			<div class="header-left-p">
				<p>
					<a href="<%=request.getContextPath()%>/index.jsp"> RIALTO</a>
				</p>
			</div>
		</div>
		<div class="login">
			<a href="<%=request.getContextPath()%>/pages/login/signUp.jsp" class="login_btn">SignUp</a> 
			<a href="<%=request.getContextPath()%>/pages/login/login.jsp" class="more_lan">Login</a>
		</div>
	</header>
	<%
	} else {
	%>
	<header id="hed">
		<div class="header-left">
			<a href="<%=request.getContextPath()%>/index.jsp">JAUNTY</a>
			<div class="header-left-p">
				<p>
					<a href="<%=request.getContextPath()%>/index.jsp"> RIALTO</a>
				</p>
			</div>
		</div>

		<div class="header-center">
			<input class="header-center-input" type="text"
				placeholder="search for products"> <i
				class="fa-solid fa-magnifying-glass"></i>
		</div>

		<!-- Login Button -->

		<div class="login">
			<p class="login_btn">My Portal</p>
			<div class="login_dropdown none">
				<ul class="login_dropdown_list">
					<li class="login_drop_li">
						<i class="fa-solid fa-user"></i>
						<a href="<%=request.getContextPath()%>/profile">My Profile</a>
					</li>
					<li class="login_drop_li">
						<i class="fa-solid fa-bag-shopping"></i>
						<a href="<%=request.getContextPath()%>/pages/nav/order.jsp">Order</a>
					</li>
				</ul>
			</div>
		</div>

		<!-- More details -->

		<div class="more">
			<p class="more_lan">More</p>
			<div class="more_dropdown none">
				<ul class="more_dropdown_list">
					<li class="login_drop_li">
						<i class="more-icon fa fa-shopping-basket"></i>
						<a href="<%=request.getContextPath()%>/pages/admin/adm_home.jsp">Sell on JR</a>
					</li>
					<li class="login_drop_li">
						<i class="more-icon fa fa-download"></i>
						<a href="<%=request.getContextPath()%>/logout">Download App</a>
					</li>
				</ul>
			</div>
		</div>

		<!-- Cart details -->

		<span class="cart_lan">
			<a href="pages/cart/cart.html">
				<i class="fa-solid fa-cart-shopping"></i>
			</a>
		</span>
	</header>
	<%
	}
	%>
</body>
</html>