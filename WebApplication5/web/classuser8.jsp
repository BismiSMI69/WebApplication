<%-- 
    Document   : classuser8
    Created on : 24 Apr 2025, 16.47.40
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] daftar = {"Gojo Satoru", "Itadori Yuji", "Fushiguro Megumi", "Kugisaki Nobara", "Geto Suguru"};
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tabel Karakter JJK</title>
    <style>
        body {
            background-color: #121242;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
            padding: 40px;
        }

        table {
            border-collapse: collapse;
            width: 60%;
            margin: auto;
            background: #1e1e4a;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px #00bcd4;
        }

        th, td {
            padding: 12px 18px;
            text-align: center;
            border-bottom: 1px solid #3949ab;
        }

        th {
            background-color: #00bcd4;
            color: #000;
        }

        tr:hover {
            background-color: #283593;
        }
    </style>
</head>
<body>
    <h2 style="text-align:center; color:#00e5ff;">🧿 Daftar Karakter dalam Tabel</h2>
    <table>
        <tr>
            <th>No</th>
            <th>Nama Karakter</th>
        </tr>
        <%
            for (int i = 0; i < daftar.length; i++) {
        %>
        <tr>
            <td><%= (i + 1) %></td>
            <td><%= daftar[i] %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

