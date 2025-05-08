<%-- 
    Document   : classuser5
    Created on : 24 Apr 2025, 16.46.58
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] daftar = {"Gojo Satoru", "Itadori Yuji", "Fushiguro Megumi", "Kugisaki Nobara", "Geto Suguru"};
    int i = 0;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daftar JJK - While Loop</title>
    <style>
        body {
            background: linear-gradient(135deg, #0f0f3e, #1c1c64);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #ffffff;
            padding: 30px;
        }

        .container {
            background-color: rgba(20, 20, 40, 0.8);
            border: 2px solid #3f51b5;
            padding: 20px;
            border-radius: 12px;
            width: 50%;
            margin: auto;
            box-shadow: 0 0 20px #3f51b5;
        }

        h2 {
            color: #03a9f4;
            text-align: center;
        }

        li {
            font-size: 18px;
            margin: 6px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>💥 Daftar Karakter Jujutsu Kaisen (While)</h2>
        <ul>
        <%
            while (i < daftar.length) {
        %>
            <li><%= daftar[i] %></li>
        <%
                i++;
            }
        %>
        </ul>
    </div>
</body>
</html>

