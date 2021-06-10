package sample2.service.member;

import java.sql.Connection;

import sample2.bean.Member;
import sample2.dao.BoardDao;
import sample2.dao.CommentDao;
import sample2.dao.MemberDao;
import sample2.util.DBConnection;

public class MemberService {
	private BoardDao bdao;
	private MemberDao mdao;
	private CommentDao cdao;
	

	public MemberService() {
		this.bdao = new BoardDao();
		this.mdao = new MemberDao();
		this.cdao = new CommentDao();
	}

	
	
	public Member getMember(String id){
		Connection con = null;
		
		try {
			
			con = DBConnection.getConnection();
			Member member = this.mdao.getMember(id,con);
			
			//board dao 
			int numBoard = this.bdao.getNumberOfBoard(id,con);
			int numComment = this.cdao.getNumberOfComment(id,con);
			
			
			member.setNumberOfBoard(numBoard);
			member.setNumberOfComment(numComment);
			return member;
			
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBConnection.close(con);
			}
		return null;
	}

	public void remove(String id) {
		Connection con = null;
		//서비스에서 다우한테 일시키기전 여기서 커네션을 얻어야함 
		try {
			//쿼리가 실행될때 바로 실행하지 못하게 false로 두고 
			con = DBConnection.getConnection();
			con.setAutoCommit(false);
			
			//쿼리가 실행잘되면 실행되게 ? 
			this.bdao.removeByMember(id,con);
			this.mdao.remove(id,con);
			
			con.commit();
			
		}catch(Exception e) {
			e.printStackTrace();
			DBConnection.rollback(con);
		}finally {
			
			DBConnection.close(con);
		}
		
	}
}
