<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Data" method="post">
<label for="">First Name :</label>
<input type="text" name = "Fname"><br>
<label for="">Last Name :</label>
<input type="text" name = "Lname"><br>
<label for="">Email :</label>
<input type="email" name = "email"><br>
<label for="">Mobile:</label>
<input type="number" name = "mobile"><br>
<label for="">Gender:</label>
<label>Male</label>
<input type="radio" name = "Gender"  value="Male">
<label>Female</label>
<input type="radio" name = "Gender" value="Female"><br>
<label for="">Password :</label>
<input type="password" name = "password">
<input type="submit" name="button">
</form>

</body>
</html>

