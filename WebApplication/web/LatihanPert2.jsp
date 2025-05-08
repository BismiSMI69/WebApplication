<%-- 
    Document   : LatihanPert2
    Created on : 8 Mei 2025, 22.20.15
    Author     : Bismi
--%>

<%-- 1. bagian deklarasi & import --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%-- 2. bagian pengolahan dan persiapan data --%>
<%
    // DEKLARASI OBJEK DAN VARIABEL
    
    // PENGOLAHAN DATA    
    // Siapkan semua variabel yang akan ditampilkan/digunakan pada bagian BODY
%>
<%-- DOKUMEN HTML --%>
<!DOCTYPE html>
<html>
    <%-- 3. DOKUMEN HTML: HEAD --%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Judul Halaman</title>
    </head>
    <%-- 4. DOKUMEN HTML: BODY --%>
    <body>
        <%-- sebisa mungkin, pada bagian BODY tidak ada proses eksekusi SQL --%>
    </body>
</html>
<%
    String nama = "Budi";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Judul Halaman</title>
    </head>
    <body>
        Halo <%= nama %>
    </body>
</html>
