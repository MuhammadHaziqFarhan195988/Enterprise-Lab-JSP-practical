<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
String id = request.getParameter("id");
	String name = request.getParameter("name");
	String department = request.getParameter("department");
	String science = request.getParameter("science");
	String math = request.getParameter("math");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/db1?useTimezone=true&serverTimezone=UTC", "root", "Sean990507");
	PreparedStatement stmt = conn.prepareStatement("insert into student(id, name, department, science, mathematics) values (?,?,?,?,?,?)");
	
	response.sendRedirect("message.html");
%>
	<body>

</body>
</html>