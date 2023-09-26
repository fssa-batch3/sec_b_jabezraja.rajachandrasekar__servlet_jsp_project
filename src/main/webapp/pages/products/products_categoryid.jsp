<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@page import="in.fssa.jauntyrialto.service.ProductService"%>
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
<body id="mainco">
	<%
	String pdtIdParam = request.getParameter("id");
	if (pdtIdParam != null && !pdtIdParam.isEmpty()) {
		int id = Integer.parseInt(pdtIdParam);
		ProductService productService = new ProductService();
		Product pdt = productService.findProductByProductId(id);
		if (pdt != null) {
	%>
	<%
	Set<ProductEntity> listOfProducts = (Set<ProductEntity>) request.getAttribute("productList");
	%>
	<section>
		<div class="cardvd">
			<div class="common-headingv">
				<div class="common-heading-leftv">
					<i class="fa-solid fa-timer"></i>
				</div>
			</div>
			<div class="common-row-col-dealsv">
				<%
				for (ProductEntity product : listOfProducts) {
				%>
				<div class="common-col">
					<a href="<%=request.getContextPath()%>/userproductdetail?id=<%=product.getId()%>"><img
						class="product-img" src="<%=product.getMainImg()%>"
						alt="<%=product.getName()%>"></a>
					<h3 class="product-title"><%=product.getName()%></h3>
					<h6 class="price">₹<%=product.getPrice()%></h6>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</section>
	<%
	}
	}
	%>
	<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
</body>
</html>
