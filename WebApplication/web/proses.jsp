<%-- 
    Document   : Proses
    Created on : 8 Mei 2025, 22.19.33
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Ambil data dari form di soal1.jsp
    String a = request.getParameter("a");
    String b = request.getParameter("b");

    // Pastikan nilai tidak null agar tidak error
    if (a == null) {
        a = "Tidak ada nilai";
    }
    if (b == null) {
        b = "Tidak ada nilai";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hasil Input</title>
    </head>
    <body>
        A = <%= a %><br>  <!-- Menampilkan nilai A -->
        B = <%= b %><br>  <!-- Menampilkan nilai B -->
    </body>
</html>
