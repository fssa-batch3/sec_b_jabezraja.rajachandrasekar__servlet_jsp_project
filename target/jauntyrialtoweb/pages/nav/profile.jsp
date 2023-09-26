<%@page import="in.fssa.jauntyrialto.entity.UserEntity"%>
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
<!-- SweetAlert CSS For SWAL-->
<link rel="stylesheet"
	href="https://unpkg.com/sweetalert/dist/sweetalert.css">

<!-- SweetAlert JS For SWAL-->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<jsp:include page="/header.jsp"></jsp:include>
<body class="body">
	<div class="headpic">
		<img src="<%=request.getContextPath()%>/assets/images/banner/cart.png" alt="">
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
					<%
					User user = (User) request.getAttribute("user");
					%>
					<p class="enable">
						<a
							href="<%=request.getContextPath()%>/user/edit?id=<%=user.getId()%>"
							style="color: #a37e2b;"
							onclick="showEditConfirmation(); return false;"> <i	class="fas fa-edit"></i>
						</a>
					</p>
				</div>

				<form>
					<div class="pnem-nen">
						<input id="pro_id" type="hidden" name="id"
							value="<%=user.getId()%>"> <input class="cofd"
							type="text" id="user_name" name="name" placeholder="NAME"
							value="${user.name}" readonly required>
					</div>
					<div class="pnem-nen">
						<input class="cofd" type="email" id="user_email"
							value="${user.email}" placeholder="EMAIL" disabled required>
					</div>
					<div class="pnem-nen">
						<input class="cofd" type="text" id="user_phonenumber" name="phone"
							pattern="[0-9]+" readonly maxlength="10" value="${user.phone}"
							placeholder="MOBILE NUMBER" required>
					</div>
					<div class="sacabtn">
						<button class="cbtn" id="can" type="button" onclick="logout()">LOGOUT</button>
					</div>
				</form>
			</section>
		</div>
	</main>
</body>
<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
<script>

/* 	// enable and disable function
	function enableInput(e) {
		document.getElementById("user_name").removeAttribute("readonly");
		document.getElementById("user_phonenumber").removeAttribute("readonly");
	}

	const enable = document.querySelector(".enable");
	enable.addEventListener("click", enableInput); */
	
	function showEditConfirmation() {
        swal({
            title: "Edit Confirmation",
            text: "Do you want to edit?",
            icon: "warning",
            buttons: {
                cancel: "Cancel",
                confirm: {
                    text: "Edit",
                    value: true,
                    visible: true,
                    className: "btn-confirm",
                    closeModal: true
                }
            }
        })
        .then((willEdit) => {
            if (willEdit) {
                window.location.href = "<%=request.getContextPath()%>/user/edit?id=<%=user.getId()%>";
            }
        });
    }


	// Logout
	function logout() {
	  swal({
	    title: "Leaving already? 😢 We'll miss you!",
	    text: "Are you sure you want to log out?",
	    icon: "warning",
	    buttons: ["Cancel", "Logout"],
	    dangerMode: true,
	  }).then((willLogout) => {
	    if (willLogout) {
	      window.location.href = "<%=request.getContextPath()%>/logout";
	    }
	  });
	}
</script>
</html>