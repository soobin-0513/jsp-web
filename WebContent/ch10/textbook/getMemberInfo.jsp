<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<% 
	String name = (String)session.getAttribute("NAME");
	String madbiru = (String)session.getAttribute("MEMBERID");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	세션정보 꺼내기
	NAME : <%= name %>
	MEMBERID: <%= madbiru %>
</div>
</body>
</html>






