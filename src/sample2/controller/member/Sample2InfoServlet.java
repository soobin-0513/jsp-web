package sample2.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Member;
import sample2.dao.MemberDao;
import sample2.service.member.MemberService;

/**
 * Servlet implementation class Sample2InfoServlet
 */
@WebServlet("/sample2/member/info")
public class Sample2InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService service;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    	@Override
    	public void init() throws ServletException {
    		// TODO Auto-generated method stub
    		super.init();
    		service = new MemberService();
    	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션정보가져오기 ! 
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("userLogined");
		
		//세션말고 멤버에가져오는 이유 - 안전하기때무네  핸드폰이나 컴에서 로그아웃로그인할수도있어서 정학하기 위해서.
		
	if(member != null ) {
			
			MemberDao dao = new MemberDao();
		  //Member mem = dao.getMember(member.getId());
		 //우리가 dao 한테 바로 일을 시킨코드! member2 게시물갯수, 댓글 갯수 추 
		//Member mem = dao.getMember2(member.getId());
			
			
			// dao말고 서비스에 따로 빼줘서 서비스로 일시키기 ? 
			Member mem = service.getMember(member.getId());
			
			request.setAttribute("member", mem);
			String path = "/WEB-INF/sample2/member/info.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}else {
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
