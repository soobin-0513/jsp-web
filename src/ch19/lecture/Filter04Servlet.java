package ch19.lecture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Filter04Servlet
 */
@WebServlet("/filter04")
public class Filter04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filter04Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 요청정보파악
		//2. 비즈니스로직(모델) 처리 
		//3. forward or redirect
		System.out.println("filter04 servlet 일하는중,,,");
		String name = request.getParameter("name");
		String greeting = name +",hi hellow welcome!";
		String nice= name +",오늘 도 좋은하루 보내세욤 !!!";
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().print(greeting);
		response.getWriter().print(nice);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
