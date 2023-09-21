<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Site</title>
<link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo4.jpg" type="image/x-icon">
<title>LOGIN</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/loginstyle.css" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
    <body>
        <div class="signup-box">
            <h1>SIGN UP</h1>
            <h4>It's free and only takes a minute</h4>
            <form action="<%=request.getContextPath()%>/signUp" method="post" onsubmit="Registered(event);">
                <label>NAME</label>
                <input id="name" type="text" name="name"  required>
                
                <label>PHONE</label>
                <input id="phonenumber" type="tel" name="phone" maxlength="10" required>
               
                <label>EMAIL</label>
                <input id="email" type="email" name="email" required>
                
                <label>PASSWORD</label>                  
                <input id="password" type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Asdf;lkj1@" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required>
               
                <label>CONFORM PASSWORD</label>
                <input id="confirm_password" type="password" name="confirmPassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required> 
               
               <button class="btn" type="submit">SUBMIT</button>           

            </form>

            <p>
                By clicking the Submit button, you agree to our <br>
                <a href="#"> Terms and Condition</a>
                and <a href="#"> Policy And Privacy</a>
            </p>
        </div>
        <p class="para2">
            Already have an account? <a href="<%=request.getContextPath()%>login.jsp">Login here</a>
        </p>
        <script src="<%=request.getContextPath()%>/js/register.js"></script>
    </body>
</html>