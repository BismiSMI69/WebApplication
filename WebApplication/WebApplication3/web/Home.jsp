<%-- 
    Document   : Home
    Created on : 13 Apr 2025, 12.54.29
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String namauser = (String) session.getAttribute("namauser");
    if (namauser == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Domain Expansion - Gojo</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&display=swap" rel="stylesheet">
    
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Orbitron', sans-serif;
            background: url('https://i.pinimg.com/originals/b7/30/72/b73072bc58a29992180a3ccf61b24525.jpg') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            color: white;
        }

        .container {
            background: rgba(0, 0, 0, 0.75);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 0 30px rgba(0, 255, 255, 0.7);
            text-align: center;
            width: 90%;
            max-width: 500px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h1 {
            font-size: 32px;
            color: #00ffff;
            margin-bottom: 20px;
            letter-spacing: 2px;
        }

        .username {
            font-size: 22px;
            margin-bottom: 30px;
        }

        .logout {
            text-decoration: none;
            background: #00ffff;
            color: black;
            padding: 12px 30px;
            border-radius: 10px;
            font-weight: bold;
            font-size: 16px;
            transition: 0.3s ease-in-out;
        }

        .logout:hover {
            background-color: #00cccc;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Partikel efek (opsional) */
        .glow {
            position: absolute;
            width: 100px;
            height: 100px;
            background: rgba(0, 255, 255, 0.3);
            border-radius: 50%;
            animation: float 6s ease-in-out infinite;
            z-index: 0;
        }

        .glow:nth-child(1) {
            top: 20%;
            left: 10%;
            animation-delay: 0s;
        }

        .glow:nth-child(2) {
            bottom: 15%;
            right: 15%;
            animation-delay: 3s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) scale(1); }
            50% { transform: translateY(-20px) scale(1.1); }
        }
    </style>
</head>
<body>
    <!-- Glow Animations -->
    <div class="glow"></div>
    <div class="glow"></div>

    <div class="container">
        <h1>Welcome to Domain Expansion</h1>
        <div class="username">Lord <strong><%= namauser %></strong></div>
        <a class="logout" href="Logout.jsp">Logout</a>
    </div>
</body>
</html>

