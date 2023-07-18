<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/Home.css" type="text/css" />
</head>
<body>

	<div class="container">
		<div class="container1">
			
			<div id="box">
				<img alt="" src="MYICONS/home.png" id="add1">
				<a href="Home.jsp" id="home">Home</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/plus.png" id="add1">
				<a href="Addfees.jsp" id="home">Add fees</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/search2.png" id="add1">
				<a href="Search.jsp" id="home">Search Record</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/list.png" id="add1">
				<a href="" id="home">Course List</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/view all record.png" id="add1">
				<a href="view" id="home">View All Records</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/back-button.png" id="add1">
				<a href="" id="home">Back</a>
			</div>
			
			<div id="box">
				<img alt="" src="MYICONS/logout.png" id="add1">
				<a href="logout" id="home">Logout</a>
			</div>
		
		</div>
		<form  method="get" action="Searchpage">
		
			<div class="container2">
				
				<div class="heading">
				<h1 >Search Records</h1>
				</div>
				
				<hr>
					<div id="div">
						<span id="font"><b>Reciept No. :</b></span>
						<input type="number" class="box" name="recieptno"  id="input">
					</div>
					
					<div id="div">
						<span id="font">
						<input type="submit" value="Search" class="btn">
						</span>
					</div>
					
					<div id="div">
						<span id="font">
							<a href="SearchByName.jsp" id="links">SearchByName</a>
						</span>
					</div>
			</div>
	
		</form>
	</div>

</body>
</html>