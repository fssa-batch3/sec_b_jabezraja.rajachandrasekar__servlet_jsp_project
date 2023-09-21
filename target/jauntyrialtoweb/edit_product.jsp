<%@page import="in.fssa.jauntyrialto.entity.ProductEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT PRODUCT FORM</title>
    <link rel="icon" href="<%=request.getContextPath()%>/assets/images/logo4.jpg" type="image/x-icon">
<style>
/* Reset some default styles for cross-browser consistency */
body, p, h1, h2, h3, ul, li {
    margin: 0;
    padding: 0;
}

.heading{
    text-align: center;
    line-height: 45px;
    color: #aa8531;
    font-family: 'Philosopher', serif;
    font-size: 38px;
    margin-top: revert;
}

/* Set a background color for the body */
body.manico {
    background-color: #fffbf2;
    font-family: Arial, sans-serif;
}

/* Style the form container */
.adm_editform {
    background-color: #ffffff;
    border: 1px solid #ccc;
    margin: 20px auto;
    max-width: 400px;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* Style the form labels */
.inter label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

/* Style the form input fields */
.inter input[type="text"],
.inter input[type="url"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
    transition: border-color 0.3s;
}

/* Style the submit button */
.adm_editformbtn {
	display:flex;
    justify-content: space-evenly;
    text-align: center;
    margin-top: 1pc;
    
}

#save.ebtn {
    background-color: #900c19;
    color: #f2c452;
    border: none;
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

#descrin{
	width:22pc;
	    height: 2pc;
}

</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body class="manico">
<h3 class="heading">Edit Form</h3>
<% 
ProductEntity product = (ProductEntity)	request.getAttribute("editProduct");
%>
                <form action="update?id=<%= product.getId() %>" method="post">
                    <div class="adm_editform">
                        <div class="inter">
                            <input id="pro_id" type="hidden" name="id" value="<%= product.getId() %>" >
                            <input id="pro_id" type="text" name="subid" value="<%= product.getSubCategoryId() %>" readonly>

                            <label>Product Name</label>
                            <input id="pname" type="text" name="name" value="<%= product.getName() %>" required>
                           
                        </div>
                  	    <div class="inter">
                            <label>Main Image</label>
                            <input id="mimg" name="mainImg" value="<%= product.getMainImg() %>" type="url"  required>

                            <label>Sub Image 1</label>
                            <input id="simg1" name="subImg1" value="<%= product.getSubImg1() %>"  type="url"  required>

                            <label>Sub Image 2</label>
                            <input id="smig2" name="subImg2" value="<%= product.getSubImg2() %>" type="url"  required>

                            <label>Sub Image 3</label>
                            <input id="simg3" name="subImg3" value="<%= product.getSubImg3() %>" type="url"  required>
                        </div> 

                        <div class="inter">
                            <label>Price (₹)</label>
                            <input id="price" name="price" value="<%= product.getPrice() %>"  type="text" required>
                        </div>
                        <div class="inter">
                            <label>Description</label>
                            <input id="descrin" title="" name="description" value="<%= product.getDescription() %>" required>

                            <div class="adm_editformbtn">
                                <div id="admfbtnd">
                                  <a href="products"><button class="ebtn" id = "save" type="submit">SAVE</button></a>
                                </div>

                                <div id="admfbtnd">
                                    <button class="ebtn" id = "save" type="reset" >CANCEL</button></div>
                            </div> 
                        </div>
                    </div>
                </form>
</body>
</html>