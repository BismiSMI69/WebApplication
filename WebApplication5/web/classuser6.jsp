<%-- 
    Document   : classuser6
    Created on : 24 Apr 2025, 16.47.12
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
    <title>Pilih Karakter JJK</title>
    <style>
        body {
            background-color: #1a1a2e;
            color: #fff;
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background: #212b4c;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 0 20px #00bcd4;
        }

        h2 {
            color: #00e5ff;
            margin-bottom: 15px;
        }

        select {
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 8px;
            border: none;
            background: #263859;
            color: white;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>🎯 Pilih Karakter Favorit</h2>
        <select name="karakter">
        <%
            for (int i = 0; i < daftar.length; i++) {
        %>
            <option value="<%= daftar[i] %>"><%= daftar[i] %></option>
        <%
            }
        %>
        </select>
    </div>
</body>
</html>

