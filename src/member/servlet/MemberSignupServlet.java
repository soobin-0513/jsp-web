package member.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
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
		
		String path = "/soobinEX/member/signUp.jsp";
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
		String userinick  = request.getParameter("userinick");		
		String username  = request.getParameter("username");
		String userbirth = request.getParameter("userbirth");
		String userem  = request.getParameter("userem");
		String usergender = request.getParameter("usergender");
		String usertalk =request.getParameter("usertalk");
		
		Member member = new Member();
		member.setUserid(userid);
		member.setUserpw(userpw);
		member.setUserinick(userinick);
		member.setUsername(username);
		member.setUserbirth(userbirth);
		member.setUserem(userem);
		member.setUsergender(usergender);
		member.setUsertalk(usertalk);
		
		memberlist.add(member);
		
		response.sendRedirect(request.getContextPath()+"/soobinEX/memberlist");
		
	}

}
