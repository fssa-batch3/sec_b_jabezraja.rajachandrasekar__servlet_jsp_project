<%@page import="java.util.List"%>
<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="in.fssa.jauntyrialto.entity.OrderEntity"%>
<%@page import="java.util.Set"%>
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
<style>
.sti {
	font-weight: 400;
	color: #a37e2b;
	font-size: 18px;
	letter-spacing: 0.8px;
	font-family: 'Philosopher', serif;
	letter-spacing: 0.8px;
}

.obtn {
	background-color: #900c19;
	height: 33px;
	line-height: 4px;
	border: none;
	color: #f2c452;
	cursor: pointer;
}
</style>
<jsp:include page="/header.jsp"></jsp:include>
<body>
	<div class="headpic">
		<img src="<%=request.getContextPath()%>/assets/images/banner/cart.png"
			alt="">
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

				<%
				Set<OrderEntity> listOfOrders = (Set<OrderEntity>) request.getAttribute("orderList");
				List<ProductEntity> listOfProducts = (List<ProductEntity>) request.getAttribute("productList");
				%>

				<table style="border: 1px solid #e3d1a9;">
					<thead>
						<tr id="ordimg">
							<th class="sti">Image</th>
							<th class="sti">Product Name</th>
							<!-- <th class="sti">More</th> -->
							<th class="sti">Qty</th>
							<th class="sti">Price(₹)</th>
							<th class="sti">Address</th>
							<th class="sti">Status</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (int i = 0; i < listOfOrders.size(); i++) {
							OrderEntity order = (OrderEntity) listOfOrders.toArray()[i];
							ProductEntity product = listOfProducts.get(i);
						%>
						<tr>
							<td><img src="<%=product.getMainImg()%>" alt=""
								style="width: 200px; height: 120px;"></td>
							<td style="text-align: center;"><%=product.getName()%></td>
							<!-- 				<td style="padding: 1pc;">
								<button class="obtn" type="button" onclick="logout()"
									style="width: 9pc;">View</button>
							</td> -->
							<td style="padding: 1pc;"><%=order.getQty()%></td>
							<td><%=order.getTotal()%></td>
							<td style="padding: 1pc;"><%=order.getAddress()%></td>
							<td style="padding: 1pc;"><%=order.getOrderStatus()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>

			</section>
		</div>
	</main>
</body>
<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
</html>
