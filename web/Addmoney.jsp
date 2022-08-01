

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
               
                 int userid = Integer.parseInt(request.getParameter("id"));
                int amount = Integer.parseInt(request.getParameter("amount"));
                UsersDao ud=new UsersDao();
                ud.AddAmount(userid, amount);
            response.sendRedirect("UserAccount.jsp");
            %>
    </body>
</html>
