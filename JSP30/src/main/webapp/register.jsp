<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>여기는 회원가입 페이지 입니다</h1>
		<form method="post" action="join.do" name="frm">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="nm"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="id">*
						<input type="hidden" name="reId">
						<input type="button" value="중복확인" onclick="idCheck()">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="pw"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pwd_check">*</td>
				</tr>				
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>등급</td>
					<td>
						<input type="radio" name="admin" value="1">관리자<br>
						<input type="radio" name="admin" value="0" checked>일반회원 
					</td>
				</tr>
				<tr>
					<td>입력</td>
					<td>
						<input type="submit" value="회원가입" onclick="joinCheck()">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
		<script>
			function idCheck(){
				if(document.frm.id.value=="") {
					alert("아이디를 입력하셔야 중복확인이 가능합니다");
					document.frm.id.focus();
				}
				var url="idCheck.do?id="+document.frm.id.value; //get통신 경로
				var popupX=(window.screen.width/2)-(450/2);		//기준좌표에서 X방향으로 화면이 등장하는 위치
				var popupY=(window.screen.height/2)-(200/2);	//기준좌표에서 Y방향으로 화면이 등장하는 위치
				window.open(url, "_black_1", "toolbar=no, scrollbar=no, width=450, height=200, left="+popupX+", top="+popupY);
			}
			function joinCheck() {
				if(document.frm.nm.value.length==0) {
					alert("이름을 입력해 주세요");
					document.frm.nm.focus();
					return false;
				}
				if(document.frm.id.value.length==0) {
					alert("아이디를 입력해 주세요");
					document.frm.userId.focus();
					return false;
				}
				if(document.frm.id.value.length<4) {//아이디 작명 규칙 확인}
				alert("아이디는 반드시 4문자 이상으로 만들어 주셔야 합니다");
				document.frm.userId.focus();
				return false;
				}
				if(document.frm.pw.value=="") {
					alert("암호는 반드시 입력하셔야 합니다");
					document.frm.pw.focus();
					return false;
				}
				if(document.frm.pw.value!=document.frm.pwd_check.value) {
					alert("비밀번호 확인을 다시 해주세요");
					document.frm.pwd.focus();
				}
				if(document.frm.reId.value.length==0) {
					alert("아이디 중복확인이 필요합니다");
					document.frm.userId.focus();
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>