<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<form method="post" action="store.jsp">
	<h1>Register in Db</h1>
	<hr>
	<h4>Student Information</h4>
	<hr>
	Hall ticket no.<input type="text" name="hallticket"><br><br>
	course<input type="text" name="course"><br><br>
	Year<input type="number" name="year"><br><br>
	Section<input type="text" name="section"><br><br>
	Branch<input type="text" name="branch"><br><br>
	Gender<input type="text" name="gender" placeholder="Male/Female"> <br><br>
	Date Of Birth <input type="date" name="DOB"><br><br> 
	<hr>
	<h4>Academic Information</h4>
	<hr>
	10TH Grade <input type="text" name="tenth"> <br><br>
	Intermediate <input type="text" name="inter"> <br><br>
	<hr>
	<h4>Proctor Information</h4>
	<hr>
	Proctor Name <input type="text" name="proctor"> <br><br>
	Proctor No. <input type="text" name="phone"> <br><br>
	<hr>
	<h4>Attendance Percentage</h4>
	<hr>
	Attendance <input type="text" name="attendance"> <br><br>
	<input type="submit" value="register">
	</form>
	
</body>
</html>