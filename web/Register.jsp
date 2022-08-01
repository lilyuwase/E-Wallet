

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="bootstrap/css/style1.css">
    </head>
    <body>
                 
           
        <div>
                   <ul>
                    <li>
                        <a href="Login.jsp">LOGIN</a>
                    </li>
                    </ul>
        </div>
    
 
        <div >
                
            <form action="Registercontroller.jsp" method="post">
            <table>
                 <tr>
                    <td><label for="name">Names</label></td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="email" id="email" name="email" required=""></td>
                </tr>
                
                <tr>
                    <td><label for="psw">Password</label></td>
                    <td><input type="password" id="psw" name="psw" required=""></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Create Account" name="button"></td>
                    
                </tr>
            </table>
        </form>

                </div>
    </body>
</html>
