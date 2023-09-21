<%@page import="in.fssa.jauntyrialto.model.User"%>
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
<body class="body">



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
				<div class="proedi">
					<h2>PROFILE</h2>
					<p class="enable">
						<i class="fas fa-edit"></i>
					</p>
				</div>
				<%
				User user = (User) request.getAttribute("user");
				%>
				<form onsubmit="eprofile_details(event)">
					<div class="pnem-nen">
						<input class="cofd" type="text" id="user_name" placeholder="NAME"
							value="${user.name}" readonly required>
					</div>
					<div class="pnem-nen">
						<input class="cofd" type="email" id="user_email"
							value="${user.email}" placeholder="EMAIL" disabled required>
					</div>
					<div class="pnem-nen">
						<input class="cofd" type="text" id="user_phonenumber"
							pattern="[0-9]+" readonly maxlength="10" value="${user.phone}"
							placeholder="MOBILE NUMBER" required>
					</div>
					<div class="sacabtn">
						<button class="cbtn" id="sav" type="submit">SAVE</button>
						<button class="cbtn" id="can" type="button" onclick="logout()">LOGOUT</button>
					</div>
				</form>
			</section>
		</div>
	</main>
</body>
<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
<script>
	//editfunction
	function eprofile_details(e) {
		customer_data.name = document.getElementById("user_name").value;
		customer_data.phonenumber = document.getElementById("user_phonenumber").value;

		localStorage.setItem("user_list", JSON.stringify(user_list));
		window.location.href = "#";
	}

	// enable and disable function
	function enableInput(e) {
		document.getElementById("user_name").removeAttribute("readonly");
		document.getElementById("user_phonenumber").removeAttribute("readonly");
	}

	const enable = document.querySelector(".enable");
	enable.addEventListener("click", enableInput);

	function logout() {
		if (confirm("Are your sure")) {
			localStorage.removeItem("user_data");
			window.location.href = "../login/login.html";
		} else {
			window.location.href = "#";
		}
	}
</script>
</html>