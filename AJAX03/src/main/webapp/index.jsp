<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Dynamic XML parse</title>
	</head>
	<body>
		<h1>원하시는 가격대를 선택해 주세요</h1>
		<select>
			<option value="500000">500000</option>
			<option value="1500000">1500000</option>
			<option value="2500000">2500000</option>
		</select>
		에서
		<select>
			<option value="1000000">1000000</option>
			<option value="2000000">2000000</option>
			<option value="3000000">3000000</option>
		</select>
		까지
		<input type="button" value="조회" onclick="search()">
		<div id="header"></div>
		<table id="resultTable">
			<tbody id="tableBody"></tbody>
		</table>
		<script>
			var XHR;
			function createXMLHttpRequest() {
				if(window.ActiveXOPbject) {
					XHR=new ActiveXObject("microsoft.XMLHTTP");
				}else if(window.XMLHttpRequest) {
					XHR=new XMLHttpRequest();
				}
			}
			function search() {
				createXMLHttpRequest();
				XHR.onreadystatechange=handleStateChange;
				XHR.open("GET","sample.xml",true);
				XHR.send(null);
			}
			function handleStateChange() {	//onreadystatechange=function(){}
				if(XHR.readyState==4){
					if(XHR.status==200){
						clear();		//이전에 화면에 표시했던 내용을 지우는 기능
						parseResult();	//검색결과를 화면에 표시하는 기능
					}	
				}							
			}
			function parseResult() {	//XHR.responseXML을 통해 들어온 XML을 DOM으로 쪼개어 원하는 결과만 추출
				var result=XHR.responseXML;
				var product=null;
				var name="";
				var price="";
				var comments="";
				
				var products=result.getElementsByTagName("product");
				for(var i=0; i<products.length; i++){
					product=products[i];
					name=product.getElementsByTagName("name")[0].firstChild.nodeValue;
					price=product.getElementsByTagName("price")[0].firstChild.nodeValue;
					comments=product.getElementsByTagName("comments")[0].firstChild.nodeValue;
					
					addTable(name, price, comments);	//제품별로 기준에 맞는지 검색
					//console.log(comments);
				}
				//태그를 제작해서 화면에 출력하는 방법
				var header=document.createElement("h2");
				var headerText=document.createTextNode("검색 결과 : ");
				header.appendChild(headerText);
				document.getElementById("header").appendChild(header);
				console.log(header);
			}
			//검색기준점을 받아 해당하는 내용을 테이블로 그리는 함수
			function addTable(name, price, comments) {
				var min=document.getElementsByTagName("select")[0].value;	//검색 최소값
				var max=document.getElementsByTagName("select")[1].value;	//검색 최대값
				var int_price=parseInt(price);

				if(min<=int_price && int_price<=max) {
					var row=document.createElement("tr");
					var td=makeTd(name);
					row.appendChild(td);
					td=makeTd(price);
					row.appendChild(td);
					td=makeTd(comments);
					row.appendChild(td);

					document.getElementById("tableBody").appendChild(row);
				}
			}
			//td를 제작해주는 함수
			function makeTd(text) {
				var td=document.createElement("td");
				var text_node=document.createTextNode(text);
				td.appendChild(text_node);
				
				return td;
			}
			//기존에 그려져 있던 내용물을 소거하는 기능
			function clear() {
				var header=document.getElementById("header");
				if(header.hasChildNodes()){
					header.removeChild(header.childNodes[0]);
				}
				var tableBody=document.getElementById("tableBody");
				while(tableBody.childNodes.length>0) {
					tableBody.removeChild(tableBody.childNodes[0]);
				}
			}
		</script>
	</body>
</html>