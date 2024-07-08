package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.util.*;
import DTO.BoardDTO;
import DAO.BoardDAO;

@WebServlet("/ReadPage")
public class ReadPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage=Integer.parseInt(request.getParameter("currentPage"));
		int recordsPerPage=Integer.parseInt(request.getParameter("recordsPerPage"));
		
		System.out.println("현재 페이지 : " +currentPage+", 페이지 당 게시글 수 : "+recordsPerPage);
		BoardDAO dao=BoardDAO.getInstance();
		List<BoardDTO> list=dao.findList(currentPage, recordsPerPage);
		request.setAttribute("data", list);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("recordsPerPage", recordsPerPage);
		
		int count=dao.getCount();					//전체 게시물 수 확인
		System.out.println("전체 게시물 수 : "+count);	
		int npage=count/recordsPerPage;				//페이지 수는 게시물 수/한페이지 당 게시물 수
		if(count%recordsPerPage>0) {				//나머지가 존재한다면
			npage++;								//페이지 수 하나 추가
		}
		System.out.println(npage);
		request.setAttribute("npage", npage);		//해당 페이지 수 를 request scope에 전달
		RequestDispatcher dis=request.getRequestDispatcher("list.jsp");
		dis.forward(request, response);
		}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
