<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Site</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/images/logo4.jpg"
	type="image/x-icon">
<title>LOGIN</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/loginstyle.css" />

</head>
<body>
	<div class="login-box">
		<h1>LOGIN</h1>
		<%
		String errorMessage = request.getParameter("errorMessage");
		if (errorMessage != null) {
		%>

		<div class="alert alert-danger" role="alert">
			<span style="color: red;"><%=errorMessage%></span>

			<!-- this will change based on invalid field entered -->
		</div>
		<%
		}
		%>
		<form action="<%=request.getContextPath()%>/login" method="get">
			<label>EMAIL</label> <input id="email" name="email" type="email"
				required> <label>PASSWORD</label> <input id="password"
				name="password" type="password"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
				required>
			<button class="btn" type="submit">SUBMIT</button>
		</form>
	</div>
	<p class="para2">
		Not have an account? <a
			href="<%=request.getContextPath()%>/pages/login/signUp.jsp">Sign
			Up here</a>
	</p>
</body>
</html>