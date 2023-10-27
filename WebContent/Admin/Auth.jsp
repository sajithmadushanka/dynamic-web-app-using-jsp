<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
 
<!DOCTYPE html>
<html lang="en">
<head>
<base href="/event-planning-system/Admin/">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authentication</title>
    <link rel="stylesheet" href="CSS/registration.css">
    <link rel="stylesheet" href="CSS/admin_login.css">
</head>
<body>
    <div class="form-outer">
        <h1>Authentication</h1>
        <div class="form-inner">
            <div class="left-side-form">
             <form action="${pageContext.request.contextPath}/AdminServlet" method = "post">
                    <label for="username">User name</label> <br>
                    <input type="text" name="username" required>
                    <br> <br>
                    <label for="token">Token</label> <br>
                    <input type="password" name="password" required>
                    <br>
                    <button type="submit" >Sign Up</button> <br>
                    <hr>
                        <p>forget password ?</p>
                    <hr>
                 </form>
            </div>
            
        </div>
       
    </div>
    <%
    if (request.getAttribute("error") != null) {
	%>
    <script>
       alert("usrname or token invalid!")
    </script>
	<%
    }
	%>
</body>
</html>