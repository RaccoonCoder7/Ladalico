<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko" class=" localstorage">

<head>
    <link rel="stylesheet" href="./lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="./css/ladalico_ys.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8" />
    <title>동숲의 라다리코</title>
    <script  type="text/javascript">

        function loginchk(){
            var regx = /^[a-zA-Z0-9]*$/;
            var id = document.login.user_id.value;
            var pass = document.login.user_pw.value;
            
            if (id == null || id.length <= 0) {
                alert("아이디를 입력하시오");
                return false;
            }
            if (!regx.test(id)){
                alert("아이디는 영어, 숫자만 입력가능합니다.");
                return false;
            }
            if (pass == null || pass.length <= 0 ) {
                alert("비밀번호를 입력하시오");
                return false;
            }
            if (!regx.test(pass)){
                alert("비밀번호는 영어, 숫자만 입력가능합니다.");
                return false;
            }
            return true;

        }
    </script>
</head>
<body>
    
<div style="margin:12px 0.5% 0px -20px; text-align:center;height:80px;">
    <h2>ladari.co</h2>
</div>
<div style="position:absolute; top:50%; left:50%; width:19%; height:80px; margin:-80px 0px 0px -200px;">

    
    <form name="login" method="post" action="LoginCheck" onsubmit="return loginchk()">
        <div class="form-group"><input type="text" class="form-control" id="id" placeholder="아이디를 입력해주세요. 제발.." name="user_id"/></div>
        <div class="form-group"><input type="password" class="form-control" id="pw" placeholder="비밀번호는 사드세요. 제발..." name="user_pw"/></div>

        <button type="submit" class="btn btn-primary">Login</button>
    </form>
     <a href="New_join">회원가입</a>
 </div>
 
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>
</body>
</html>

        