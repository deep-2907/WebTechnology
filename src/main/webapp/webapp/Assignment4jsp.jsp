<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String Fname = (String)session.getAttribute("Fname");
	String Lname = (String)session.getAttribute("Lname");
	String Email = (String)session.getAttribute("Email");
	String Mobile = (String)session.getAttribute("Number");
	String Gender = (String)session.getAttribute("Gender");
	String Password = (String)session.getAttribute("Password");
	
	
	%>
	
<h2>
					<%=Fname%><br>
					<%=Lname%><br>
					<%=Email%><br>
					<%=Mobile%><br>
					<%=Gender%><br>
					<%=Password%><br>





</h2>
</body>

</html>