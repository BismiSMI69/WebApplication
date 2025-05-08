<%-- 
    Document   : Login
    Created on : 13 Apr 2025, 12.36.50
    Author     : Bismi
--%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login - Gojo Satoru Style</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap"
      rel="stylesheet"
    />
    <style>
      body {
        margin: 0;
        padding: 0;
        font-family: "Orbitron", sans-serif;
        background: url("https://i.pinimg.com/originals/b7/30/72/b73072bc58a29992180a3ccf61b24525.jpg")
          no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: white;
      }

      .login-box {
        background: rgba(0, 0, 0, 0.8);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 0 15px rgba(0, 255, 255, 0.6);
        width: 300px;
        text-align: center;
        animation: fadeIn 2s ease;
      }

      .login-box h2 {
        margin-bottom: 20px;
        color: #00ffff;
      }

      .login-box input[type="text"],
      .login-box input[type="password"] {
        width: 100%;
        box-sizing: border-box; /*nambah ie wungkul --------------*/
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 8px;
        background: #333;
        color: white;
      }

      .login-box button {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        box-sizing: border-box; /*nambah ie wungkul ---------------*/
        border: none;
        border-radius: 8px;
        background: linear-gradient(90deg, #00ffff, #00ccff);
        color: black;
        font-weight: bold;
        font-size: 14px; /* Adjust font size */
        cursor: pointer;
        box-shadow: 0 0 10px #00ffff;
        transition: all 0.3s ease;
      }

      .login-box button:hover {
        background: linear-gradient(90deg, #00ccff, #00ffff);
        box-shadow: 0 0 20px #00ffff, 0 0 30px #00ffff;
        transform: scale(1.05);
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(-30px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
    </style>
  </head>
  <body>
    <div class="login-box">
      <h2>Login Kan Cuy</h2>
      <form action="doLogin.jsp" method="post">
        <input type="text" name="username" placeholder="Username" required />
        <input
          type="password"
          name="password"
          placeholder="Password"
          required
        />
        <button type="submit">Submit</button>
      </form>
    </div>
  </body>
</html>


