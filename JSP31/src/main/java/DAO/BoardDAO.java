package DAO;

import java.sql.*;
import java.util.*;
import DTO.BoardDTO;

public class BoardDAO {
	private BoardDAO() {
		//BoardDAO객체의 역할이 DB접속회선을 만들어주는 내용을 가지기 때문에
		//회선이 여러개가 만들어져서 발생하는 문제를 방지하기 위해 객체 생성을 제한한다.
		//객체의 생성은 생성자의 호출로 이루어지기 때문에
		//생성자를 호출할 수 없도록 private으로 사용금지 시킨다
	}
	
	//객체 생성을 방지했으므로 필드와 메서드 모두 사용 불가
	//단 하나의 객체를 미리 준비해서 돌려쓰도록 만드는 방법이 필요
	
	private static BoardDAO instance=new BoardDAO();
	//데이터의 변조 또는 null주입을 막기 위해 setter는 만들지 않는다
	public static BoardDAO getInstance() {
		return instance;
	}

	//커넥션 연결처리
	public Connection getConnection() throws Exception{
		Connection conn=null;
		String url="jdbc:mysql://127.0.0.1:3306/sample";
		String db_id="root";
		String db_pw="iotiot";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url, db_id, db_pw);
		return conn;
	}
	//리스트 출력을 위한 메서드, 필드 여러개를 가진 객체가 여러개 들어가는 리스트를 return
	//DB에서 ResultSet을 추출, 한칸씩 읽어서 변수에 담고, 해당 변수를 BoardDTO객체에 담고, 해당 객체를 List에 담는다
	public List<BoardDTO> findList(int currentPage, int recordsPerPage) {
		int start=(currentPage-1)*recordsPerPage;//시작게시물의 index
		List<BoardDTO> list=new ArrayList<BoardDTO>();
		String sql="select * from board limit ?, ?;";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2,  recordsPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				int num=rs.getInt("num");
				String title=rs.getString("title");
				String content=rs.getString("content");
				BoardDTO dto=new BoardDTO();
				dto.setNum(num);
				dto.setTitle(title);
				dto.setContent(content);
				list.add(dto);
			}
		}catch(Exception e) {
			System.out.println("findList() 접속 중 오류 발생 : "+e);
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex) {
				System.out.println("findList() 접속 해제 중 오류 발생 : "+ex);
			}
		}
		return list;
		
	}
	//전체 게시물 수 를 가져오는 메서드
	public int getCount() {
		int result=3;
		String sql="select count(num) from board;";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			rs.next();
			result=Integer.parseInt(rs.getString(1));
		}catch(Exception e) {
			System.out.println("getCount() 접속 중 오류 발생 : "+e);
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex) {
				System.out.println("getCount() 접속 해제 중 오류 발생 : "+ex);
			}
		}
		return result;
	}
}