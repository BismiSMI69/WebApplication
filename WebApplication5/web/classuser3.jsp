<%-- 
    Document   : classuser3
    Created on : 24 Apr 2025, 16.16.11
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Kagisaki","Nobara","P"),
        new User("Gojo","Satoru","L"),
        new User("Fushiguro","Megumi","P")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- loop menggunakan for -->
        <% for (int i = 0; i < daftar.length; i++) { %>
            <%= daftar[i].namaLengkap() %><br>
        <% } %>
    </body>
</html>

