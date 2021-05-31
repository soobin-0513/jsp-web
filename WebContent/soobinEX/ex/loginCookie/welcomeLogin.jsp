<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie[] cookies =request.getCookies();
	for(int i = 0; i<cookies.length;i++){
		String id = cookies[i].getValue();
		if(id.equals("soo123")){
			out.print("<h1>"+id+"님 안녕하세요 반갑습니다."+"</h1>");
		}
}

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>




<title>로그인 페이지 </title>
</head>
<body>
<div class="container">
	<div class="row justify-content-center">
		<a href="logOut.jsp"class="btn btn-primary">로그아웃 </a>
	</div>
	
</div>
</body>
</html>








