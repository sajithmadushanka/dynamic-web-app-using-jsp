<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user profile</title>
</head>
<body>
	<h2>user profile</h2>
	 
	 	<p>first name : ${user.firstName}</p>
	 	<p>last name : ${user.lastName}</p>
	 	<p>last name : ${user.email}</p>
	 	
	 	<button>Register for event</button>
	
</body>
</html>