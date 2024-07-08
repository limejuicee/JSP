<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			#wrap div{
				width:60px;
				heightt:30px;
				font-size:20px;
				font-weight:600;
				text-align:center;
				line-height:30px;
				border:2px solid gray;
			}
			#wrap div:hover{
				background-color:black;
				color:white;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form id="test" method="get" action="">
				<input type="text" name="in"><br>
				<!--  input type="submit" value="제출"><br> -->
				<!-- <button>제출</</button>  -->
				<div id="btn1">입력</div>
				<div id="btn2">조회</div>
				<div id="btn3">수정</div>
				<div id="btn4">삭제</div>
			</form>
		</div>
		<script>
			let frm=document.getElementById("test");
			let btn1=document.getElementById("btn1");
			btn1.addEventListener("click", function() {
				frm.action="insert.jsp";
				frm.submit();
			});
			
			let btn2=document.getElementById("btn2");
			btn2.addEventListener("click", function() {
				frm.action="select.jsp";
				frm.submit();				
			});
			
			let btn3=document.getElementById("btn3");
			btn3.addEventListener("click", function() {
				frm.action="update.jsp";
				frm.submit();				
			});
			
			let btn4=document.getElementById("btn4");
			btn4.addEventListener("click", function() {
				frm.action="delete.jsp";
				frm.submit();
			});

			//EL
			let num=15;
			//console.log("num은 "+num+"입니다.");
			console.log(`num은 ${num}입니다`);
		</script>
	</body>
</html>