<%-- 
    Document   : login
    Created on : 17 Jan, 2023, 2:33:19 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String user="ADMIN";
           String pass="vcet123";
           String name=(request.getParameter("user")).trim();
           String psw=(request.getParameter("pass")).trim();
           if(name.equals(user)&&(psw.equals(pass))){
        %>
        <h1>
            <center>
                WELCOME TO MAIN PAGE
                <P>
                   User Successfully logged in
                <form action="Direct.jsp">
                    <input type="submit" value="Get Error" />
                </form>
                </P>
                <p>
                    <a href="Home.jsp">Back</a>
                </p>
            </center>
        </h1>
        <%  }else{ %>
        <h1><b><i>Invalid User</i></b></h1>
        <% } %>
    </body>
</html>
