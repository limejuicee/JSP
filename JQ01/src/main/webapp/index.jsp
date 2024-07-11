<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>제이쿼리</title>
		<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
	<p>ㅎㅇ</p>
		<script>
			//작명규칙 : 이름의 시작은 숫자로 하면 안된다
			//		 : 대소문자를 엄격하게 구별한다
			//		 : 예약어를 사용하면 안된다
			//		 : 띄어쓰기를 사용할 수 없다
			//		 : 특수문자는 $와_만 사용할 수 있다
			//jQuery는 CSS의 선택자를 이용해서 DOM을 다루는 자바스크립트의 줄임말이다
			//$("CSS선택자"); 해당 요소를 DOM을 이요해서 선택한다
		/*
		var p=document.getElementsByTagName("p")[0];
		function event() {
			this.setAttribute("style","display:none");
		}
		p.addEventListener("click", event);
		*/
		
		$("p").click(function() {
			$(this).hide();
		});
		</script>
	</body>
</html>