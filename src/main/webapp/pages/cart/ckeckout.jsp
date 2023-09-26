<%@ page import="java.util.*"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="/header.jsp"></jsp:include>
</head>
<body>
	<div class="headpic">
		<img src="<%=request.getContextPath()%>/assets/images/banner/cart.png"
			alt="">
	</div>
	<div class="head1">CHECKOUT</div>
	<div class="head2">PROCESS</div>
	<main>

		<div class="content">
			<div class="leftside">
				<div class="log">
					<span class="n1"> <img
						src="<%=request.getContextPath()%>/assets/images/gif/truck-delivery.gif"
						alt="" height="21px">
					</span>
					<h2>SHIPPING ADDRESS</h2>
				</div>
				<div>
					<form class="cof">
						<div class="cot">
							<%
							User user = (User) request.getAttribute("user");
							%>
							<input id="pro_id" type="hidden" name="id"
								value="<%=user.getId()%>"> <input class="cofd"
								id="cuname" type="text" placeholder="NAME" required
								value="${user.name}"> <input class="cofd" id="cuno"
								style="margin-left: 20px" type="text" placeholder="MOBIL NUMBER"
								required value="${user.phone}">
						</div>
						<div class="cot">
							<input class="cofd" id="cupin" type="text" placeholder="PIN CODE"
								required value="630007"> <input class="cofd" id="culand"
								style="margin-left: 20px" type="text" placeholder="LANDMARK"
								required value="Backside to DHARPHY GYM">
						</div>
						<div class="cot">
							<input class="coft" id="fon" type="text" placeholder="ADDRESS"
								value="(Ground Floor)No. 83, Perfect Parkview, Palaniappa Nagar, 2nd street, Gowriwakkam, Chennai 600073"
								required>
						</div>
						<div class="cot">
							<input class="cofd" type="text" placeholder="CITY/DISTRICT/TOWN"
								required value="CHENNAI"> <input id="custate"
								class="cofd" type="text" style="margin-left: 20px"
								placeholder="STATE" Value="TamilNadu" required>
						</div>
						<div class="cobtn">
							<a href="./payment.html" class="sd">CHECKOUT</a> <a
								href="<%=request.getContextPath()%>/index" class="ca">CANCEL</a>
						</div>
						<%
						// Retrieve the product ID and quantity from the request
						String productId = request.getParameter("id");
						String quantity = request.getParameter("qty");

						// Do something with the retrieved values, for example, print them
						out.println("Product ID: " + productId);
						out.println("Quantity: " + quantity);
						%>
					</form>
				</div>

			</div>

			<div class="rightside">
				<h4>ORDER SUMMARY</h4>
				<table class="details">
					<caption></caption>
					<tr>
						<td>TOTAL ITEM</td>
						<td id="rf">1</td>
					</tr>
					<tr>
						<td>TOTAL AMOUNT</td>
						<td id="rf">₹2516</td>
					</tr>
				</table>
			</div>

		</div>
	</main>
	<%-- 	<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
 --%>
</body>
</html>