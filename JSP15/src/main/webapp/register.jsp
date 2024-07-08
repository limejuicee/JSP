<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>회원 가입 처리기</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");		//한글 깨짐 방지
			String id=request.getParameter("id");		//input name="id" 를 받아옴
			String pass=request.getParameter("pw");
			String name=request.getParameter("nm");
			String email=request.getParameter("em");
			String phone=request.getParameter("ph");
			String address=request.getParameter("ad");
		
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				String sql="insert into register(id,pass,name,email,phone,address) values (";
				sql+="'"+id+"'"+","+"'"+pass+"'"+","+"'"+name+"'"+","+"'"+email+"'"+","+"'"+phone+"'"+","+"'"+address+"'"+");";
				out.print("<h1>"+sql+"</h1>");
				stmt=conn.createStatement();
				stmt.execute(sql);
				//Statement.execute() : return boolean insert문에 많이 사용
				//Statement.executeQuery()	:	return ResultSet select문에 사용
				//Statement.executeUpdate()	:	return int
				response.sendRedirect("member.jsp");
			}catch(Exception e){
				System.out.println("접속 중 오류 발생 : " +e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)rs.close();
					if(conn!=null)rs.close();
				}catch(Exception ex){
					System.out.println("접속 해제중 오류 발생 : "+ex);
				}
			}
		%>
	</body>
</html>