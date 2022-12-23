<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>

#front{
      width: 100%;
    height: 150px;
    background-color: darkslategray;
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
    #home{
    text-decoration: overline;   }
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
    
    #img{
            width: 120px;
            height: 120px;
            border-radius: 50%;
            overflow: hidden;
            position: absolute;
       box-shadow: 5px 5px 5px 5px;
        }
   
    .r{
        position: relative;
        top:120px;
        width: 30px;
        height: 40px;
    border-radius: 0px 50px 50px 0px;
    }   
    
   
    #a{
       
     background-color: blue;
           animation-name: move;
        animation-delay: 2s;
        animation-duration: 1s;
        animation-iteration-count: 1; 
        
    }
    @keyframes move{
        100%{
           background-image: url(Images/face.jpg);
         background-color: darkblue;
        background-repeat: no-repeat;
        width: 60px; 
        }
    }
    #a:hover{
        background-image: url(Images/face.jpg);
         background-color: darkblue;
        background-repeat: no-repeat;
        width: 60px;
    }
    #b{
       background-color: lightblue;
        animation-delay: 4s;
        animation-name: move1;
        animation-duration: 1s;
        animation-iteration-count: 1; 
        
    }
    @keyframes move1{
        100%{
            background-image: url(Images/twit.jpg);
          background-color: violet;
        background-repeat: no-repeat;
          width: 60px;
        }
    }
     #b:hover{
        background-image: url(Images/twit.jpg);
          background-color: violet;
        background-repeat: no-repeat;
          width: 60px;
    }
    #c{
      background-color: yellowgreen;
        animation-delay: 6s;
        animation-name: move2;
        animation-duration: 1s;
        animation-iteration-count: 1;
        
    }
     @keyframes move2{
        100%{
            background-image: url(Images/insta.jpg);
          background-color: darkgreen;
        background-repeat: no-repeat;
          width: 60px;
        }
    }
     #c:hover{
       background-image: url(Images/insta.jpg);
          background-color: darkgreen;
        background-repeat: no-repeat;
          width: 60px;
    }
    #d{
       background-color: red;
        animation-delay: 8s;
    animation-name: move3;
        animation-duration: 1s;
        animation-iteration-count: 1;
    }
     @keyframes move3{
        100%{
            background-image: url(Images/you.jpg);
        background-repeat: no-repeat;
        background-color: darkgoldenrod;
          width: 60px;
        }
    }
     #d:hover{
         background-image: url(Images/you.jpg);
        background-repeat: no-repeat;
        background-color: darkgoldenrod;
          width: 60px;
    }
    
    
    #ad1{
    background-image: url("Images/ad1.jpg");
    width: 1330px;
    height: 600px;
    position: fixed;

    }
    #dropdown{
    width:330px;
    
    height: 200px;
    position:absolute;
    left:700px;
    background-color: green;
    }
  
</style>
<script type="text/javascript">
function cos(){
	document.getElementById("k").submit();
	
}
function ele(){
	document.getElementById("e").submit();
	
}
function log() {
	 document.getElementById("login").innerHTML ="Logout";
}
function unlog() {
	 document.getElementById("login").innerHTML ="${username}";
}
function logg() {
	 document.getElementById("log").submit();
}
function abt() {
	 document.getElementById("l").submit();
}

var c=0;
var images = ["ad3.jpg","ad2.jpg","ad1.jpg","ad4.jpg"];
function div1() {
	document.getElementById("ad1").style.backgroundImage="url(Images/"+images[c]+")";
	c++;
	if (c == 4) {c = 0;}
}
setInterval("div1();",5000);



</script>
</head>
<body>
 <div id="front">
        
            <img src="Images/rr3.png" id="img">
          
         <form action="/RareStore/AboutServlet" id="l">
        <div id="about" onclick="abt();" class="select">About us</div>
        </form>
       <form action="/RareStore/EleServlet" id="e">
<div id="ele" onclick="ele();" class="select">Electronics</div>
</form>

<form action="/RareStore/CosServlet" id="k">
<div id="cos" onclick="cos();" class="select">Cosmetics</div>
</form>

 <div id="home" class="select">Home</div>
 	<form action="/RareStore/LogoutServlet" id="log">
        <div id="login" onclick="logg()" onmouseover="log();" onmouseout="unlog();">${username}</div>
    </form>
    </div>
 
   
<div id="ad1"></div>
  
 <div id="a" class="r">
    </div> 
    <div id="b" class="r">
    </div>
    <div id="c" class="r" >
    </div>
    <div id="d" class="r" >
    </div>
    
</body>
</html>