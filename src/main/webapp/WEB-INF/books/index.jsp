<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>All Books</h1>
	<table>
	    <thead>
	        <tr>
	            <th>ID</th>
	            <th>Title</th>
	            <th>Language</th>
	            <th>Number of Pages</th>
	        </tr>
	    </thead>
	    <tbody>
         <!-- loop over all the books to show the details as in the wireframe! -->
         <c:forEach var="book" items="${books}">
         	<tr>
	         	<td><c:out value="${book.id}" /></td>
	         	<td><a href="/books/${book.id}" ><c:out value="${book.title}" /></a></td>
	         	<td><c:out value="${book.language}" /></td>
	         	<td><c:out value="${book.numberOfPages}" /></td>
         	</tr>
         </c:forEach>
	    </tbody>
	</table>
</body>
</html>