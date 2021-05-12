<%@ page contentType="text/html; charset=UTF-8" %>
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
	<h1>구구단 3단 출력!(include tag)</h1>
	<%
	int dan =3;
	%>
	<%--  include tag는 메소드를 호출하는거라서 메소드밖에있는 변수는 사용할수 없음 --%>
	<jsp:include page="05include-directive.jsp"></jsp:include>
</div>
</body>
</html>