<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<style type="text/css">
.menuBox
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 1040px;
	height: 500px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.5);
}
#bg{
background-image: url("Images/bg1.jpg");
position: absolute;
top:0px;
left:0px;
right: 0px;
bottom: 0px;

}
</style>
</head>
<body bgcolor="black">
<div id="bg"></div>
<div class="menuBox">
<center>

			<h1>You have been successfully logged out.</h1>
			<h1><a href="login.jsp">Click here</a> to login</h1>
</center>
		</div>
</body>
</html>