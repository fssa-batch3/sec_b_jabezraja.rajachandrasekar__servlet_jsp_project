<%@page import="in.fssa.jauntyrialto.service.ProductService"%>
<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	<main>
		<div class="detail">
			<div class="left">
				<div class="image">
					<img src="<%=pdt.getMainImg()%>"
						alt="boAt BassHeads 950v2 wired Over Ear Headphones (Warm Grey)"
						height="450px" width="400px" id="img_of_product" />
				</div>
				<div class="subi">
					<div class="sub-images">
						<img src="<%=pdt.getMainImg()%>"
							alt="boAt BassHeads 950v2 wired Over Ear Headphones (Warm Grey)"
							onclick="handleSubImageClick('<%=pdt.getMainImg()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg1()%>" alt="40mm driver"
							onclick="handleSubImageClick('<%=pdt.getSubImg1()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg2()%>" alt="lightweight"
							onclick="handleSubImageClick('<%=pdt.getSubImg2()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg3()%>" alt="3.5mm gold plated jack"
							onclick="handleSubImageClick('<%=pdt.getSubImg3()%>')" />
					</div>
				</div>
			</div>
			<div class="right">
				<h2 id="ph"><%=pdt.getName()%></h2>
				<p id="rupee">
					₹<%=pdt.getPrice()%></p>
				<div>
					<div class="des">DESCRIPTION</div>
					<div class="desbox">
						<p id="dis"><%=pdt.getDescription()%></p>
					</div>
				</div>

				<div class="addbuy" style="min-width: 40.625rem;">
					<a class="add"
						href="<%=request.getContextPath()%>/product/edit?id=<%=pdt.getId()%>"><button
							class="add">Edit</button></a>
					<!-- <a class="add" href = "#"><button class="add">Enable/Disable</button></a> -->
					<a class="buy"
						href="<%=request.getContextPath()%>/product/delete?id=<%=pdt.getId()%>"><button
							class="buy">Delete</button></a>

				</div>

			</div>
		</div>
	</main>

	<%
	}
	}
	%>

	<jsp:include page="/pages/footer/footer.jsp"></jsp:include>
	<script>
		// Function to handle sub-image click event
		function handleSubImageClick(subImageSrc) {
			const img_of_product = document.getElementById("img_of_product");
			img_of_product.src = subImageSrc;
		}
	</script>
</body>
</html>
