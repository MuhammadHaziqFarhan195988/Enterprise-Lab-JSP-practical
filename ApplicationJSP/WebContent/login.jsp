<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/db1?useTimezone=true&serverTimezone=UTC", "root", "1234");
    Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(
			"select * from db1.admin where username='" + username + "' and password='" + password + "'");
	
	rs.next();
	if (rs.getString("username").equals(username) && rs.getString("password").equals(password))
	{
		out.println("Welcome " + username);
		response.sendRedirect("FrontPage.html");
		
	}
	else
		out.println("Invalid login verification");
    
     %>
    
    
    
    
    
    
<!DOCTYPE html>
<html>  
<body>  
<form action="StudentInfo.jsp">  

<input type="text" name="id" value="Student ID">  
<input type="submit" value="go"><br/>  
</form>  
</body>  
</html>  