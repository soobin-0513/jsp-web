package soobinEX.member.servlet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import soobinEX.board.Board;
import soobinEX.member.been.Member;

/**
 * Application Lifecycle Listener implementation class MemberAppListener
 *
 */
@WebListener
public class MemberAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MemberAppListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("member app listener initialized.....");
    	ServletContext application = sce.getServletContext();
    	List<Member> memberlist = new ArrayList<>();
    	
    	application.setAttribute("members", memberlist);
    }
	
}
