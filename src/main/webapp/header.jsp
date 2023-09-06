<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <style>
        * {
            margin: 0%;
            padding: 0%;
            box-sizing: border-box;
            font-family: 'Philosopher', serif;
        }
        
        /* Header Section Begin */
        header {
            display: flex;
            justify-content: space-evenly;
            width: 100%;
            height: 56px;
            position: relative;
            top: 0px;
            z-index: 1;
        }
        
        #hed {
        display: flex;
        justify-content: space-evenly;
        background-color: white;
        box-shadow: 1px 0px 3px rgb(145 145 145);
        margin-top: 2px;
}
        
        .header-left {
            width: 20%;
            text-align: right;
            margin: 5px 0px;
        }
        
        .header-left a {
            color: #aa8531;
            font-size: 20px;
            text-decoration: none;
            font-weight: bold;
            font-style: italic;
            letter-spacing: 1.5px;
        }
        
        .header-center {
            width: 40%;
            text-align: left;
            line-height: 50px;
            cursor: pointer;
            padding: relative;
        }
        
        .header-center-input {
            margin-top: 10px;
            height: 36px;
            width: 100%;
            text-align: left;
            padding-left: 10px;
            cursor: auto;
            border-radius: 2px;
            background-color: transparent;
            outline: none;
            border: 1px solid #aa8531;
            font-size: 15px;
        }

        /* Header Section End */
        
        /* Login Button Begin */
        .login {
            position: relative;
            left: 45px;
            margin-top: 17px;
            padding: 0px 20px;
        }
        
        .login_btn {
            color: #aa8531;
            border-radius: 2px;
            height: 32px;
            letter-spacing: 1px;
            font-weight: bold;
            margin: 0px 20px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
        }
        
        .login_dropdown {
            position: relative;
            top: 0px;
        }
        
        .login_dropdown_list {
            position: absolute;
            list-style: none;
            background-color: whitesmoke;
            width: max-content;
            box-shadow: 0 4px 16px rgb(0 0 0 /20%);
            min-width: 240px;
            transform: translate(-30px);
        }
        
        .login_drop_li {
            padding: 16px 20px;
            border-bottom: 1px solid whitesmoke;
            font-size: 14px;
        }
        
        .login_drop_li a {
            text-decoration: none;
            color: #000;
            cursor: pointer;
        }
        
        .login_drop_li:hover {
            background: lightgrey;
        }
        
        .login_drop_li.fa-solid {
            color: crimson;
            padding-right: 10px;
        }
        
        .login_drop_li:first-child {
            padding: 20px;
        }
        
        .login_drop_li:first-child:hover {
            color: black;
        }
        
        .login_drop_li:first-child {
            padding: 20px;
        }
        
        .login:hover .login_dropdown {
            display: block;
        }
        /* Login Section End */
    </style>
</head>
<body>
    <div id="hed">
        <div class="header-left">
            <a href="/jauntyrialtoweb/adm_index.jsp">JAUNTY</a>  
            <div class="header-left-p">
                <p><a href="/jauntyrialtoweb/adm_index.jsp">RIALTO</a></p>
            </div>
        </div>
        
        <div class="header-center"> 
            <input class="header-center-input" type="search" placeholder="search for products">
        </div>
    
        <!-- Login Button -->
        <div class="login">
            <p class="login_btn">My Portal</p>
        </div>
    </div>
</body>
</html>
