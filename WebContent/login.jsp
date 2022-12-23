<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css">
<script type="text/javascript">
function show1() {
	document.getElementById("span1").style.display="block";
	document.getElementById("user").placeholder="";
}
function unshow1() {
	document.getElementById("span1").style.display="none";
	document.getElementById("user").placeholder="Username";
}

function show2() {
	document.getElementById("span2").style.display="block";
	document.getElementById("pass").placeholder="";
}
function unshow2() {
	document.getElementById("span2").style.display="none";
	document.getElementById("pass").placeholder="Password";
}
function img1() {
	document.getElementById("img1").style.display="none";
}
function img2() {
	document.getElementById("img2").style.display="none";
}
function imgun1() {
	document.getElementById("img1").style.display="block";
}
function imgun2() {
	document.getElementById("img2").style.display="block";
}
function validate() {
	document.getElementById("blank1").style.display="none";
	document.getElementById("blank2").style.display="none";
	document.getElementById("div").style.height="200px";
	
	var x=document.getElementById("user").value;
	var y=document.getElementById("pass").value;
	
	if(x.length==0){
		document.getElementById("blank1").style.display="block";
		document.getElementById("div").style.height="250px";
		play();
		return false;
	}
	if(y.length==0){
		document.getElementById("blank2").style.display="block";
		document.getElementById("div").style.height="250px";
		play();
		return false;
	}
	
	return true;
}
function play() {
	var snd = new Audio("Audio/erro.mp3");
	snd.play();
}

</script>
<style type="text/css">

body{
	background-color:BLACK;
}
#div{
width:350px;
height:220px;
border: 1px solid #3899ec;
position: absolute;
top:200px;
left:500px;
background-color: white;
padding-top: 50px;
border-radius:50px 50px 50px 50px;
}
 
#want1{
width:240px;
height:320px;
position: absolute;
top:0px;
left:0px;
background-color: black;
padding-top: 50px;

}

#want2{
width:240px;
height:320px;
position: absolute;
top:0px;
left:1110px;
background-color: black;
padding-top: 50px;

}
.img{
width: 100%;
height: 100%;
}
#user{
width:300px;
height: 30px;
border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:gray;
border-bottom-width: thin;

font-size: medium;

}
#user:HOVER{
border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:black;
border-bottom-width: thin;

}
#user:focus {
    outline:none;
    border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:#3899ec;
border-bottom-width: thin;

}
#pass{
width:300px;
font-size: medium;
height: 30px;
border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:gray;
border-bottom-width: thin; 

}

#pass:HOVER{
border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:black;
border-bottom-width: thin;

}
#pass:focus {
    outline:none;
    border-top: none;
border-left: none;
border-right:none;
border-bottom :solid;
border-bottom-color:#3899ec;
border-bottom-width: thin;
}
#span1{
color:#3899ec;
font-family:serif;
font-weight:bold;
position: relative;
right: 100px;
display:none;
}
#span2{
color:#3899ec;
font-weight:bold;
font-family:serif;
position: relative;
right: 100px;
display:none;
}
#login{
width:90px;
height: 40px;
border: 2px solid #3899ec;
background-color: white;
color:#3899ec;
border-radius:50px 50px 50px 50px;
font-size: 15px;
}
#login:HOVER {
	background-color: #3899ec;
	color:white;
}
#blank1{
color:red;
display:none;
}
#blank2{
color:red;
display:none;
}

#title{
font-family: HelveticaNeueW01-Thin,HelveticaNeueW02-Thin,HelveticaNeueW10-35Thin,sans-serif;
color:#3899ec;
position: absolute;
top: 100px;
left: 550px;
font-size: 30px;
}

</style>

</head>
<body>
<div id="want1"><img src="Images/sirius.gif" id="img1" class="img" onmouseover="img1();" onmouseout="imgun1();"></div>
<div id="want2"><img src="Images/bella.gif" id="img2" class="img" onmouseover="img2();" onmouseout="imgun2();"></div>

<center>

<div id="title">Login to RareStore</div>
<form action="/RareStore/LoginServlet" onsubmit="return validate();" method="post">

<div id="div">

<span id="span1">Username</span>
<input type="text" name="username" id="user" placeholder="Username" onmouseover="show1();" onmouseout="unshow1();" >
<span id="blank1">Username must be filled out</span>
<br><br><br>
<span id="span2">Password</span>
<input type="password" name="password" id="pass" placeholder="Password" onmouseover="show2();" onmouseout="unshow2();">
<span id="blank2">Password must be filled out</span>
<br><br><br>
<input type="submit" value="Login" id="login">
</div>
</form>
</center>
</body>
</html>