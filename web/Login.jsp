

<%@page import="Domain.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
        <link rel="stylesheet" href="bootstrap/css/style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>

    <form action="Logincontroller.jsp">
    <h1>Sign in</h1>
    <hr>
      <% String msg = (String) session.getAttribute("validatte");
                    if (msg != null) {
                %>
                <h5 id="vd"><%=msg%></h5>
                <%
                    }

                %>
    
    <label for="email">Email</label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw">Password</label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    
     <button type="submit">Sing in</button>
  <div >
    <p>Don't have an account? <a href="Register.jsp" >Register</a>.</p>
  </div>
</form>

</body>
</html>
