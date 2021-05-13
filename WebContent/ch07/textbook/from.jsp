<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>from.jsp의제목</title>
</head>
<body>
<div class="container">
	이페이지는from.jsp가 생성한 것입니다.
	<jsp:forward page="to.jsp"></jsp:forward>
</div>
</body>
</html>






