<%-- 
    Document   : Logout
    Created on : 13 Apr 2025, 13.01.33
    Author     : Bismi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("Login.jsp");
%>

