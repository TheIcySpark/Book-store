<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="post" style="border:1px solid #ccc">
	  <div class="container">
	    <h1>Login</h1>
	    <p>Please fill in this form to create an account.</p>
	    <hr>
	    
	    <label for="email"><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required>
	
	    <label for="password"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" required>
	    
	    <div class="clearfix">
	      <button type="submit" class="login_btn">Login</button>
	    </div>
	  </div>
	</form>
</body>
</html>