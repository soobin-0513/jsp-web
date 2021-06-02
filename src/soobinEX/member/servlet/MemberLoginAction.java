package soobinEX.member.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soobinEX.member.been.Member;

/**
 * Servlet implementation class MemberLoginAction
 */
@WebServlet("/soobinEX/member/login")
public class MemberLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/soobinEX/member/login.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// application 영역에 list member?  attribute(속성) 있어야함 
		ServletContext application = request.getServletContext();
		List<Member> memberlist = (List<Member>) application.getAttribute("members");
				
		String userid  = request.getParameter("userid");
		String userpw  = request.getParameter("userpw");
		
		Member member = new Member();
		member.setUserid(userid);
		member.setUserpw(userpw);
		
		//입력한 아이디랑 비번이 있는지 비교하는코드 랑 for으로 탐색 필요@
		
		response.sendRedirect(request.getContextPath()+"/soobinEX/member/memberlist");
	}

}
