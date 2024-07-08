<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>간단한 회원가입</title>
		<style>
			#wrap {
				width:300px;
				border:5px solid lightgray;
				padding : 30px;
				margin:0 auto;
			}
			input[name=id] {
				margin-left : 48px;
				}
			input[name=nm] {
				margin-left : 32px;
				}
			input[name=phone] {
				margin-left : 16px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="main.jsp">
				<h1>회원가입</h1>
				<hr>
				ID : <input type="text" name="id" placeholder="아이디 입력"><br>
				비밀번호 : <input type="password" name="pw" placeholder="비밀번호"><br>
				이름 : <input type="text" name="nm" placeholder="홍길동"><br>
				연락처 : <input type="text" name="phone" placeholder="000-0000-0000"><br>
				<hr>
				선호색상 : <input type="color" name="c">
				<hr>
				<fieldset>
					<legend>관심분야</legend>
					JAVA<input type="radio" name="subject" value="java">
					HTML <input type="radio" name="subject" value="html">
					CSS <input type="radio" name="subject" value="CSS">
				</fieldset>
				
				<fieldset>
					<fieldset>
						<legend>
						JSP <input type="checkbox" name="jsp">
						java <input type="checkbox" name="java">
						</legend>
					</fieldset>
					<legend>관심분야</legend>
					JAVA<input type="radio" name="subject1" value="java">
					HTML <input type="radio" name="subject1" value="html">
					CSS <input type="radio" name="subject1" value="CSS">
				</fieldset>
				<input type="hidden" name="hid" value="요주의">
				<input type="submit" value="회원가입!">
				
			</form>
		</div>
	</body>
</html>