<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<h1>ALL Books</h1>
	<div class="container"> 
		<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Language</th>
				<th>Number Of Pages</th>
			</tr>
		</thead>
			<c:forEach var="books" items="${books}">
		<tbody>
				<td><a href="/books/${books.id}"><c:out value="${books.id}"></c:out></a></td>
				<td><c:out value="${books.title}"></c:out></td>
				<td><c:out value="${books.language}"></c:out></td>
				<td><c:out value="${books.numberOfPages}"></c:out></td>
		</tbody>
			</c:forEach>
	</table>
	
	
	
	</div>
	
</body>
</html>