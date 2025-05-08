<%-- 
    Document   : Date
    Created on : 8 Mei 2025, 23.13.18
    Author     : Bismi
--%>

<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Date sekarang = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    String tanggalWaktu = formatter.format(sekarang);

    Random rand = new Random();
    int angkaKeberuntungan = rand.nextInt(100) + 1; // 1–100
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>datetime1.jsp</title>
    </head>
    <body>
        <b>Sekarang <%= tanggalWaktu %></b><br>
        <b>Angka keberuntunganmu hari ini <%= angkaKeberuntungan %></b>
    </body>
</html>
