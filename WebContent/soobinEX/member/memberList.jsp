<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="soonav" tagdir="/WEB-INF/tags/soobintag" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>회원 목록  </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
		<div class="row justify-content-center">
		<div class="col-8">
			<h1 class="mt-3 mb-3 text-center"> 가입 회원 목록 </h1>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>닉네임   </th>
						<th>생년월일  </th>
						<th>활동 현황  </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberlist }" var="member" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>
								<a href="detail?index=${status.index }">
									${member.usernick }
								</a>
							</td>
							<td>${member.userbirth}</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
		</div>
	</div>
</div>
</body>
</html>