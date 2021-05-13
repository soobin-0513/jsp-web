<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>현재시간</title>
</head>
<body>
<div class="container">
	<%
		Calendar cal = (Calendar) request.getAttribute("time");
	%>
	현재시간은  <%= cal.get(Calendar.HOUR) %>시
				<%= cal.get(Calendar.MINUTE) %>분
				<%= cal.get(Calendar.SECOND) %>초
</div>
</body>
</html>






