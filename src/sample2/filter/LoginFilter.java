package sample2.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
//@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		//강제 형 변환 
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession(false);
		/* false를 넘기는 이유는 존재하는 세션을 리턴하라는 의미입니다 .
		   만약 이 클라이언트에 매핑된 세션이 없다면 null을 리턴함
		   
		   	request.getSession(true); // request에 대한 새로운 세션을 생성후 리턴
			request.getSession(false); // 현재 세션이 존재하면 기존 세션 리턴, 없으면 null값 리턴
			request.getSession(); //현재 세션이 존재하면 기존 세션 리턴, 없으면 새로생성한 세션 리턴

		*/
		if(session != null) {
			
			Object obj = session.getAttribute("userLogined");
			
			if(obj == null) {
				
				String path= req.getContextPath()+"/sample2/member/login";
				//강제 형 변환 
				HttpServletResponse res = (HttpServletResponse) response;
				res.sendRedirect(path);
				
				return;
				//return 없으면 밑에chain 까지 실행  코드종료 
			}
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
