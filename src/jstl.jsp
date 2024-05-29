<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Data</title>
</head>
<body>
    <h1>Data from Database</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <!-- Add more columns as needed -->
        </tr>
        <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/crm" user="root"
            password="123456" />
        <sql:query dataSource="${dataSource}" var="result">
            SELECT * FROM dept;
        </sql:query>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.name}" /></td>
                <!-- Add more columns as needed -->
            </tr>
        </c:forEach>
    </table>
</body>
</html>
