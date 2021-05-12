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
<div class="container">
	<table class="mt-3 table table-bordered">
		<tr class="table-primary" >
			<td scope="col">제품번호</td>
			<td scope="col">XXXX</td>
		</tr>
		<tr >
			<td>가격</td>
			<td>10,000원</td>
		</tr>
	</table>
	<jsp:include page="infoSub.jsp">
		<jsp:param name="type" value="A"/>
	</jsp:include>
</div>
</body>
</html>