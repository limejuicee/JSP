<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>AJAX의 이해</title>
	</head>
	<body>
		<input type="button" value="테스트" onclick="startRequest()">
		<input type="text">
		<div id="result"></div>
		<script>
			//XMLHttpRequest : 브라우저가 XML과 통신하도록 하는 기능(범용)며용!
			//ActiveX	:	MS사의 windows운영체제 하의 브라우저가 XML과 통신하도록 하는 기능, 인터넷 익스플로러 독자기능
			
			//W3C 표준규격이 아니므로 브라우저마다 다른 방식으로 구현되어 있다
			
			var XHR;	//XML과 브라우저를 통신시키기 위한 객체
			
			function createXMLHttpRequest() {
				if(window.ActiveXobject) {	//MS계열의 브라우저가 사용되고 있는 경우
					XHR=new ActiveXovject("Microsoft.XMLHTTP");
				}else if(window.XMLHttpRequest){	//크롬이나 사파리, 와일브라우저 등 대부분의 경우
					XHR=new XMLHttpRequest();					
				}
			}

			function handleStateChange() {
				console.log(XHR.readyState);
				
				if(XHR.readyState==4) {		//모든 request가 종료됐고
					if(XHR.status==200) {	//통신의 결과가 존재할 경우
						//alert("다음의 결과 반환 : "+XHR.responseText);
						document.getElementById("result").innerHTML=XHR.responseText;						
					}
				}
			}
			function startRequest() {
				createXMLHttpRequest(); //통신을 거려면 통신해줄 XHR객체가 있어야 하니, 만들어주는 함수 실행
				XHR.onreadystatechange=handleStateChange;	//readyState 변경시 동작해줄 함수 주입
				XHR.open("GET","data.xml", true);		//목적지로 회선 연결
				XHR.send(null);
			}
			
			//XMLHttpRequest : XML하고 브라우저를 통신시켜줄 객체 ***
			
			//XMLHttpRequest.open(method, url, asynch, user, pw) : 해당 url로 회선을 연결
			//XMLHttpRequest.send() : 연결된 회선으로 request를 전달
			//		method=get이라면 null을 전송해야한다
			//		method=post라면 send내부에 데이터를 전송해 주어야 한다
			//
			
			//XMLHttpRequest.readyState : request에 대한 응답 준비를 확인할 수 있는 변수
			// 0 : uninitialize, 초기화 되지 않은 상태
			// 1 : loading, 데이터를 읽고있는 상태
			// 2 : loaded, 모든 정보를 읽어낸 상태
			// 3 : interactive, 읽은 정보를 가져오는 상태
			// 4 : complete, 모든 request가 종료된 상태, response확인가능
			
			//MXLHttpRequest.onreadystatechange : readyState가 변할 때마다 수행될 function을 저장하는 변수
			
			//XMLHttpRequest.responseText : 응답 들어온 데이터를 text형태로 받아옴
			//XMLHttpRequest.responseXML : 응답 들어온 데이터를 XML형태로 받아옴(DOM이 사용 가능하다)
		</script>
	</body>
</html>