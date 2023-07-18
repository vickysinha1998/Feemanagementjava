<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration-Page</title>
<link rel="stylesheet" href="CSS/Style.css" type="text/css" />
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("success") %>">

<div class="container-text">
	<div id="login">
	<h1>Registration</h1>
	</div>
	<div class="Flex-box">
		<form  method="post" action="Registration"class="container">
		
			<div id="div">
			<span id="font"><b>Firstname:</b></span>
			<input type="text" class="box" name="firstname" required id="box">
			</div>
			
			<div id="div">
			<span id="font"><b>Lastname:</b></span>
			<input type="text" class="box" name="lastname" required id="box1">
			</div>
			
			<div id="div">
			<span id="font"><b>Username/email:</b></span>
			<input type="email" class="box" name="email" required id="box2">
			</div>
			
			<div id="div">
			<span id="font"><b>Mobile no:</b></span>
			<input type="Number" class="box" name="mobileno" required id="box3">
			</div>
			
			<div id="div">
			<span id="font"><b>Password :</b></span>
			<input type="Password" class="box"  name="password" required id="box4">
			</div>
			
			<div id="div">
			<span id="font"><b>Confirm-Pass :</b></span>
			<input type="Password" class="box"  name="con_password" required id="box5">
			</div>
			
			<div id="div">
			<span id="font"><b>D.O.B:</b></span> 
			<input type="date" class="box" name="dob" required id="box6">
			</div>
			
			<div id="div">
			<span id="font"><b>Gender:</b></span>
			<input type="radio" name="gender" value="male" id="box7">Male
       		<input type="radio" name="gender" value="fmale">Female
       		<input type="radio" name="gender" value="other">Other
			</div>
			
			<div id="div">
			<input type="submit" value="Register" class="btn">
			<a href="Index.jsp" id="links">Login</a>
			</div>
			
			
		</form>
	</div>
</div>

<script type="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success")
		{
		swal("Congrats","Account Created Successfully")
		}

</script>
	

</body>
</html>