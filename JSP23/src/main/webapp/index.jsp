<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>EL복습</title>
	</head>
	<body>
		<div id='wrap'>
			<form method="get" action="test.jsp">
				아이디 : <input type="text" name="user"><br>
				비밀번호 : <input type="password" name="pw">
				<hr>
				좋아하는 계절<br>
				<input type="checkbox" name="season" value="spring">봄
				<input type="checkbox" name="season" value="summer" checked>여름
				<input type="checkbox" name="season" value="fall">가을
				<input type="checkbox" name="season" value="winter">겨울
				<hr>
				<input type="submit" value="전송">
			</form>
			<hr>
			<form method='get' action='result.jsp'>
				<input type="text" name="first">
				+
				<input type="text" name="second">
				<input type="submit" value="곗나">
			</form>
		</div>
	</body>
</html>