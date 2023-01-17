<%-- 
    Document   : Home
    Created on : 17 Jan, 2023, 2:27:05 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true" language="java" import="java.util.Date" info="Student Information" session="true" isErrorPage="true" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN Page</title>
    </head>
    <body>
        <form action="login.jsp">
            <table>
                <tr>
                    <td>Enter Name:</td>
                    <td><input type="name" name="user"/></td>
                </tr>
                <tr>
                    <td>Enter PAssword:</td>
                    <td><input type="password" name="pass" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="login" name="submit"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
