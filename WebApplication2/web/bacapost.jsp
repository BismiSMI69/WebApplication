<%-- 
    Document   : bacapost
    Created on : 12 Apr 2025, 09.48.40
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nama = request.getParameter("username");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Halo, <% out.println(nama); %>
    </body>
</html>
