<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.sql.Date"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
	<%!
		String DRIVER="com.mysql.cj.jdbc.Driver";
		String URL="jdbc:mysql://localhost:3306/ass3_data";
		String USER = "admin";
		String PSWD = "admin";
		ResultSet rs = null;	
		String GET="select * from students where students.hallticketno=?";
	%>
	<% 
		Connection con=null;
		try {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL,USER,PSWD);
		PreparedStatement stmt=con.prepareStatement(GET,Statement.RETURN_GENERATED_KEYS);
		stmt.setString(1, request.getParameter("rollno"));
		rs=stmt.executeQuery();
		ResultSetMetaData metadata = rs.getMetaData();
		if(rs.next()){
			int n=metadata.getColumnCount();
			for(int i=0;i<n;i++){
				out.println(metadata.getColumnName(i+1)+" : "+rs.getString(i+1)+"<br>");
			}
			return ;
		}
		con.close();
		out.println("Student not found");
		}catch(Exception e) {
			e.printStackTrace();
		}
%>
</body>
</html>