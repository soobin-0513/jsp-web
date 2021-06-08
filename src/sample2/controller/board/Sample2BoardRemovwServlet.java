package sample2.controller.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardRemovwServlet
 */
@WebServlet("/sample2/board/remove")
public class Sample2BoardRemovwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardRemovwServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request parameter 값 수집하기 
		String id = request.getParameter("boardId");
		//db에서 게시물 조회하기 
		BoardDao dao = new BoardDao();
		boolean ok = dao.remove(Integer.parseInt(id));
		
		//forward or redirect
		if (ok) {
			request.getSession().setAttribute("message", "게시물이 삭제되었습니다.");

			String path = request.getContextPath() + "/sample2/board/list";
			response.sendRedirect(path);
		} else {
			request.getSession().setAttribute("message", "게시물이 삭제되지 않았습니다.");

			String path = request.getContextPath() + "/sample2/board/detail?id=" + id;
			response.sendRedirect(path);
		}
	}

}
