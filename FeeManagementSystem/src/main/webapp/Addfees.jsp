<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Fees</title>
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
				<a href=" view" id="home">View All Records</a>
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
		
		<form  method="post" action="Addfees">
			<div class="container2">
				<div class="heading">
				<h1 >Enter Student Details</h1>
				</div>
				<hr>
			<div class="container3">
				<div class=container4>
					<div id="div">
						<span id="font"><b>Reciept No. :</b></span>
						<input type="number" class="box" name="recieptno" required id="input">
					</div>
					
					<div id="div">
						<span id="font"><b>School/College:</b></span>
						<input type="text" class="box" name="school_college" required>
					</div>
				
					<div id="div">
						<span id="font"><b>Student Name :</b></span>
						<input type="text" class="box" name="studentname" required>
					</div>
					
					 <div id="div">
						<span id="font"><b>Session :</b></span>
						<input type="number" class="box" name="session" required id="input">
						<span id="f">to</span>
						<input type="number" class="box" name="session" required id="input">
					</div>
					
					<div id="div">
						<span id="font"><b>Department :</b></span>
							<select name="department">
								<optgroup label="-select-">
									<option>MCA</option>
									<option>MBA</option>
									<option>M.sc</option>
									<option>BCA</option>
									<option>BBA</option>
									<option>B.sc</option>
								</optgroup>
							</select>
					</div>
				
				</div>
				
				
				
				<div class="container5">
				
					<div id="div">
						<span id="font"><b>Date :</b></span>
						<input type="date" class="box" name="date" required id="box6">
					</div>
				
					<div id="div">
						<span id="font"><b>Roll no. :</b></span>
						<input type="number" class="box" name="rollno" required id="input">
					</div>
					
					<div id="div">
						<span id="font"><b>Address :</b></span>
						<input type="text" class="box" name="address" required id="input">
					</div>
					
					<div id="div">
						<span id="font"><b>Mobile no. :</b></span>
						<input type="number" class="box" name="mobileno" required id="input">
					</div>
					
					<div id="div">
						<span id="font"><b>Semester :</b></span>
							<select name="semester">
								<optgroup label="-select-">
									<option></option>
									<option>i</option>
									<option>ii</option>
									<option>iii</option>
									<option>iv</option>
									<option>v</option>
									<option>vi</option>
								</optgroup>
							</select>
					</div>
					
					
				</div>
				
				</div>
				<hr>
				&nbsp
				<hr>
					<div class="container3">
					<div class="container6">
							
							<div id="div">
								<span id="font"><b>Mode Of Payment :</b></span>
									<select name="payment">
									<optgroup label="-select-">
										<option>Cash</option>
										<option>UPI</option>
										<option>Card</option>
										<option>Cheque</option>
										<option>Net Banking</option>
									</optgroup>
								</select>
							</div>
						
							<div id="div">
								<span id="font"><b>Amount. :</b></span>
								<input type="number" class="box" name="amount" required >
							</div>
				
							<div id="div">
								<span id="font"><b>CGST 9% :</b></span>
								<input type="number" class="box" name="cgst" required>
							</div>
						
							 <div id="div">
								<span id="font"><b>SGST 9% :</b></span>
								<input type="number" class="box" name="sgst" required>
							</div>
							<hr>
							<div id="div">
								<span id="font"><b>Total Amount :</b></span>
								<input type="number" class="box" name="totalamount" required>
								
								<span id="font1"><b>Total Rupees In Word :</b></span>
								<input type="text" class="box" name="amountinword" required>
							</div>
				 			<hr>
				 			
				 	
						</div>
			 			</div>
			 			<div id="div">
								<span id="font2"><b>Remarks :</b></span>
								<textarea type="text" class="box" name="remarks" required id="input1" placeholder="Text here.."></textarea>
							</div>
							
							
							<span id="font3"><b>Receiver Signature</b></span>
							<span id="font4"><b>Deposited By</b></span>
			 				
			 				<div>
			 				<input type="submit" value="Print" class="btn" id="btn" >
			 				</div>
					</div>
					
		</form>
	</div>


</body>
</html>