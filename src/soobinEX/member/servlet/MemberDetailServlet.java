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
 * Servlet implementation class MemberDetailServlet
 */
@WebServlet("/MemberDetailServlet")
public class MemberDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 깨지기 방지 
				request.setCharacterEncoding("utf-8");
				
				String index = request.getParameter("index");
				
				System.out.println(index);
				
				ServletContext application = request.getServletContext();
				List<Member> memberlist = (List<Member>) application.getAttribute("members");
				
				int i = Integer.parseInt(index);
				Member member = memberlist.get(i);
				request.setAttribute("memberlist", memberlist);
				
				String path="/soobinEX/member/memberDetail.jsp";
				request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
