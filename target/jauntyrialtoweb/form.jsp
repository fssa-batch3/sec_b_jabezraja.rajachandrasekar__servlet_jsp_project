<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ADMIN FORM FOR PRODUCT</title>
<style>
    *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
    font-family: 'Philosopher',serif;
}
.manico{
    background-color: #fffbf2;
}
header{
    display: flex;
    justify-content: space-evenly;
    height: 56px;
}
/*****Admin_Page_start*****/
::-webkit-scrollbar{
    width: 0px;
}

.admnav{
    text-align: right;
    margin: 5px 0px;
    cursor: pointer;
}

.admnav a{
    color: #aa8531;
    font-size: 20px;
    text-decoration: none;
    font-weight: bold;
    font-style: italic;
    letter-spacing: 1.5px;
}

.admnav-p a{
    font-size: 15px;
    letter-spacing: 1.5px;
}

.admmain{
    display: block;
    position: relative;
    top: 20vh;
}

.admcontainer{
    position: relative;
    display: flex;
    justify-content: space-between;
    margin-left: 80px;
    margin-right: 80px;
}

.admcontainer .admcard{
    position: relative;
}

.admcontainer .admcard .admface{
    width: 300px;
    height: 200px;
    transition: 0.5s;
}

.admcontainer .admcard .admface.face1{
    position: relative;
    background: #900c19;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1;
    transform: translateY(100px);
}

.admcontainer .admcard:hover .admface.face1{
    background: #aa8531;
    transform: translateY(0);
}

.admcontainer .admcard .admface.face1 .admcontent{
    opacity: 0.7;
    transition: 0.5s;
}

.admcontainer .admcard:hover .admface.face1 .admcontent{
    opacity: 1;
}

.admcontainer .admcard .admface.face1 .admcontent img{
    max-width: 100px;
}

.admcontainer .admcard .admface.face1 .admcontent h3{
    margin: 10px 0 0;
    padding: 0;
    color: #fff;
    text-align: center;
    font-size: 1.5em;
}

.admcontainer .admcard .admface.face2{
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

.admcontainer .admcard:hover .admface.face2{
    transform: translateY(0);
}

.admcontainer .admcard .admface.face2{
    margin: 0;
    padding: 0;
}

.admcontent{
    text-align: center;
}

.admcontent a{
    cursor: pointer;
}

.admcontainer .admcard .admface.face2 .admcontent a {
    margin: 15px 0 0;
    display:  inline-block;
    text-decoration: none;
    font-weight: 900;
    color: #9b7c35;
    padding: 5px;
    border: 1px solid #333;
}

.admcontainer .admcard .admface.face2 .admcontent a:hover{
    background: #900c19;
    color: #fff;
}

/*****Admin_Page_End*****/

/*****Admin_Form_Begin*****/
.admfbody{
    background-color:#fffbf2;
    font-family: 'Philosopher',serif;
}
.admformbox{
    max-width: 800px;
    height: auto;
    margin: auto;
    background-color: #fff;
    border-radius: 3px;
    color: #3c3c3c;
    margin-top: 9em;
    border: 1px solid #9b7c35;
}
.admform{
    display: flex;
    justify-content: space-around;
    margin-right: 115px;
    max-width: 800px;
}
#admh1{
    text-align: center;
    padding-top: 15px;
    font-family: 'Philosopher',serif;
    font-weight: 200;
}
form label{
    display: flex;
    margin-top: 20px;
    font-size: 16px;
    color: #333;
    font-family: 'Philosopher',serif;
}
form input , form textarea , form select{
    width: 160%;
    padding: 7px;
    border: 1px solid grey;
    outline: none;
} 
 #descrin{
    width: 100%;
    padding: 7px;
    border: none;
    border: 1px solid grey;
    outline: none;
}
.btn{
    width: 320px;
    height: 35px;
    margin-top: 10px;
    margin-bottom: 20px;
    border: none;
    background-color: #900c19;
    color: #f2c452;
    font-size: 18px;
    font-family: 'Philosopher',serif;
    font-weight: 200;
    border-radius: 6px;
}
.btn a{
    text-decoration: none;
    color: white;
}
.admformbtn{
    display: flex;
    justify-content: center;
}
#admfbtnd, #admfbtndc{
    padding: 10px;
}
input[type="button"]{
    width: 320px;
    height: 35px;
    margin-top: 20px;
    border: none;
    background-color: #900c19;
    color: #fff;
    font-size: 18px; 
}
/*****Admin_Form_End*****/
</style>
</head>

<body class="admfbody">
    <div class="admformbox">
        <h1 id="admh1">Add Products</h1>
        <form action="ProductCreate" method="post">
            <div class="admform">
                <div>
                    <label>Category</label>
                    <select name="category" id="cato" required>
                        <option id="">Electronics</option>
                        <option id="">Perfume</option>
                        <option id="">Food</option>
                        <option id="">Accessories</option>
                    </select>
                    <label>Sub Category</label>
                    <select name="subCategory" id="pcate" required>
                        <option id="pcm">Monitors</option>
                        <option id="pcbohd">Micro Oven</option>
                        <option id="pcht">DonZ</option>
                        <option id="pcw">Chocolate</option>
                        <option id="pcs">Watch</option>
                    </select>
                    <label>Product Name</label>
                    <input id="pname" type="text" name="productName" required>
                    <label>Price</label>
                    <input id="price" type="text" name="price" required>
                </div>
                <div>
                    <label>Main Image</label>
                    <input id="mimg" type="url" name="mainIMG" required>
                    <label>Sub Image 1</label>
                    <input id="simg1" type="url" name="subIMG1" required>
                    <label>Sub Image 2</label>
                    <input id="smig2" type="url" name="subIMG2" required>
                    <label>Sub Image 3</label>
                    <input id="simg3" type="url" name="subIMG3" required>
                    <label>Description</label>
                    <textarea id="descrion" name="description" required> </textarea>
                </div>
            </div>
            <div class="admformbtn">
                <div id="admfbtnd">
                    <button class="btn" type="submit">SUBMIT</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>