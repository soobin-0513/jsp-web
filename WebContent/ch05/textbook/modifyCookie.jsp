<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import ="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies !=null && cookies.length >0){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				Cookie cookie = new Cookie("name",
						URLEncoder.encode("JSP프로그랭밍","utf-8"));
						response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>값변경</title>
</head>
<body>
<div class="container">
	name쿠키의 값을 변경합니다
</div>
</body>
</html>