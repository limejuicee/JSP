<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원가입</title>
		<style>
			#wrap {
				border : 5px solid gray;
				width : 500px;
				margin : 0 auto;
				padding : 40px;
			}
			span {
				display : inline-block;
				width : 80px;
				padding : 5px;
			}
			#sub {
				display : block;
				width : 200px;
				margin : 50px auto;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="register.jsp">
				<span>아이디 : </span> <input type="text" name="id"><br>
				<span>비밀번호 : </span> <input type="password" name="pw"><br>
				<span>이름 : </span> <input type="text" name="nm"><br>
				<span>이메일 : </span> <input type="text" name="em"><br>
				<span>연락처 : </span> <input type="text" name="ph"><br>
				<span>주소 : </span> <input type="text" name="ad"><br>
				<input id="sub" type="submit" value="회원가입">
			</form>
		</div>
	</body>
</html>