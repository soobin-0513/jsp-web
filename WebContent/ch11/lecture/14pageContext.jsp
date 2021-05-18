<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	pageContext : ${pageContext }
	<br>
	request : ${pageContext.request }
	<br>
	session : ${pageContext.session }
	<br>
	application(servletContext) :${pageContext.servletContext }
	<br>
	contextPath : ${pageContext.request.contextPath }
</div>
</body>
</html>