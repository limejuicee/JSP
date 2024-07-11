<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>슬라이드 업 다운</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<div id="down" style="background-color:yellow; width:300px; height:100px;"></div>
		<div id="target" style="background-color:black; width:300px; height:700px; display:none;"></div>
		<div id="up" style="background-color:green; width:300px; height:100px;"></div>
		<script>
			//slideDown(); : 눈에 안보이던걸 위에서 아래로 보이도록 하는 방법
			//slideUp();   : 눈에 보이던걸 아래에서 위로 사라지도록 하는 방법
			$("#down").click(function() {
				$("#target").slideDown(7000);
			})
			$("#up").click(function() {
				$("#target").slideUp(6000);
			})
			$("#down").mouseover(function() {
				$("#target").stop().slideDown();
			})
			$("#down").mouseout(function() {
				$("#target").stop().slideUp();
			})
			
			//jquery ajax 사용
			$.ajax("경로",{
					type:"POST",
					data:{"GET방식에서는 안적으면 된다"}
					success:function(response, status, xhr) {
						
					}, 
					error:function(xhr, status, errorMessage) {
						
					}
				}
			);
		</script>
	</body>
</html>