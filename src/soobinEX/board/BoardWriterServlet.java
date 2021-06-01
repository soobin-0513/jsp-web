package soobinEX.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardWriterServlet
 */
@WebServlet("/soobinEX/board/write")
public class BoardWriterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardWriterServlet() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("board writer doGet..");
		
		String path = "/soobinEX/board/boardForm.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
//		PrintWriter out = response.getWriter();
//		out.print("<form >");
//		out.print("</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글깨져 코드 추가
		request.setCharacterEncoding("utf-8");
		
		// application 영역에 list board  attribute(속성) 있어야함 
		ServletContext application = request.getServletContext();
		List<Board> list = (List<Board>) application.getAttribute("boards");
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		String writer = request.getParameter("writer");
		
		Board board = new Board();
		board.setTitle(title);
		board.setBody(body);
		board.setWriter(writer);
		
		
		list.add(board);
		
		response.sendRedirect(request.getContextPath()+"/soobinEX/board/list");
	}

}








