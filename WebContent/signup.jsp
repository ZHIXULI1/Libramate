<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Sign up</title>

		<style>
		#outercontainer {
			background-color:rgb(103,158,120);
			width:100%;
			left:auto;
			right:auto;
			height:1024px;
		}
		#inner{
			background-color:rgb(76,155,214);
			width:100%;
			position:absolute;
			top:100px;
			bottom:-190px;
			line-height:center;
		}
		label {
			font-weight:bold;
			margin:10px;
			font-size:30px;
			padding-left:30%;
		}
		.error{
		
			background-color:rgba(147,172,194,0.5);
			/* opacity:0.9; */ 
			color:red;
			/* float:left;  */
			width:170px;
			position:relative;
			left:1100px;
			top:-35px;
			margin:0px;
			padding:0px;
		}
		h1 {
			-webkit-text-stroke-width: 0.8px;
			-webkit-text-stroke-color: black;
			color: white;
			position:relative;
			top:20px;
			left:20px;
			margin:0;
			font-size:50px;
		}
		html, body 
		{
			padding:0px;
			margin:0px;
		}
		input {
			margin-left:31%;
			width:600px;
			height:30px;
			font-size:25px;
		}
		
		</style>
		<script>
			function validate()
			{
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET" , "formValidation?username=" + document.getElementById("username").value + 
					"&URL=" + document.getElementById("URL").value + "&password=" + document.getElementById("password").value, false); 
				xhttp.send();
				
				
					
					//document.getElementById("formerror").innerHTML = xhttp.responseText;
					var response = xhttp.responseText;
					response.trim();
					var field = response.split("~");
					var username2 = field[1];
					var username1 = field[0];
					if(username2.trim().length == 0 && username1.trim().length != 0)
					{
						document.getElementById("userError").innerHTML = username1;
					}
					else if(username1.trim().length == 0 && username2.trim().length != 0)
					{
						document.getElementById("userError").innerHTML = username2;
					}
					else
					{
						document.getElementById("userError").innerHTML = "";
					}
					

					//document.getElementById("userError").innerHTML = username2;
					var password = field[2];
					document.getElementById("pserror").innerHTML = password;
					var URL = field[3];
					document.getElementById("urlError").innerHTML = URL;
					if(username1.trim().length == 0 && username2.trim().length == 0 && URL.trim().length ==  0 && password.trim().length == 0)
					{
						return true;
					}
					
				
				
				return false;
			}
		</script>
	</head>
	<body>
		<div	 id="outercontainer">
			<div style="width: 80px;">
				<a style="text-decoration:none;" href="homepage.jsp">
					<h1>LibraMate</h1>
				</a>
			</div>
			<div	 id="inner">
				<center><h1 style="font-size:80px;">Sign Up</h1></center>
				<br />
				<br />
				<br />
				<form id="myform" method="GET" action="updateSearchpg.jsp" onsubmit="return validate();" >
					<label>Username</label>
					<br />
					<input id="username" name="username" type="text"/><div id="userError" class="error"></div>
					<br />
					<br />
					<br />
					<label>Password</label>
					<br />
					<input  id="password" name="password" type="text"/><div id="pserror" class="error"></div>
					<br />
					<br />
					<br />
					<label>Image URL</label>
					<br />
					<input id="URL" name="URL" type="url"/><div id="urlError" class="error"></div>
					<br />
					<br />
					<br />
					<center><button  style="background-color:rgb(52,52,52); border:none; color:white; margin-bottom:10px; width:100px; height:30px;">SIGN UP</button></center>
				</form>
			</div>
		</div>
	</body>
</html>