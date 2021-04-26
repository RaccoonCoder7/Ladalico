<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<title>로그인 화면</title>

<script type="text/javascript">
	function checkValue() {
		inputForm = eval("document.loginInfo");
		if (!inputForm.id.value) {
			alert("아이디를 입력하세요");
			inputForm.id.focus();
			return false;
		}
		if (!inputForm.password.value) {
			alert("비밀번호를 입력하세요");
			inputForm.password.focus();
			return false;
		}
	}
</script>

</head>
<body>
	<div id="wrap">
		<form action="/login/loginPost.do" method="post" id="loginForm" onsubmit="return checkValue()">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" maxlength="50"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr>
			</table>
			<br> <input type="submit" value="로그인" />
		</form>
	</div>
</body>
</html>