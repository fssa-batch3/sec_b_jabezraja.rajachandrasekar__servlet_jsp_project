 <%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT LIST</title>
<style>
/* Reset some default browser styles */
body, h1, h2, p, ul, li {
	margin: 0;
	padding: 0;
}

/* Style the header */
header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
}

h1 {
	font-size: 24px;
}

/* Style the container */
.container {
	/* max-width: 800px; */
	margin: 0 auto;
	padding: 20px;
}

/* Style the table */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: center;
}

th {
	background-color: #333;
	color: #fff;
}

.table th {
	background-color: #f5f1e9;
	color: #886619;
	letter-spacing: 1.68px;
	padding: 12px 20px;
	margin-bottom: 8px;
	font-family: 'Philosopher', serif;
}

/* Style the "View Details," "Edit," and "Delete" buttons */
button {
	background-color: #900c19;
	color: #f2c452;
	border: none;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	cursor: pointer;
	border-radius: 5px;
}

/* Style links within the buttons */
button a {
	text-decoration: none;
	color: #fff;
}

/* Style the table rows on hover */
tbody tr:hover {
	background-color: #f5f5f5;
}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<%
	Set<ProductEntity> listOfProducts = (Set<ProductEntity>) request.getAttribute("productList");
	%>
	<div class="container">
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>View Details</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<%
			for (ProductEntity product : listOfProducts) {
			%>
			<tr>
				<td><%=product.getId()%></td>
				<td><%=product.getName()%></td>
				<td>₹<%=product.getPrice()%></td>
				<td><a href="product/details?id=<%=product.getId()%>">
						<button type="button">View Details</button>
				</a></td>
				<td><a href="product/?id=<%=product.getId()%>">
						<button type="button">Edit</button>
				</a></td>
				<td><a
					href="product/delete?id=<%=product.getId()%>">
						<button type="button">Delete</button>
				</a></td>
			</tr>
			<%
			}
			%>

		</table>
	</div>
</body>
</html>