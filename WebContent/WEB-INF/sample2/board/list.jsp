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
		<h1>글 목록 </h1>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
				</tr>
			</thead>
	
			<tbody>
				<c:forEach items="${boards }" var="board">
					<tr>
						<%--<td>${board.id }</td> --%>
						<td>${board.boardId }</td>
						<td>
							<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}">
							${board.title }
							</a>
						</td>
						<td>${board.memberName}</td>
						<%-- <td>${board.memberIdHidden }</td>--%>
						<td>${board.timeAgo }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<s2:message/>
</body>
</html>