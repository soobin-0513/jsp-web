<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>게시판 내용 </title>
</head>
<body>
<div class="container mt-3">
		
	<label class="mt-2 mb-3">제목</label>
	<br>
	<input value="${board.title }" readonly/> 
	<br>
	<label class="mt-2 mb-3">본문</label>
	<br>
	<textarea readonly>
		<c:out value="${board.body }"></c:out>
	</textarea>
</div>
</body>
</html>