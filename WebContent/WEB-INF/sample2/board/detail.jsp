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

<title>Insert title here</title>
</head>

<body>
	<div class="container">
		<s2:navbar></s2:navbar>
		<h1>글 내용  </h1>
		<form action="" method="post">
			제목 : <br>
			<input type ="text" name="title" id="input1"value="${board.title }" readonly/><br>
			본문 : <br>
			<textarea name="body" id="textarea1" readonly>${board.body }
			</textarea><br>
			작성자 : <br>
			<%-- <input type="text" value="${board.memberIdHidden }" readonly/><br>--%>
			<input type="text" value="${board.memberName }" readonly/><br>
			작성시간:
			<br>
			<%-- <input type="text" value="${board.timeAgo }" readonly/><br> --%>
			<input type="text" value="${board.inserted}" readonly/><br>
			<br>
			<input type="submit" value="수정 "/>
		</form>
	</div>
</body>
</html>