<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.sql.Date"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
	String DRIVER="com.mysql.cj.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/ass3_data";
	String USER = "admin";
	String PSWD = "admin";
	String Insert = "insert into students(hallticketno,course,year,section,branch,gender,dateofbirth,tenth,intermediate,proctorname,proctorno,attendance) values(?,?,?,?,?,?,?,?,?,?,?,?)";
%>

<% 
		Connection con=null;
		try {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL,USER,PSWD);
		PreparedStatement stmt=con.prepareStatement(Insert,Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1, request.getParameter("hallticket"));
		stmt.setString(2, request.getParameter("course"));
		stmt.setString(3, request.getParameter("year"));
		stmt.setString(4, request.getParameter("section"));
		stmt.setString(5, request.getParameter("branch"));
		stmt.setString(6, request.getParameter("gender"));
		stmt.setString(7, request.getParameter("DOB"));
		stmt.setString(8, request.getParameter("tenth"));
		stmt.setString(9, request.getParameter("inter"));
		stmt.setString(10, request.getParameter("proctor"));
		stmt.setString(11, request.getParameter("phone"));
		stmt.setString(12, request.getParameter("attendance"));
		int val=stmt.executeUpdate();
		System.out.println(val);
		con.close();
		out.println("Register was successful");
		}catch(Exception e) {
			e.printStackTrace();
		}
%>

</body>
</html>