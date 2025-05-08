<%-- 
    Document   : DateTime
    Created on : 24 Apr 2025, 16.02.59
    Author     : Bismi
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date sekarang = new Date();
    SimpleDateFormat sdfHari = new SimpleDateFormat("EEEE");
    SimpleDateFormat sdfTanggal = new SimpleDateFormat("yyyy-MM-dd");

    int jam = sekarang.getHours();
    String keteranganWaktu = "";

    if (jam >= 0 && jam <= 9) {
        keteranganWaktu = "🌅 Pagi Ceria!";
    } else if (jam >= 10 && jam <= 14) {
        keteranganWaktu = "🌞 Siang Semangat!";
    } else if (jam >= 15 && jam <= 17) {
        keteranganWaktu = "🌇 Sore Syahdu!";
    } else {
        keteranganWaktu = "🌙 Malam Tenang~";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>⌛ Waktu Saat Ini</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Rampart+One&display=swap');

            body {
                margin: 0;
                padding: 0;
                font-family: 'Rampart One', cursive;
                background: linear-gradient(135deg, #fbc2eb, #a6c1ee);
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                overflow: hidden;
                color: #333;
            }

            .container {
                background: rgba(255, 255, 255, 0.9);
                padding: 40px 50px;
                border-radius: 24px;
                box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
                text-align: center;
                animation: fadeIn 1s ease-in-out;
                z-index: 1;
            }

            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(20px); }
                to { opacity: 1; transform: translateY(0); }
            }

            h1 {
                font-size: 28px;
                color: #f06292;
                margin-bottom: 20px;
            }

            p {
                font-size: 20px;
                margin: 12px 0;
            }

            .time-info {
                font-weight: bold;
                color: #3949ab;
                font-size: 22px;
            }

            .highlight {
                color: #ff4081;
                font-size: 24px;
            }

            .emoji {
                font-size: 28px;
            }

            .flower {
                position: absolute;
                width: 32px;
                height: 32px;
                background-image: url('https://i.ibb.co/zmnxdvz/petal.png');
                background-size: cover;
                animation: fall linear infinite;
                opacity: 0.8;
                pointer-events: none;
            }

            @keyframes fall {
                0% { transform: translateY(-40px) rotate(0deg); opacity: 1; }
                100% { transform: translateY(100vh) rotate(360deg); opacity: 0; }
            }
        </style>
    </head>
    <body>
        <audio autoplay loop>
            <source src="https://files.catbox.moe/eo1m8t.mp3" type="audio/mpeg">
            Your browser does not support the audio element.
        </audio>

        <div class="container">
            <h1 class="emoji">✨ Waktu Saat Ini ✨</h1>
            <p><span class="time-info"><%= sdfHari.format(sekarang) %>, <%= sdfTanggal.format(sekarang) %></span></p>
            <p><span class="highlight"><%= keteranganWaktu %></span><br>pukul <span class="time-info"><%= jam %>:<%= sekarang.getMinutes() %></span></p>
        </div>

        <script>
            // Animasi bunga jatuh
            function createPetal() {
                const petal = document.createElement('div');
                petal.classList.add('flower');
                petal.style.left = Math.random() * window.innerWidth + 'px';
                petal.style.animationDuration = 5 + Math.random() * 5 + 's';
                document.body.appendChild(petal);

                setTimeout(() => {
                    petal.remove();
                }, 10000);
            }

            setInterval(createPetal, 300);
        </script>
    </body>
</html>

