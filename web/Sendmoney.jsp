

<%@page import="Dao.UsersDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String email = request.getParameter("receiveremail");
                int amount = Integer.parseInt(request.getParameter("sendamount"));
                int userid = Integer.parseInt(request.getParameter("userid"));
                UsersDao ud=new UsersDao();
                ud.SendAmount(email, amount);
                ud.ReduceAmount(userid, amount);
            response.sendRedirect("UserAccount.jsp");
            %>
    </body>
</html>
