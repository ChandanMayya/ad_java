<%-- 
    Document   : Front
    Created on : 26 Dec, 2022, 2:09:47 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page for get form values</title>
    </head>
    <body>
        <h1>WELCOME TO VIVEKANANDA COLLEGE OF ENGINEERING AND TECHNOLOGY</h1>
        <% 
            String s1=request.getParameter("field1");
            String s2=request.getParameter("field2");
            Integer.parseInt(s1);
            Integer.parseInt(s2);
            String submit=request.getParameter("submit");
            if(submit.equals("ADD"))
            {
        %>
        <jsp:forward page="/Add.jsp"/>
        <%
            }
else if(submit.equals("SUB"))
{
%>
<jsp:forward page="/Sub.jsp"/>
        <%
            }
else
{
%>
<jsp:forward page="/Home.html"/>
        <%
            }
%>

    </body>
</html>
