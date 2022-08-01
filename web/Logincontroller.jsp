

<%@page import="Dao.UsersDao"%>
<%@page import="Domain.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        <%
            
            String email = request.getParameter("email");
            String pwd = request.getParameter("psw");
            
            
            List<User> u = new ArrayList<User>();
            u = new Dao.UsersDao().findAll();
            
               
            int x = 0;

            for (User dn : u) {
                if (email.equals(dn.getEmail()) && pwd.equals(dn.getPassword())) {         
                        x = 1;
                        User p = new UsersDao().search(email);
                        session.removeAttribute("validatte");                        
                        session.setAttribute("User", p);
                        response.sendRedirect("UserAccount.jsp");

                    }
                
            }
            if (x == 0) {
                session.setAttribute("validatte", "invalid username or password");
                response.sendRedirect("Login.jsp");
            }
            
    
        %>
    </body>
</html>
