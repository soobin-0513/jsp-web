package member.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.bean.Member;

/**
 * Servlet implementation class MemberSignupServlet
 */
@WebServlet("/soobinEX/signup")
public class MemberSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/soobinEX/member/signup.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String userid  = request.getParameter("userid");
		String userpw  = request.getParameter("userpw");
		String username  = request.getParameter("username");
		String userbirth = request.getParameter("userbirth");
		String userem  = request.getParameter("userem");
		String usergender = request.getParameter("usergender");
		
		Member member = new Member();
		member.setUserid(userid);
		member.setUserpw(userpw);
		member.setUsername(username);
		member.setUserbirth(userbirth);
		member.setUserem(userem);
		member.setUsergender(usergender);
		
	}

}
