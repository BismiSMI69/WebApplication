<%-- 
    Document   : classuser1
    Created on : 24 Apr 2025, 16.15.35
    Author     : Bismi
--%>

<%@page import="belajarjsp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = new User("Bismi","Irawan","P");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menggunakan class User</h1>
        <h3><%= user.namaBelakang %>, <%= user.namaDepan %></h3>
        <h3>Nama lengkap: <%= user.namaLengkap() %></h3>
        <h3>Jenis Kelamin : <%= user.jenisKelamin %></h3>
        
                
    </body>
</html>

