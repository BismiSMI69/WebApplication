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
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Selamat Datang Elegan</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0; padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #000c1a, #001a33, #002e4d);
            font-family: 'Poppins', sans-serif;
            color: #d9f6ff;
            overflow: hidden;
            height: 100vh;
            position: relative;
        }

        .container {
            max-width: 720px;
            margin: 120px auto;
            padding: 60px;
            background: rgba(0, 12, 50, 0.75);
            border-radius: 25px;
            box-shadow: 0 0 25px rgba(0, 195, 255, 0.4), inset 0 0 20px rgba(0, 140, 255, 0.3);
            text-align: center;
            backdrop-filter: blur(10px);
            z-index: 10;
        }

        h1 {
            font-family: 'Orbitron', sans-serif;
            font-size: 3.2em;
            color: #00e1ff;
            text-shadow: 0 0 20px #00e1ff, 0 0 30px #0077aa;
            animation: glowTitle 2.5s ease-in-out infinite alternate;
        }

        h3 {
            font-size: 1.3em;
            color: #ffffff;
            margin-top: 20px;
            text-shadow: 0 0 10px #00eaff;
        }

        .icon {
            font-size: 5.5em;
            margin-bottom: 25px;
            color: #00d5ff;
            text-shadow: 0 0 25px #00d5ff, 0 0 50px #00ffff;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .icon:hover {
            transform: scale(1.1) rotate(5deg);
        }

        @keyframes glowTitle {
            from {
                text-shadow: 0 0 10px #00e1ff, 0 0 20px #00aaff;
            }
            to {
                text-shadow: 0 0 30px #00ffff, 0 0 60px #0077aa;
            }
        }

        /* Partikel LED Blue */
        .particle {
            position: absolute;
            width: 6px;
            height: 6px;
            background: #00d0ff;
            border-radius: 50%;
            animation: blink 2.5s infinite alternate;
        }

        @keyframes blink {
            0% { opacity: 0.1; transform: scale(0.8); }
            50% { opacity: 1; transform: scale(1.3); }
            100% { opacity: 0.3; transform: scale(1); }
        }

        /* Salju Turun */
        .snowflake {
            position: fixed;
            font-size: 20px;
            animation: snowFall linear infinite;
            pointer-events: none;
            color: #ffffff;
            text-shadow: 0 0 10px #00e6ff;
            z-index: 1;
        }

        @keyframes snowFall {
            0% {
                transform: translateY(-100px) translateX(0) rotate(0deg);
                opacity: 0.9;
            }
            100% {
                transform: translateY(110vh) translateX(30px) rotate(360deg);
                opacity: 0;
            }
        }

        /* Cahaya pantulan bawah */
        body::after {
            content: '';
            position: fixed;
            bottom: 0;
            width: 100%;
            height: 120px;
            background: radial-gradient(ellipse at center, rgba(0,255,255,0.15) 0%, rgba(0,0,0,0) 80%);
            z-index: 2;
            pointer-events: none;
        }
    </style>
</head>
<body>

    <!-- Musik Background -->
    <audio autoplay loop>
        <source src="https://www.bensound.com/bensound-music/bensound-slowmotion.mp3" type="audio/mp3">
    </audio>

    <!-- Suara Klik -->
    <audio id="clickSound">
        <source src="https://www.myinstants.com/media/sounds/mouse-click.mp3" type="audio/mp3">
    </audio>

    <!-- Konten Utama -->
    <div class="container">
        <div class="icon" onclick="document.getElementById('clickSound').play()">❄️</div>
        <h1>Selamat Datang</h1>
        <h3><%= user.namaBelakang %>, <%= user.namaDepan %></h3>
        <h3>Nama Lengkap: <%= user.namaLengkap() %></h3>
        <h3>Jenis Kelamin: <%= user.jenisKelamin.equals("L") ? "Laki-laki" : "Perempuan" %></h3>
    </div>

    <!-- Salju + LED -->
    <script>
        // LED Partikel
        for (let i = 0; i < 50; i++) {
            let p = document.createElement('div');
            p.className = 'particle';
            p.style.left = Math.random() * 100 + 'vw';
            p.style.top = Math.random() * 100 + 'vh';
            p.style.animationDuration = (1.5 + Math.random() * 3) + 's';
            document.body.appendChild(p);
        }

        // Salju Berjatuhan
        const snow = ['❄️', '❅', '❆'];
        for (let i = 0; i < 35; i++) {
            let s = document.createElement('div');
            s.className = 'snowflake';
            s.textContent = snow[Math.floor(Math.random() * snow.length)];
            s.style.left = Math.random() * 100 + 'vw';
            s.style.animationDuration = (6 + Math.random() * 5) + 's';
            s.style.animationDelay = (Math.random() * 5) + 's';
            s.style.fontSize = (18 + Math.random() * 10) + 'px';
            s.style.opacity = Math.random() * 0.8 + 0.2;
            document.body.appendChild(s);
        }
    </script>
</body>
</html>














