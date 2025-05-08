<%-- 
    Document   : doLogin
    Created on : 13 Apr 2025, 12.50.52
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <!-- Link ke CDN SweetAlert2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Validasi login sederhana (bisa kamu ganti dengan database nanti)
    if ("Bismi Sri Mulyani Irawan".equals(username) && "1234".equals(password)) {
        // Simpan username ke session
        session.setAttribute("namauser", username);

        // Redirect ke halaman depan
        response.sendRedirect("Home.jsp");
    } else {
%>
        <!-- SweetAlert2 -->
        <script type="text/javascript">
            Swal.fire({
                icon: 'error',
                title: 'Login Gagal!',
                text: 'Username atau password salah.',
                confirmButtonText: 'Kembali ke Login',
                confirmButtonColor: '#3085d6',
                background: '#f8d7da',
                showCloseButton: true
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = 'Login.jsp';
                }
            });
        </script>
<%
    }
%>
</body>
</html>



