<%-- 
    Document   : classuser2
    Created on : 24 Apr 2025, 16.15.54
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="belajarjsp.User" %>
<%
    // contoh array data
    User[] daftar = { 
        new User("Kagisaki","Nobara","P"),
        new User("Gojo","Satoru","L"),
        new User("Fushiguro","Megumi","L")
    };
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- mencetak elemen array secara manual -->
        <%= daftar[0].namaLengkap() %><br>
        <%= daftar[1].namaLengkap() %><br>
        <%= daftar[2].namaLengkap() %><br>
    </body>
</html>

