<%-- 
    Document   : Result
    Created on : 26 Dec, 2022, 2:27:42 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>RESULT</h1>
        <%= request.getParameter("result") %><br>
        <b>Use of include Tag</b><br>
        <jsp:include page="page1.jsp">
            <jsp:param name="Fname" value="MCA"/>
            <jsp:param name="Lname" value="VCET"/>
            <jsp:param name="Address" value="Puttur"/>
        </jsp:include>
    </body>
</html>
