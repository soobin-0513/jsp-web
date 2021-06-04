package sample2.bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Board {
	private int id;
	private String title;
	private String body;
	private String memberId;
	private Timestamp inserted;
	
	public String getTimeAgo() {
		//현재 시간 
		long now = System.currentTimeMillis();
		long inserted = this.inserted.getTime();
		
		long diff = now -inserted;
		
		//천으로 나누면 초단위가 됨 
		diff /= 100;
		
		//한시간으로 나누면 
		if(diff< 60 * 60) {
			return (diff / 60) +"분 전 "; 
		}else if (diff < 60 * 60 * 24) {//24시간 하루단위 
			return(diff / (60*60)) + "시간 전 ";
		}else {
			return new SimpleDateFormat("yy/MM/dd").format(this.inserted);
		}
	}
	
	public String getMemberIdHidden() {
		return memberId.substring(0,2) + "******";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Timestamp getInserted() {
		return inserted;
	}
	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
	}
}
