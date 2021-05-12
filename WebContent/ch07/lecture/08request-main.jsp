<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%
		User user = new User("donald",22,"us");
		//코드 작성
		request.setAttribute("member",user);
		// member 라는 이름으로 user객체를 꺼내주는거
		
		
	%>
	
	
	<h2>유저 정보</h2>
	<jsp:include page="08request-sub.jsp"></jsp:include>
</div>
</body>
</html>