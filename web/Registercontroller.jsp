
<%@page import="Dao.UsersDao"%>
<%@page import="Domain.User"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 User cc=new User();
                cc.setName(request.getParameter("name"));
                cc.setEmail(request.getParameter("email"));
                cc.setPassword(request.getParameter("psw"));
                cc.setAmount(1000);
                UsersDao ud=new UsersDao();
                ud.add(cc);
            response.sendRedirect("Login.jsp");
            
            %>
    </body>
</html>
