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
<script>
        // Increment/decrement counter
        document.addEventListener("DOMContentLoaded", () => {
            const minus = document.querySelector(".quantity__minus");
            const plus = document.querySelector(".quantity__plus");
            const input = document.querySelector(".sqb");

            const minValue = 1; // Minimum allowed value
            const maxValue = 12; // Maximum allowed value

            minus.addEventListener("click", (e) => {
                e.preventDefault();
                let value = parseInt(input.value);
                if (value > minValue) {
                    value--;
                }
                input.value = value;
            });

            plus.addEventListener("click", (e) => {
                e.preventDefault();
                let value = parseInt(input.value);
                if (value < maxValue) {
                    value++;
                }
                input.value = value;
            });
        });
    </script>
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
						alt="This is a image of + <%=pdt.getName()%>" height="450px"
						width="400px" id="img_of_product" />
				</div>
				<div class="subi">
					<div class="sub-images">
						<img src="<%=pdt.getMainImg()%>"
							alt="This is a image of + <%=pdt.getName()%>"
							onclick="handleSubImageClick('<%=pdt.getMainImg()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg1()%>"
							alt="This is a image of <%=pdt.getName()%>"
							onclick="handleSubImageClick('<%=pdt.getSubImg1()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg2()%>"
							alt="This is a image of <%=pdt.getName()%>"
							onclick="handleSubImageClick('<%=pdt.getSubImg2()%>')" />
					</div>
					<div class="sub-images">
						<img src="<%=pdt.getSubImg3()%>"
							alt="This is a image of <%=pdt.getName()%>"
							onclick="handleSubImageClick('<%=pdt.getSubImg3()%>')" />
					</div>
				</div>
			</div>
			<div class="right">
				<h2 id="ph"><%=pdt.getName()%></h2>
				<p id="rupee">
					₹<%=pdt.getPrice()%></p>
				<small id="inc">Inclusive of all taxes</small>
				<p>SELECT QUANTITY</p>
				<div id="sq">
					<a href="" class="quantity__minus"> <span>-</span>
					</a> <input type="text" id="incre_decre" class="sqb" value="1" readonly>
					<a href="" class="quantity__plus"> <span>+</span>
					</a>
				</div>
				<div class="addbuy" style="min-width: 40.625rem;">
					<a href="order?id=<%=pdt.getId()%>&"><button class="add">Buy
							Now</button></a>
					<!-- 	<button class="buy">Delete</button> -->
				</div>
				<div>
					<div class="des">DESCRIPTION</div>
					<div class="desbox">
						<p id="dis"><%=pdt.getDescription()%></p>
					</div>
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