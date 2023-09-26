<%@page import="in.fssa.jauntyrialto.entity.CategoryEntity"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Shopping Site</title>
<link rel="icon" href="assets/images/logo4.jpg" type="image/x-icon">
<link href="assets/css/style.css" rel="stylesheet">
</head>
<jsp:include page="header.jsp"></jsp:include>
<body class="manico">
	<%
	Set<CategoryEntity> listOfcategories = (Set<CategoryEntity>) request.getAttribute("categoryList");
	System.out.println(listOfcategories);
	%>
	<!-----Banner----->
	<div class="mbody">
		<section>
			<div class="slider">
				<figure id="slidy">
					<img src="assets/images/banner/png1.jpg" alt="banner">
					<img src="assets/images/banner/png3.jpg" alt="banner">
					<img src="assets/images/banner/png13.jpg" alt="banner">
					<img src="assets/images/banner/png21.jpg" alt="banner">
					<img src="assets/images/banner/png19.jpg" alt="banner">
					<img src="assets/images/banner/png22.jpg" alt="banner">
				</figure>
			</div>
		</section>
		<!-----Common Things----->

		<!-----Deals of the Day Begin----->
		<section>

			<div class="card">
				<div class="common-heading">
					<div class="common-heading-left">
						<h2>Deals of the Day</h2>
						<i class="fa-solid fa-timer"></i>
					</div>
				</div>
				<div class="common-row-col-deals">
					<%
					for (CategoryEntity category : listOfcategories) {
					%>
					<div class="common-col">
						<img class="product-img" src="<%=category.getImg()%>"
							alt="<%=category.getName()%>">
						<h3 class="product-title"><%=category.getName()%></h3>
					</div>
					<%
					}
					%>
				</div>
			</div>

		</section>
		<!-----Deals of the Day End----->

		<!-----Add Detials Start----->

	</div>
	<%@ include file="pages/footer/footer.jsp"%>

	<script src="./js/main.js"></script>
</body>
</html>
