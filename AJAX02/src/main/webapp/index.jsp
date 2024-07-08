<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>XML의 DOM처리</title>
	</head>
	<body>
		<input type="button" value="iot과목 확인" onclick="startRequest('iot')">
		<input type="button" value="web과목 확인" onclick="startRequest('web')">
		<input type="button" value="app과목 확인" onclick="startRequest('app')">
		<script>
			var XHR;
			var type="";	//지금 어느 버튼이 눌린건지 내용을 저장
			function createXMLHttpRequest() {		//사용된 브라우저에 따라 어떤 방식으로 구동시킬건지 정하는중
				if(window.AcriveXObject) {
					XHR=new ActiveXObject();
				}else if(window.XMLHttpRequest) {
					XHR=new XMLHttpRequest();
				}
			}
			
			function startRequest(sub) {					//버튼이 눌렸을때 동작할 작업
				type=sub;
				createXMLHttpRequest();						//XHR제작
				XHR.onreadystatechange=handleStateChange;	//readyState값 변동시
				XHR.open("GET","test.xml",true);			//회선연결
				XHR.send(null);								//request전송
			}
			
			function handleStateChange() {
				if(XHR.readyState==4) {	//request가 온전히 전달되었고
					if(XHR.status==200) {	//response가 있는 경우
					list();
					}
				}
			}
			
			//과목 추출용 함수
			function list() {
				var DOC=XHR.responseXML;
				var iot=DOC.getElementsByTagName(type)[0];
				var title="<< "+type+"과목 >>";
				var subject=iot.getElementsByTagName("subject");
				for(var i=0; i<subject.length; i++) {
				console.log(subject[i].innerHTML);
				out(title, subject);
				}
			}
			//출력용 함수
			function out(title, subject) {
				var t=title;
				var n="";
				for(var i=0; i<subject.length; i++) {
					n=subject[i].innerHTML;
					t=t+'\n'+n;
				}
				alert(t);
			}
		</script>
	</body>
</html>