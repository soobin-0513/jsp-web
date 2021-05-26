<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	if(session.getAttribute("loginUser")== null ) {
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인 페이지 </title>
</head>
<body>

<script>
	alert("먼저 로그인 해주세요 ")
	location.href="loginForm.jsp";
</script>
<%} %>
<%= session.getAttribute("loginUser")%> 님 안녕하세요 반갑습니다.
<button class="btn btn-primary"><a href="logout.jsp">로그아웃 </a></button>
</body>
</html>






