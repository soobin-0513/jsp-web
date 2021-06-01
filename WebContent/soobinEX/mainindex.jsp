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

<title>메인 페이지 </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
	<div class="row justify-content-center">
		<div class="col-3 center mt-3">
			<h1>반갑습니다</h1>
			<img alt="" src="${pageContext.request.contextPath}/pic/binbins.png">
		</div>
	</div>
</div>
</body>
</html>