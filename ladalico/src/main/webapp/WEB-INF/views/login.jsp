<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
</head>
<body>
	<h1>Login</h1>

    <form action="Login" method="post">
    	ID: <input type="text" name="id" id="id">
    	PW: <input type="text" name="pw" id="pw">
        <button type="submit">로그인</button>
    </form>
</body>
</html>
