package sample2.controller.board;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Member;
import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardModifyServlet
 */
@WebServlet("/sample2/board/modify")
public class Sample2BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardModifyServlet() {
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
		String boardId = request.getParameter("boardId");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		//db에서 게시물 조회하기 
		BoardDao dao = new BoardDao();
		BoardDto board = dao.get2(Integer.parseInt(boardId));
		
		//로그인된 유저정보 확인 
		Member member = (Member) request.getSession().getAttribute("userLogined");
		
		//로그인유저와 게시물 작성자가 같은지 확인@
		if(board.getMemberId().equals(member.getId())) {
			//같으면 게시물 수정 가능하게 
			BoardDto newBoard = new BoardDto();
			newBoard.setBoardId(Integer.parseInt(boardId));
			newBoard.setTitle(title);
			newBoard.setBody(body);
		
			boolean ok =dao.modify(newBoard);
			//PrintWriter writer = response.getWriter(); 
			//writer.println("<script>alert('수정되었습니다');</script>"); 
			//writer.close();

			

			if(ok) {
				//메시지 남기
				request.getSession().setAttribute("message","수정되었습니다.");				
			}else{
				//메시지 남기
				request.getSession().setAttribute("message", "수정시 오류 발생");
				
			}
		}else {//같지 않으면 게시물 보기 화면 redirect 
			// 메세지 남기기
			request.getSession().setAttribute("message", "작성자가 아닙니다.");
		}
		String path = request.getContextPath()
				+"/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
		
	}

}
