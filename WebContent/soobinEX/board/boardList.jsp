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

<title>작성 목록 </title>
</head>
<body>
<div class="container">
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="board" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>
						<a href="detail?index=${status.index}">${board.title }</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
</div>
</body>
</html>






