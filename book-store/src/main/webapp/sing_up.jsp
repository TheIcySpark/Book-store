<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="SingUp" method="POST" style="border:1px solid #ccc">
	  <div class="container">
	    <h1>Sign Up</h1>
	    <p>Please fill in this form to create an account.</p>
	    <hr>
	    
	    <label for="name"><b>name</b></label>
	    <input type="text" placeholder="Enter name" name="name" required>
	    
	    <label for="last_name"><b>last name</b></label>
	    <input type="text" placeholder="Enter last name" name="last_name" required>
	    
	    <label for="direction"><b>direction</b></label>
	    <input type="text" placeholder="Enter direction" name="direction" required>
	    
	
	    <label for="email"><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required>
	
	    <label for="password"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" required>
	
	    <div class="clearfix">
	      <button type="button" class="cancelbtn">Cancel</button>
	      <button type="submit" class="signupbtn">Sign Up</button>
	    </div>
	  </div>
	</form>
</body>
</html>