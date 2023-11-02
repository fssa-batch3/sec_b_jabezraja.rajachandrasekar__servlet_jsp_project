<%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@page import="in.fssa.jauntyrialto.service.ProductService"%>
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
			alt="" style="margin-top: 6px;">
	</div>
	<div class="head1">CHECKOUT</div>
	<div class="head2">PROCESS</div>
	<main>

		<div class="content">
			<div class="leftside">
				<div class="log">
                        <span class="n1">1</span>
                        <h2>PRODUCT</h2>
                    </div>

                    <table class="codproduct-table">
                        <caption></caption>
                        <tr>
                            <th>ITEMS</th>
                            <th>DETAILS</th>
                            <th>PRICE</th>
                            <th>SUBTOTAL</th>
                        </tr>
                        <tr>
                        	<%
							String pdtIdParam = request.getParameter("id");
							if (pdtIdParam != null && !pdtIdParam.isEmpty()) {
								int id = Integer.parseInt(pdtIdParam);
								ProductService productService = new ProductService();
								Product pdt = productService.findProductByProductId(id);
								if (pdt != null) {
							%>
                            <td>
                                <img src="<%=pdt.getMainImg()%>" width="150px" height="130px" alt="This is a image of <%=pdt.getName()%>">
                            </td>
                            <td>
                                <p><%=pdt.getName()%></p>
                                <p>Qty: ${quantity}</p>
                            </td>          
                            <td>₹<%=pdt.getPrice()%></td>
                            <td>₹ <span id="totalPrice"></span></td>
                        </tr>
                    </table>
				<div class="log">
					<span class="n1"> <img
						src="<%=request.getContextPath()%>/assets/images/gif/truck-delivery.gif"
						alt="" height="21px">
					</span>
					<h2>SHIPPING ADDRESS</h2>
				</div>
				<div>
							<%
								User user = (User) request.getAttribute("user");
							%>
							
							<%
								String productId = request.getParameter("id");
							%>
					<form class="cof" action="<%=request.getContextPath()%>/order" method="post">
						<div class="cot">

							<input id="pro_id" type="hidden" name="userId" value="<%=user.getId()%>">
							<input class="cofd" id="cuname" type="text" name="userName" placeholder="NAME" required value="${user.name}">
							<input class="cofd" id="cuno"	style="margin-left: 20px" type="text" name="userNo" placeholder="MOBIL NUMBER" required value="${user.phone}">
							<input type="hidden" name="qty" value="${quantity}">
							<input type="hidden" name="total" id="grandTotal" value="">
						</div>
						<div class="cot">
						
							<input type="hidden" name="productId" value="<%=productId%>">
							<input class="cofd" id="cupin" type="text" name="pin" placeholder="PIN CODE" required value="630007"> 
							<input class="cofd" id="culand" style="margin-left: 20px" type="text" name="landmark" placeholder="LANDMARK" required value="Backside to DHARPHY GYM">
						</div>
						<div class="cot">
							<input class="coft" id="fon" type="text" placeholder="ADDRESS" name="address" value="(Ground Floor)No. 83, Perfect Parkview, Palaniappa Nagar, 2nd street, Gowriwakkam, Chennai 600073" required>
						</div>
						<div class="cot">
							<input class="cofd" type="text" placeholder="CITY/DISTRICT/TOWN" required name="add" value="CHENNAI"> 
							<input id="custate" class="cofd" type="text" style="margin-left: 20px" placeholder="STATE" name="state" Value="TamilNadu" required>
						</div>
						<div class="cobtn">
							 <button type="submit" class="sd">CHECKOUT</button>
    						 <a href="<%=request.getContextPath()%>/index" class="ca">CANCEL</a>
						</div>

					</form>
				</div>

			</div>

			<div class="rightside">
				<h4>ORDER SUMMARY</h4>
				<table class="details">
					<caption></caption>
					<tr>
						<td>TOTAL ITEM</td>
						<td id="rf">${quantity}</td>
					</tr>
					<tr>
						<td>SHIPPING</td>
						<td id="rf">₹15</td>
					</tr>
					<tr>
						<td>TOTAL AMOUNT</td>
						<td>₹<span id="finalTotal"></span></td>
					</tr>
				</table>
			</div>

		</div>
	</main>
	 	<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
	 	 <script>
			const quantity = ${quantity};
			const productPrice = <%=pdt.getPrice()%>;
			
			const totalPrice = quantity * productPrice;
			
			document.getElementById("totalPrice").innerText = totalPrice.toFixed(2);
			
			let tp = totalPrice + 15;
			document.getElementById("grandTotal").value = tp.toFixed(2);
			document.getElementById("finalTotal").innerText = tp.toFixed(2);
			
			

		</script>
	<%
			}
		}
	%>
</body>
</html>