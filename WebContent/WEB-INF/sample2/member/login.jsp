<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>I로그인페이지 </title>
</head>
<body>
	<div class="container">
	<s2:navbar></s2:navbar>
		<h1>로그인 </h1>
		<form method="post" action="${pageContext.request.contextPath }/sample2/member/login">
			id <br>
			<input type="text" name="id" > <br>
			pw <br>
			<input type="password" name="password"> <br>
			<input type="submit" value="로그인">
	</form>
	<c:if test="${not empty message }">
		<div>
			${message }
		</div>
	</c:if>
	</div>
</body>
</html>