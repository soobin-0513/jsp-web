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
<div class="contaier">
	
	
	main.jsp에서 생성한 내용
	<jsp:include page="sub.jsp" flush="false"></jsp:include>
	include 이후의 내용
</div>
</body>
</html>