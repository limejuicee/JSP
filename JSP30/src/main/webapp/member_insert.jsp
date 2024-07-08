<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원가입 처리 페이지</title>
	</head>
	<body>	
		<%
			Connection conn=null;
			PreparedStatement pstmt=null;
			//ResultSet rs=null; select문이 아니므로 ResultSet은 불필요
			
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			String sql="insert into member (name, userid, pwd, email, phone, admin) value (?,?,?,?,?,?);";
					
			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("nm");
			String userid=request.getParameter("id");
			String pwd=request.getParameter("pw");
			String email=request.getParameter("email");
			String phone=request.getParameter("phone");
			String admin=request.getParameter("admin");


			//out.print(sql);
			try{
				System.out.println("sql 접속 확인");
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url,db_id,db_pw);
				pstmt=conn.prepareStatement(sql);
				//stmt=conn.createStatement();
				//PreparedStatement방식은 미리 쿼리문을 준비해 놓고
				//?로 적혀 있는 부분에 데이터를 집어넣는 방식
				//Statement방식과는 달리 제작할때 쿼리문이 필요하고 실행할때는 필요가 없다
				//?안에 데이터를 잘 넣어주어야 동작하고, 완결 전까지 오류를 확인할 수 없다
				pstmt.setString(1, name);
				pstmt.setString(2, userid);
				pstmt.setString(3, pwd);
				pstmt.setString(4, email);
				pstmt.setString(5, phone);
				pstmt.setString(6, admin);
				//stmt.execute(sql);
				pstmt.execute();			
			}catch(Exception e){
				System.out.println("회원가입 접속 중 오류발생 : "+e);
			}finally{
				try{
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				}catch(Exception ex){
					System.out.println("회원가입 접속 해제 중 오류발생 : "+ex);
				}
			}
		%>
	</body>
</html>