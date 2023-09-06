<%@page import="in.fssa.jauntyrialto.service.ProductService"%>
<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Detail</title>
<jsp:include page="header.jsp"></jsp:include>
<style>
* {
	margin: 0%;
	padding: 0%;
	box-sizing: border-box;
	font-family: 'Philosopher', serif;
}

.manico {
	background-color: #fffbf2;
}

body {
	font-family: Arial, sans-serif;
	margin-top: 0;
	padding: 0;
}

main {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	margin-top: 16em;
}

.details {
	display: inline-table;
	width: 20pc;
	border-collapse: collapse;
}

.left {
	/* Add your styles for the left side here */
	
}

.right {
	/* Add your styles for the right side here */
	
}

h2 {
	font-size: 24px;
	color: #333;
}

#rupee {
	font-size: 18px;
	color: #333;
}

#inc {
	font-size: 14px;
	color: #777;
}

.addbuy {
	margin-top: 20px;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #900c19;
	color: #f2c452;
	border-radius: 5px;
	font-family: 'Philosopher', serif;
	font-size: 13px;
	text-decoration: none;
}

.des {
	font-size: 20px;
	color: #333;
	margin-top: 20px;
}

.desbox {
	background-color: #f9f9f9;
	padding: 20px;
	border-radius: 5px;
}

#dis {
	font-size: 16px;
	color: #333;
}
</style>

</head>
<body class="manico">

	<%
	String pdtIdParam = request.getParameter("id");
	if (pdtIdParam != null && !pdtIdParam.isEmpty()) {
		int id = Integer.parseInt(pdtIdParam);
		ProductService productService = new ProductService();
		Product pdt = productService.findProductByProductId(id);
		if (pdt != null) {
	%>

	<main>
		<div class="detail">
			<div class="left">
				<!-- You can add the product image here if you have one -->
				<!-- <div class="image">
                <img src="../../assets/images/products/cr1boe1.jpg" alt="Product Image" height="450px" width="400px" />
            </div> -->
				<!-- Sub-images can be added here if needed -->
			</div>
			<div class="right">
				<h2 id="ph"><%=pdt.getName()%></h2>
				<p id="rupee">
					₹<%=pdt.getPrice()%></p>
				<small id="inc">Inclusive of all taxes</small>
				<!-- Add to cart or Buy Now button can be added here -->
				<div class="addbuy">
					<a href="#" class="button edit">BUY NOW</a>
				</div>
				<div class="des">DESCRIPTION</div>
				<div class="desbox">
					<p id="dis"><%=pdt.getDescription()%></p>
				</div>
			</div>
		</div>
	</main>


	<%
	}
	}
	%>

</body>
</html>