<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>LoginResult</title>
</head>
<body>
	<h1>LoginResult</h1>

    <form action="./" method="get">
    	결과: ${result} <br>
        <button type="submit">홈으로</button>
    </form>
</body>
</html>
