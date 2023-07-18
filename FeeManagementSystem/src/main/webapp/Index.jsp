<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Page</title>
<link rel="stylesheet" href="CSS/Style.css" type="text/css" />
</head>
<body>
<div class="container-text">
	<div id="login">
	<h1>Log In</h1>
	</div>
	<div class="Flex-box">
		<form  method="post" action="Login"class="container">
		
			<div id="div">
			<span id="font"><b>Username:</b></span>
			<input type="email" class="box" name="email" required>
			</div>
			
			<div id="div">
			<span id="font"><b>Password :</b></span>
			<input type="Password" class="box"  name="password" required>
			</div>
		
			<div id="div">
				<input type="submit" value="Login" class="btn">
			<a href="Registration.jsp" id="links">Register</a>
			</div>
			
			
		</form>
	</div>
</div>
</body>
</html>