<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
     <base href="/event-planning-system/User/">
    <link rel="stylesheet" href="CSS/registration.css">
</head>
<body>
    <div class="form-outer">
        <h1>Login</h1>
        <div class="form-inner">
            <div class="left-side-form">
                <form action="${pageContext.request.contextPath}/UserLoginServlet" method="POST">
                    <label for="email">Email</label> <br>
                    <input type="text" name="email" required>
                    <br> <br>
                    <label for="password">Password</label> <br>
                    <input type="password" name="password" required>
                    <br>
                    <button type="submit" value ="submit">Sign Up</button> <br>
                    <hr>
                    <p>or sign up with</p>
                     <br>
                    <div class="last-row">
                         <div class="box">
                             <img src="../assets/images/social-icon/google.png" alt="">
                         </div>
                         <div class="box">
                             <img src="../assets/images/social-icon/github.png" alt="">
                         </div>
                         <div class="box">
                             <img src="../assets/images/social-icon/fb.png" alt="">
                         </div>
                    </div>
                 </form>
            </div>
            <div class="right-side-img">
                <div class="text">
                    <h2>Lets Enjoy Again</h2>
                    <h3>with lovers</h3>
                </div>
                <img src="../assets/images/register-form-img.jpg" alt="">
                
            </div>
        </div>
       
    </div>
 

</body>
</html>

 <%

if (request.getAttribute("invalidPs") != null) {
%>
<script>
   alert("Password is invalid. Please check and try again!");
</script>
<%
    // Clear the attribute to prevent it from showing on page refresh
   request.removeAttribute("invalidPs");
}
%>
<%
if(request.getAttribute("emailValidation") !=  null){
	%>
	<script type="text/javascript">
		alert("invalid email!");
	</script>
<%
request.removeAttribute("emailValidation");
}
%>
