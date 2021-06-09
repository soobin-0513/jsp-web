package sample2.service.comment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.Comment;

/**
 * Servlet implementation class Sample2CommentModifyServlet
 */
@WebServlet("/sample2/comment/modify")
public class Sample2CommentModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	//필드 
	private CommentService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2CommentModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	service = new CommentService();
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
		
		String idStr = request.getParameter("commentId");
		String commentStr = request.getParameter("comment");
		String boardId = request.getParameter("boardId");
		int id = Integer.parseInt(idStr);
		
		
		Comment comment = new Comment();
		//set 값은 위에 request에서 꺼내서 얻어와야함
		comment.setId(id);
		comment.setComment(commentStr);
		
		service.modify(comment);
		
		String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
		response.sendRedirect(path);
	}

}
