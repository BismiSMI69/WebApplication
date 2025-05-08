<%-- 
    Document   : classuser1controller
    Created on : 8 Mei 2025, 16.48.33
    Author     : Bismi
--%>

<%@ page import="belajarjsp.User" %>
<%
    // Inisialisasi data (Controller Logic)
    User user = new User("Bismi", "Irawan", "P");

    // Simpan ke dalam request attribute agar bisa dipakai di view
    request.setAttribute("user", user);

    // Redirect ke view JSP
    RequestDispatcher dispatcher = request.getRequestDispatcher("classuser1view.jsp");
    dispatcher.forward(request, response);
%>

