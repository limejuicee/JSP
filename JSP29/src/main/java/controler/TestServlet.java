package controler;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get방식으로 test서블릿 실행");
		request.setAttribute("data", "test서블릿에서 저장한 데이터");
		RequestDispatcher dis=request.getRequestDispatcher("/get.jsp");
		dis.forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post방식으로 test서블릿 실행");
		request.setAttribute("data", "test서블릿에서 post일때 저장한 데이터");
		RequestDispatcher dis=request.getRequestDispatcher("/post.jsp");
		dis.forward(request,response);
	}

}
