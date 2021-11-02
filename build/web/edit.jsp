<%-- 
    Document   : edit
    Created on : Nov 1, 2021, 9:51:26 PM
    Author     : macintoch
--%>
<%@page import="servlet.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student Page</title>
    </head>
    <%Student emp = (Student)session.getAttribute("student"); %>
    <body>
        <h1>Edit Student</h1>
        <form name="updateStudent" action="EditStudent">
            ID: <input type="text" name="id" value="" size="10" />
            </br>
            Name: <input type="text" name="name" value="" size="40" />
            </br>
            GPA <input type="text" name="gpa" value="" size="10" />
            </br>
            <input type="submit" value="Submit" name="submit" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
            <br>
        <jsp:include page="show.jsp" flush="true" />
    </body>
</html>
