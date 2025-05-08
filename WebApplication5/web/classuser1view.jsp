<%-- 
    Document   : classuser1view
    Created on : 8 Mei 2025, 16.48.07
    Author     : Bismi
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="belajarjsp.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gojo Satoru</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #000000, #0f0f2f);
            color: #ffffff;
            font-family: 'Segoe UI', sans-serif;
            text-align: center;
        }

        .gojo-container {
            padding: 40px;
            animation: fadeIn 2s ease-in;
        }

        h1 {
            color: #1e90ff;
            font-size: 3em;
            text-shadow: 2px 2px 8px #1e90ff;
        }

        h3 {
            font-size: 1.5em;
            color: #f0f0f0;
        }

        .gojo-img {
            margin-top: 20px;
            width: 200px;
            height: auto;
            border-radius: 12px;
            box-shadow: 0 0 15px #1e90ff;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="gojo-container">
        <img src="https://i.pinimg.com/originals/3d/44/80/3d448007ae50c65a17ed5790b0e33f2b.png" alt="Gojo Satoru" class="gojo-img" />
        <h1>Hallo</h1>
        <h3><%= user.namaBelakang %>, <%= user.namaDepan %></h3>
        <h3>Nama lengkap: <%= user.namaLengkap() %></h3>
        <h3>Jenis Kelamin: <%= user.jenisKelamin.equals("L") ? "Laki-laki" : "Perempuan" %></h3>
    </div>
</body>
</html>



