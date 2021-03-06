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

<title>list </title>
</head>
<body>
	<div class="container">
		<s2:navbar></s2:navbar>
		<div class="jumbotron" style="background-color:#ecf4f7">
		<h1>회원목록  </h1>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>ID</th>
						<th>NAME</th>
						<th>BIRTH</th>
						
						<th>INSERTHE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${members }" var="member" varStatus="status">
					<tr>
						<td>${status.count }</td>
						<td>${member.id }</td>
						<td>${member.name }</td>
						<td>${member.birth }</td>
						<td>${member.inserted }</td>
					</tr>
				</c:forEach>	
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>