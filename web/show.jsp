<%-- 
    Document   : show
    Created on : Nov 1, 2021, 9:49:16 PM
    Author     : macintoch
--%>

<%@page import="java.util.List"%>
<%@page import="servlet.StudentTable"%>
<%@page import="java.util.Iterator"%>
<%@page import="servlet.Student"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Student Page</title>
    </head>
    
    <jsp:useBean id="emp" class="servlet.Student" scope="request"/>
    <%
            List<Student> empList = StudentTable.findAllStudent();
            Iterator<Student> itr = empList.iterator();
     %>
     
    <body>
        <h1>Show Student</h1>
             
 <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
          </tr>
          <%
                while(itr.hasNext()) {
                   emp = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ emp.getId() + "</td>");
                   out.println("<td> "+ emp.getName() + "</td>");
                   out.println("<td> "+ emp.getGpa() + "</td>");
                   out.println("<tr>");
               }
          %>
 </table>
 
 <a href="index.html">Back to Menu</a>
 
    </body>
</html>
