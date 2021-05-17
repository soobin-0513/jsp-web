package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
	
	//쿠키를 <쿠키이름, Cookie 객체>쌍 형태로 저장하는 맵을 생성한다
	 private Map<String, Cookie> cookieMap=
			 	new java.util.HashMap<String, Cookie>();
	 
	 // Cookies생성자
	 public Cookies(HttpServletRequest request) {
		 //파라미터로부터 전달받은request로부터 Cookie 배열을 읽어와
		 Cookie[] cookies = request.getCookies();
		 if(cookies != null) {
			 for(int i =0; i<cookies.length;i++) {
				 //선언된 cookieMap에 저장
				 cookieMap.put(cookies[i].getName(), cookies[i]);
			 }
		 }
	 }
	 
	 public Cookie getCookie(String name) {
		 return cookieMap.get(name);
	 }
	 
	 public String getValue(String name)throws IOException{
		 Cookie cookie = cookieMap.get(name);
		 if(cookie == null) {
			 return null;
		 }
		 return URLDecoder.decode(cookie.getValue(),"utf-8");
	 }
	 
	 public boolean exists(String name) {
		 return cookieMap.get(name) !=null;
	 }
	 
	 public static Cookie createCookie(String name, String value) throws IOException{
		 return new Cookie(name,URLEncoder.encode(value,"utf-8"));
	 }
	 
	 public static Cookie createCookie(String name, String value, String path, int  maxAge) throws IOException {
		 Cookie cookie = new Cookie(name,URLEncoder.encode(value,"utf-8"));
		 cookie.setPath(path);
		 cookie.setMaxAge(maxAge);
		 return cookie;
	 }
	 
	 public static Cookie createCookie(String name, String value, String domain, String path, int  maxAge)throws IOException{
		 Cookie cookie = new Cookie(name,URLEncoder.encode(value,"utf-8"));
		 cookie.setDomain(domain);
		 cookie.setPath(path);
		 cookie.setMaxAge(maxAge);
		 return cookie;
	 }
	 
	 
	 
}
