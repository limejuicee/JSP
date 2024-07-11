<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>이벤트 처리</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<p>p태그를 클릭</p>
		<h1>h1태그를 더블클릭</h1>
		<input type="text" placeholder="마우스를 위로 이동">
		<h2>마우스를 밖으로 이동</h2>
		<h3>호버이벤트</h3>
		<script>
			//jQuery는 누군가 만들어준 이름이 $인 함수이니, 함수기반으로 동작하는 경우가 많다
			//document.getElementsByTagName("p")[0].addEventListener("click", function() {alert("클릭");});
			$("p").click(function() {
				alert("클릭");
			});
			$("h1").dblclick(function() {
				alert("더블클릭");
			});
			$("input").mouseenter(function() {
				alert("마우스가 내부로 이동");
			})
			$("h2").mouseleave(function() {
				alert("마우스가 밖으로 이동");
			})
			$("h3").hover(function(){
				$(this).attr("style","background-color:black; color:white;");
			}, function(){
				$(this).attr("style","");				
			});
		</script>
	</body>
</html>