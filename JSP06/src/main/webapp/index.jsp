<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>일반 태그의 값 전송</title>
	</head>
	<body>
		<h1>index.jsp</h1>
		<form method="get" action="next.jsp">
			<p>이 데이터를 보내고 싶어요</p>
			<input type="hidden" value="이 데이터를 보내고 싶어요" name="data">
			<!-- select는 value가 없다면 option의 글씨가 전송되고 있으면 value전송 -->
			<select name="sel">
				<option value="1">HTML</option>
				<option value="2">JAVA</option>
				<option value="3">CSS</option>
				<option value="4">JAVASCRIPT</option>
			</select>
			<input type="submit" value="전송!">
			
			<hr>
			
			<input type="text" value="이름" name="nm">
			<input type="text" value="비밀번호" name="pw">
			<input type="text" value="비밀번호확인" name="pwpw">
			<input type="tel" value="연락처" name="ph">
			<input type="text" value="주소" name="adrs">
			
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
			
		
		</form>
		<script>
			let ptag=document.getElementsByTagName("p")[0];
			console.log(ptag);
			let value=ptag.innerHTML;
			console.log(value);
			
			let hidden=document.getElemetsByTagName("input")[0];
			hidden.value=value;
		</script>
	</body>
</html>