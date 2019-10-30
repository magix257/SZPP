<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
101 <br>


<%
	String url = "jdbc:postgresql://localhost:5432/navin";
	String username = "postgres";
	String password = "0";
	String sql = "select * from REGISTRATION ";
	Class.forName("org.postgresql.Driver");
	Connection con = DriverManager.getConnection(url, username, password);
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	rs.next();

%>

Rollno : <%=rs.getString(1) %><br>
Name : <%= rs.getString(2) %><br>
Marks : <%= rs.getString(3) %><br>
Age : <%=rs.getString(4) %><br>

</body>
</html>