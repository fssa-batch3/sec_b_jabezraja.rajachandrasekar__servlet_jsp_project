<%@page import="in.fssa.jauntyrialto.entity.SubCategoryEntity"%>
<%@page import="in.fssa.jauntyrialto.model.SubCategory"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN FORM FOR PRODUCT</title>
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

::-webkit-scrollbar {
	width: 0px;
}

/*****Form_Begin*****/
.admfbody {
	background-color: #fffbf2;
	font-family: 'Philosopher', serif;
}

.admformbox {
	max-width: 800px;
	height: auto;
	margin: auto;
	background-color: #fff;
	border-radius: 3px;
	color: #3c3c3c;
	margin-top: 9em;
	border: 1px solid #9b7c35;
}

.admform {
	display: flex;
	justify-content: space-around;
	margin-right: 115px;
	max-width: 800px;
}

#admh1 {
	text-align: center;
	padding-top: 15px;
	font-family: 'Philosopher', serif;
	font-weight: 200;
}

form label {
	display: flex;
	margin-top: 20px;
	font-size: 16px;
	color: #333;
	font-family: 'Philosopher', serif;
}

form input, form textarea, form select {
	width: 160%;
	padding: 7px;
	border: 1px solid grey;
	outline: none;
}

#descrin {
	width: 100%;
	padding: 7px;
	border: none;
	border: 1px solid grey;
	outline: none;
}

.btn {
	width: 320px;
	height: 35px;
	margin-top: 10px;
	margin-bottom: 20px;
	border: none;
	background-color: #900c19;
	color: #f2c452;
	font-size: 18px;
	font-family: 'Philosopher', serif;
	font-weight: 200;
	border-radius: 6px;
	cursor:pointer;
}

.btn a {
	text-decoration: none;
	color: white;
}

.admformbtn {
	display: flex;
	justify-content: center;
}

#admfbtnd, #admfbtndc {
	padding: 10px;
}

input[type="button"] {
	width: 320px;
	height: 35px;
	margin-top: 20px;
	border: none;
	background-color: #900c19;
	color: #fff;
	font-size: 18px;
}
/*****Form_End*****/
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body class="admfbody">
	<%
	List<SubCategoryEntity> subCategoryList = (List<SubCategoryEntity>) request.getAttribute("subCategoryList");
	%> 
	
	<div class="admformbox">
		<h1 id="admh1">Add Products</h1>
		<form action="create" method="post">
			<div class="admform">
				<div>
					 <label>Sub Category</label>
						 <select name="subCategory"	id="pcate" required>
						<option value="">Select</option>
						<% for (SubCategory obj : subCategoryList) {%>
						<option value="<%=obj.getId()%>"><%=obj.getName()%></option>
						<%
						} 
						%>
						</select> 
						 <label>Product Name</label>
						  	<input id="pname" type="text" placeholder="eg: 27' Inch Full HD Monitor" name="productName" required> 
						 <label>Price</label>
						  	<input id="price" type="text" placeholder="eg: 1599.99" min="1" name="price" required>
						  <label>Description</label>
					 	<textarea id="descrion" name="description" required> </textarea>
				</div>
				<div>
					<label>Main Image</label>
					 	<input id="mimg" type="url" placeholder="Image should be in url" name="mainIMG" required>
					<label>Sub Image 1</label>
					 	<input id="simg1" type="url" placeholder="Image should be in url" name="subIMG1" required>
					<label>Sub Image 2</label>
					 	<input id="smig2" type="url" placeholder="Image should be in url" name="subIMG2" required>
					<label>Sub Image 3</label>
					 	<input id="simg3" type="url" placeholder="Image should be in url" name="subIMG3" required>
				</div>
			</div>
			<div class="admformbtn">
				<div id="admfbtnd">
					<button class="btn" type="submit">SUBMIT</button>
					<button class="btn" type="reset">CANCEL</button>
				</div>
			</div>
		</form>
	</div>
</body>

</html>