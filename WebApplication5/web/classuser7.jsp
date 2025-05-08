<%-- 
    Document   : classuser7
    Created on : 24 Apr 2025, 16.47.28
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
    <title>List Karakter JJK</title>
    <style>
        body {
            background: #1e1e3f;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
            padding: 40px;
        }

        h2 {
            color: #7c4dff;
        }

        ul, ol {
            background: #2e2e50;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 15px #7c4dff;
        }

        li {
            margin: 8px 0;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h2>🌀 Unordered List</h2>
    <ul>
        <%
            for (int i = 0; i < daftar.length; i++) {
        %>
        <li><%= daftar[i] %></li>
        <%
            }
        %>
    </ul>

    <h2>📌 Ordered List</h2>
    <ol>
        <%
            for (int i = 0; i < daftar.length; i++) {
        %>
        <li><%= daftar[i] %></li>
        <%
            }
        %>
    </ol>
</body>
</html>

