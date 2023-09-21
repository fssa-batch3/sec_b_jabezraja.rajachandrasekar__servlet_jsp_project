<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>
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

header {
	display: flex;
	justify-content: space-evenly;
	height: 56px;
}
/*****Admin_Page_start*****/
::-webkit-scrollbar {
	width: 0px;
}

.admnav {
	text-align: right;
	margin: 5px 0px;
	cursor: pointer;
}

.admnav a {
	color: #aa8531;
	font-size: 20px;
	text-decoration: none;
	font-weight: bold;
	font-style: italic;
	letter-spacing: 1.5px;
}

.admnav-p a {
	font-size: 15px;
	letter-spacing: 1.5px;
}

.admmain {
	display: block;
	position: relative;
	top: 20vh;
}

.admcontainer {
	position: relative;
	display: flex;
	justify-content: space-around;
	margin-left: 80px;
	margin-right: 80px;
}

.admcontainer .admcard {
	position: relative;
}

.admcontainer .admcard .admface {
	width: 300px;
	height: 200px;
	transition: 0.5s;
}

.admcontainer .admcard .admface.face1 {
	position: relative;
	background: #900c19;
	display: flex;
	justify-content: center;
	align-items: center;
	z-index: 1;
	transform: translateY(100px);
}

.admcontainer .admcard:hover .admface.face1 {
	background: #aa8531;
	transform: translateY(0);
}

.admcontainer .admcard .admface.face1 .admcontent {
	opacity: 0.7;
	transition: 0.5s;
}

.admcontainer .admcard:hover .admface.face1 .admcontent {
	opacity: 1;
}

.admcontainer .admcard .admface.face1 .admcontent img {
	max-width: 100px;
}

.admcontainer .admcard .admface.face1 .admcontent h3 {
	margin: 10px 0 0;
	padding: 0;
	color: #fff;
	text-align: center;
	font-size: 1.5em;
}

.admcontainer .admcard .admface.face2 {
	position: relative;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
	box-sizing: border-box;
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
	transform: translateY(-100px);
}

.admcontainer .admcard:hover .admface.face2 {
	transform: translateY(0);
}

.admcontainer .admcard .admface.face2 {
	margin: 0;
	padding: 0;
}

.admcontent {
	text-align: center;
}

.admcontent a {
	cursor: pointer;
}

.admcontainer .admcard .admface.face2 .admcontent a {
	margin: 15px 0 0;
	display: inline-block;
	text-decoration: none;
	font-weight: 900;
	color: #9b7c35;
	padding: 5px;
	border: 1px solid #333;
}

.admcontainer .admcard .admface.face2 .admcontent a:hover {
	background: #900c19;
	color: #fff;
}

/*****Admin_Page_End*****/
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body class="manico">
	<main class="admmain">
		<div class="admcontainer">
			<div class="admcard">
				<div class="admface face1">
					<div class="admcontent">
						<img src="https://iili.io/J9K2sRe.png" alt="">
						<h3>Add Products</h3>
					</div>
				</div>
				<div class="admface face2">
					<div class="admcontent">
						<p>Form</p>
						<a href="/jauntyrialtoweb/product/new">Read More</a>
					</div>
				</div>
			</div>
			<div class="admcard">
				<div class="admface face1">
					<div class="admcontent">
						<img src="https://iili.io/J9K2LOu.jpg" alt="">
						<h3>Product-list</h3>
					</div>
				</div>
				<div class="admface face2">
					<div class="admcontent">
						<p>Products list</p>
						<a href="/jauntyrialtoweb/products">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>