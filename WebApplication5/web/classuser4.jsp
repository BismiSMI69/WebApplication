<%-- 
    Document   : classuser4
    Created on : 24 Apr 2025, 16.16.29
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Kagisaki","Nobara","P"),
        new User("Gojo","Satoru","L"),
        new User("fushiguro","Megumi","L")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- mencetak menggunakan for untuk setiap item pada array -->
        <% for (User user : daftar) { %>
            <%= user.namaLengkap() %><br>
        <% } %>
    </body>
</html>

