<%-- 
    Document   : file2
    Created on : 3 Jan, 2023, 2:58:47 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body bgcolor="orange">  
    <center>
        <br><br><br>
        <h1>STUDENT DETAILS RECEIVED FROM STUDENT BEAN</h1>
        <jsp:useBean id="stud" scope="session" class="program.studentBean"/>
        <table border="2">
            <tr>
                <td>
                    Student Name:</td><td><jsp:getProperty name="stud" property="name"/>
                </td>
            </tr>
            <tr>
                <td>
                    Student USN:</td><td><jsp:getProperty name="stud" property="usn"/>
                </td>
            </tr>
            <tr>
                <td>
                    Student Branch:</td><td><jsp:getProperty name="stud" property="branch"/>
                </td>
            </tr>
            <tr>
                <td>
                    Student Email ID:</td><td><jsp:getProperty name="stud" property="email"/>
                </td>
            </tr>
            <tr>
                <td>
                    Student Contact:</td><td><jsp:getProperty name="stud" property="phone"/>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>
