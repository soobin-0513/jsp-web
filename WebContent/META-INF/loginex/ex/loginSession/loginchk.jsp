<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	String id ="soo123";
	String pw ="qweasd";
	String nick="";
	if(id.equals(request.getParameter("id"))&&
			pw.equals(request.getParameter("pw"))){
		session.setAttribute("loginUser", id);
		response.sendRedirect("loginmain.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
		
	}
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인 페이지 </title>
</head>
<body>


</body>
</html>






