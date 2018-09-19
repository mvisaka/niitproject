<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
	
    color:white;
}
form {border: 0px solid #f1f1f1;}

input[type=text], input[type=password], input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 0 px solid #ccc;
    box-sizing: border-box;
}
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 75%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
button:hover {
    opacity: 0.8;
}

.container {
    padding: 0px;
}
hr {
    
    margin-bottom: 25px;
    width: 95%;
}
span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>


 <form:form method="post" action="save" modelAttribute="Register">  
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="name"><b>Name</b></label><br>
	<form:input type="text" path="UserName" placeholder="Enter Name" name="name" />
	<br>
	 <label for="location"><b>UserLocation</b></label><br>
	<form:input type="text" path="UserLocation" placeholder="Enter Location" name="location" />
	<br>
	 <label for="age"><b>UserAge</b></label><br>
	<form:input type="text" path="UserAge" placeholder="Enter Age" name="age" />
	<br>
    <label for="email"><b>Email</b></label><br>
    <form:input type="text" path="Email" placeholder="Enter Email" name="email" />
<br>
    <label for="psw"><b>Password</b></label><br>
    <form:input type="password" path="Password" placeholder="Enter Password" name="psw" />
<br>
    <label for="psw-repeat"><b>Confirm Password</b></label><br>
    <form:input type="password" path="Password" placeholder="Confirm Password" name="psw-repeat" />
    <br>
    <label for="mobile number"><b>Mobile Number</b></label><br>
    <form:input type="number" path="PhoneNumber" placeholder="Mobile Number" name="number" />
    <br>
    <label><b>Gender</b></label><br>
    <div class="radio"><form:radiobutton path="UserGender" value="Male" label="Male"/><br>
    <form:radiobutton path="UserGender" value="Female" label="Female"/></div>
    
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms and Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
<!--   <div class="container signin"> -->
<!--     <p>Already have an account? <a href="#">Sign in</a></p> -->
<!--   </div> -->
</form:form>
<%-- <jsp:include page="CommonFooter.jsp"/> --%>
</body>
</html>
