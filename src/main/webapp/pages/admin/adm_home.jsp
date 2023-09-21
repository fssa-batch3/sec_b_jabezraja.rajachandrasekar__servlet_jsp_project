<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Site</title>
        <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo4.jpg" type="image/x-icon">
        <link href="<%=request.getContextPath()%>/assets/css/admstyle.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
    <body class="manico">

        <!-----Header Section----->
        <header>
            <div class="admnav">
                <a href="<%=request.getContextPath()%>/index.jsp">JAUNTY</a>  
                <div class="admnav-p">
                    <p>
                        <a href="<%=request.getContextPath()%>/index.jsp">RIALTO</a>
                    </p>
                </div>
            </div>
        </header>
        <main class="admmain">
            <div class="admcontainer">
                <div class="admcard">
                    <div class="admface face1">
                        <div class="admcontent">
                            <img src="<%=request.getContextPath()%>/assets/images/admin/form.jpeg" alt="">
                            <h3>Form</h3>
                        </div>
                    </div>
                    <div class="admface face2">
                        <div class="admcontent">
                            <p>Add Products</p>
                            <a href="<%=request.getContextPath()%>/product/new">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="admcard">
                    <div class="admface face1">
                        <div class="admcontent">
                            <img src="<%=request.getContextPath()%>/assets/images/admin/plist.jpeg" alt="">
                            <h3>Product-list</h3>
                        </div>
                    </div>
                    <div class="admface face2">
                        <div class="admcontent">
                            <p>Products list</p>
                            <a href="<%=request.getContextPath()%>/products">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="admcard">
                    <div class="admface face1">
                        <div class="admcontent">
                            <img src="<%=request.getContextPath()%>/assets/images/admin/images.jpeg" alt="">
                            <h3>Customers</h3>
                        </div>
                    </div>
                    <div class="admface face2">
                        <div class="admcontent">
                            <p>Customers Data</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>