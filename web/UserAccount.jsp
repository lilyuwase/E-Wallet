

<%@page import="Dao.UsersDao"%>
<%@page import="Domain.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
                    User us=(User) request.getSession().getAttribute("User");
                    int id = us.getId();
                   // String email = us.getEmail();
                %>
            <table>
                 <tr>
                    <td>Current Amount</td>       
                </tr>
                <tr>
                   <%
                    User uamount = new UsersDao().findBYId(id);
                    %>
                    <td><%= uamount.getAmount()%></td>
                </tr>
            </table>
        
       <% //Add money%>
        <form action="Addmoney.jsp" method="post">
            <table>
               
                <tr>
                    <td><label for="Add">Your id</label></td>
                    <td><input type="text" id="id" name="id" value="<%= uamount.getId()%>" readonly=""></td>
                </tr>
                <tr>
                    <td><label for="Add">Your Name</label></td>
                    <td><input type="text" id="name" name="name" value="<%= uamount.getName()%>" readonly=""></td>
                </tr>
                <tr>
                    <td><label for="Add">Your Email</label></td>
                    <td><input type="text" id="email" name="email"  value="<%= uamount.getEmail()%>" readonly=""></td>
                </tr>
                 <tr>
                    <td><label for="Add">Add Money</label></td>
                    <td><input type="text" id="amount" name="amount" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Add Money" name="button"></td>
                    
                </tr>
            </table>
        </form>
        
        <%//Send money%>
        <form action="Sendmoney.jsp" method="post">
            <table>
                 <tr>
                    <td><label for="Add">Sender's id</label></td>
                    <td><input type="text" id="userid" name="userid" value="<%= uamount.getId()%>" readonly=""></td>
                </tr>
                 <tr>
                    <td><label for="name">Receiver's Email</label></td>
                    <td><input type="text" id="receiveremail" name="receiveremail" required></td>
                </tr>
                
                <tr>
                    <td><label for="amount">Amount to send</label></td>
                    <td><input type="text" id="sendamount" name="sendamount" required=""></td>
                </tr>             
                <tr>
                    <td></td>
                    <td><input type="submit" value="Send" name="button"></td>                    
                </tr>
            </table>
        </form>
         <div>
                   <ul>
                    <li>
                        <a href="Login.jsp">logout</a>
                    </li>
                    </ul>
        </div>
        
    </body>
</html>
