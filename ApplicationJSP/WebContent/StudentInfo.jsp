<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>  
<body>  
<%
	Class.forName("com.mysql.jdbc.Driver");	
Connection con=null;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?useTimezone=true&serverTimezone=UTC", "root", "1234");		
Statement st=con.createStatement();	
String id=request.getParameter("id");  	
String name=request.getParameter("name");
String department=request.getParameter("department");
String mathematics=request.getParameter("Maths");
String science=request.getParameter("Science");
String computerScience=request.getParameter("computerScience");

ResultSet rs = st.executeQuery ("Select * from student where id = "+ id); 

out.println("Student ID1:"+ id);  

out.println("Student name:"+ name);  
out.println("Student department:"+ department);  
out.println("Average Mark for Mathematics: "+mathematics);
out.println("Average Mark for Science: "+science);
out.println("Average Mark for Computer Science: "+computerScience);
%>
}

</body>  
</html>  
