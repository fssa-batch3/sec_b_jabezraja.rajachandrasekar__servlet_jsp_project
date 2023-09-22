<%@page import="in.fssa.jauntyrialto.entity.UserEntity"%>
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

<style>
/* Reset some default styles for cross-browser consistency */
body, p, h1, h2, h3, ul, li {
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    padding-top: 15px;
    font-family: 'Philosopher', serif;
    font-weight: 200;
}

/* Set a background color for the body */
body.manico {
    background-color: #fffbf2;
    font-family: 'Philosopher', serif;
}


/* Style the form container */
.adm_editform {
    background-color: #ffffff;
    border: 1px solid #ccc;
    margin: 20px auto;
    margin-top: 15rem;
    max-width: 400px;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

form input {
    width: 100%;
    padding: 7px;
    border: 1px solid grey;
    border-radius: 6px;
    outline: none;
}

/* Style the form labels */
.inter label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

/* Style the form input fields */
.inter input[type="text"], .inter input[type="tel"], .inter input[type="email"] {
    width: calc(100% - 20px); /* Adjusted width */
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
    transition: border-color 0.3s;
}

/* Style the submit button */
.adm_editformbtn {
    display: flex;
    justify-content: space-evenly;
    margin-top: 1pc;
    gap: 10px; /* Adjusted gap */
}

.ebtn {
    background-color: #900c19;
    color: #f2c452;
    border: none;
    min-width: 130px;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 3px;
    cursor: pointer;
}

/* Style the header included using JSP */
.header {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
    text-align: center;
}

.header h1 {
    margin: 0;
    padding: 0;
    font-size: 24px;
}

/* Style the hidden product ID field */
#pro_id {
    display: none;
}

#descrin {
    width: 22pc;
    height: 2pc;
}

</style>

</head>
<body class="manico">
	<%
	UserEntity user = new UserEntity();
	%>
	<%
	user = (UserEntity) request.getAttribute("user");
	%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	%>
	<div class="edituser">
	  
		<form action="update?id=<%=id%>" method="post">
		
			<div class="adm_editform">
			<h1>Edit Form</h1>
				<div class="inter">
					<label>Name</label>
					 	<input id="pname" type="text" name="name" value="${user.getName()}" required>
					<label>Phone</label> 
						<input id="simg1" name="phone" value="${user.getPhone()}" type="tel" required> 
					<label>Email</label> 
						<input id="smig2" name="email" value="${user.getEmail()}" type="text" disabled>
					<input id="simg3" name="password" value="${user.getPassword()}" type="hidden" required>
				</div>


				<div class="adm_editformbtn">
					<div id="admfbtnd">
						<button class="ebtn" id="save" type="submit">SAVE</button>
					</div>

					<div id="admfbtnd">
						<a href="<%=request.getContextPath()%>/profile">
							<button type="button" class="ebtn" id="save">CANCEL</button>
						</a>

					</div>
				</div>
			</div>

		</form>
	</div>

</body>
</html>