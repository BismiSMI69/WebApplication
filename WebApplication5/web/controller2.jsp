<%-- 
    Document   : controller2
    Created on : 8 Mei 2025, 16.12.42
    Author     : Bismi
--%>

<%@page import="belajarjsp.Siswa"%>
<%@page import="belajarjsp.Daftar"%>
<%
    // mempersiapkan data
    Daftar daftar = new Daftar();
    Siswa siswa = new Siswa("555", "Bismi Sri Mulyani Irawan");
    Integer nilai = 100;
    
    // set attribut yang akan ditampilkan di view
    request.setAttribute("siswa", siswa);
    request.setAttribute("nilai", nilai);
    request.setAttribute("daftarsiswa", daftar.getList());
    
    // membuka view
    RequestDispatcher dispacher = request.getRequestDispatcher("view2.jsp");
    dispacher.forward(request, response);
%>