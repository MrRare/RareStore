<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>electronic</title>
<style type="text/css">
#login{
        background-color: brown;    
        position: relative;
        cursor: pointer;
        width: 80px;
        height: 30px;
        left: 1200px;
        top:10px;
        font-size: 24px;
        color: azure;
        border-radius: 50px 50px 50px 50px;
        border: 2px solid white;
        padding-left: 13px;
        
    }
     #login:hover{
        position: relative;
        box-shadow: 4px 4px black;
        background-color: azure;
        color: green;
    }
    .select{
        position: relative;
        top:100px;
        color: aliceblue;
        font-size: 20px;
        float: right;
        margin-left: 70px;
        right: 100px;
        
    }
    .select:hover{
        text-decoration-color: white;
         text-decoration: overline; 
        cursor: pointer;
        text-shadow: 3px 3px black;
        color: white;
        
    }
    #ele{
    text-decoration: overline;   }
#td{
width:300px;
height:200px;
margin-bottom: 10px;
background-color: white;
background-repeat:no-repeat;
border:2px solid black;
padding-left: 400px;
font-size: 20px;
font-family: serif;
font-weight: bolder;

}
#td:hover{
box-shadow: 10px 10px 5px grey;
}
#b{
width: 80px;
height:40px;
background-color: white;
border: 2px solid green;
color:black;
margin-right: 50px;
}
#b:HOVER {
	background-color: green;
	color: white;
}
#c{
width: 80px;
height:40px;
background-color: white;
border: 2px solid green;
color:black;
}
#c:HOVER {
	background-color: green;
	color: white;
}
#search{
width: 600px;
height: 40px;
position: relative;
top: 0px;
margin-bottom: 80px;
left: 200px;
font-family: serif;
font-weight: bold;
font-size: large;
color: darkslategray;
border-radius:50px 50px 50px 50px;
padding-left: 10px;
}
#img{
            width: 120px;
            height: 120px;
            border-radius: 50%;
            overflow: hidden;
            position: absolute;
       box-shadow: 5px 5px 5px 5px;
       
        }
        #front{
      width: 100%;
    height: 170px;
    background-color: darkslategray;
    margin-bottom: 50px;
    }
    

#but2{
	width: 80px;
    height: 40px;
    background-color: white;
    position: relative;
    left:725px;
    font-family: serif;
    font-size: medium;
    border: 2px solid green;
    margin-top: 10px;
    
}
#but2:HOVER {
	border: 3px solid black;
}
#fil{
width: 80px;
    height: 40px;
    background-color: white;
    position: relative;
    left:725px;
    font-family: serif;
    font-size: medium;
    border: 2px solid green;
    margin-top: -50px;
    margin-left: -100px;
}

#fil:HOVER {
	border: 3px solid black;
}
#searchb { 
                width:30px; 
                height:30px; 
                position: absolute;
   				 left:750px;
   				 margin-top: -120px;
            } 
            #image { 
                width:100%; 
                height:100%; 
            } 
#cart{
     position: absolute;
     top :180px;
     left:840px;
     width:500px;
     height:500px;
     border:medium;
     border-color:black;
     border-width:2px;
     background-color:
     display: none;
            }
            #imgcart{
            width: 80%;
            height: 80%;
            }
            
 #cartb{
	width: 80px;
    height: 36px;
    background-color: white;
    position: relative;
    left:920px;
    top:10px;
    font-family: serif;
    font-size: medium;
    border: 2px solid green;
    margin-top: -50px;
    margin-left: -100px;
}

#cartb:HOVER {
	border: 3px solid black;
}
</style>
<script type="text/javascript">
function cos(){
	document.getElementById("k").submit();
	
}
function ele(){
	document.getElementById("e").submit();
	
}
function cart(){
	document.getElementById("cart").style.display="block";
}
</script>
</head>
<body bgcolor="white">
<form action="/RareStore/SearchServlet">
<div id=front>
<div id="login">${username}</div>

<img src="Images/rr3.png" id="img">
 <div id="about" class="select">About us</div>
        
       <form action="/RareStore/EleServlet" id="e">
<div id="ele" onclick="ele();" class="select">Electronics</div>
</form>

<form action="/RareStore/CosServlet" id="k">
<div id="cos" onclick="cos();" class="select">Cosmetics</div>
</form>

 <div id="home" class="select" onclick="home();">Home</div>
 
<input type="text" name="search" id="search" placeholder="Search for electronic products">
<div id = "searchb"> 
            <img id="image" src= 
"Images/search.png"; 
        alt = "search" /> 
        </div> 
</form>
<form action="/RareStore/EfilServlet">
<select id="but2" name="value">
<option>100</option>
<option>500</option>
<option>1000</option>
</select>
<input type="submit" id="fil" value="Filter">
</form>
<div id="cartb"><img src="Images/cart.png" id="imgcart"></div>
<div id="cart" onclick="cart();"></div>
<%@ page import="java.util.*" %>
<%@ page import="product.EleProduct" %>
<%
ArrayList<EleProduct> pro=(ArrayList<EleProduct>)session.getAttribute("product");

for(int i=0;i<pro.size();i++){
out.println("<div id='td' style='background-image:url(Images/"+pro.get(i).getImage()+")' name='product'>Product Name:- "+pro.get(i).getName()+"<br /> Product Price:- "+pro.get(i).getPrice()+"<br /> Product Company:- "+pro.get(i).getCompany()+"<br><br><button id='b'>BUY</button><input type='submit' id='c' value='Cart'></div>");
}

%>

</body>
</html>