<%@page import="in.fssa.jauntyrialto.model.Product"%>
<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@page import="java.util.Set"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Set<ProductEntity> listOfProducts = (Set<ProductEntity>) request.getAttribute("productList");
	%>

	<table>
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
			<td><a href="rooms_list/details">
					<button type="submit">View Details</button>
			</a></td>
			<td><a href="">
					<button type="submit">Edit</button>
			</a></td>
			<td><a href="">
					<button type="submit">Delete</button>
			</a></td>
		</tr>

		<%
		}
		%>

	</table>
</body>
</html>