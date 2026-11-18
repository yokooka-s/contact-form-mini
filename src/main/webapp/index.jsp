<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // http://localhost:8080/contact-form/ を開いたときに、入力画面（/contact/input）へ移動させる
    response.sendRedirect(request.getContextPath() + "/contact/input");
%>
