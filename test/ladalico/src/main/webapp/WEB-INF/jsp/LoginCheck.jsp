<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko" class=" localstorage">
<!--<%@ include file="/WEB-INF/jsp/common/Header.jsp" %>-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">    
    </head>
<body>


<%
String user_id = request.getParameter("user_id"); //ID값 가져옴
String user_pw = request.getParameter("user_pw"); //PW값 가져옴

%>

<%= user_id %>
<%= user_pw %>

<!--<%@ include file="/WEB-INF/jsp/common/Footer.jsp" %>-->
</body>

</html>


