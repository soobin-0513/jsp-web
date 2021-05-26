<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id =request.getParameter("id");
	String pw =request.getParameter("pw");


	if(id.equals("soo123") && pw.equals("qweasd")){
		Cookie cookie = new Cookie("id",id);
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		response.sendRedirect("welcomeLogin.jsp");

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인 페이지 </title>
</head>
<body>
<div class="container">
	<%
	}else{
		
	%>
	<script>
		alert("로그인에 실패하였습니다.");
		//다시로그인화면으로 이동하
	</script>
	<% 
		response.sendRedirect("loginForm.jsp");
	}	
	%>
</div>

</body>
</html>






