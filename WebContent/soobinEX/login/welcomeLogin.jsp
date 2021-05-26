<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>메인 페이지  </title>
</head>
<body>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-3 center mt-3">
			<h1><%=request.getParameter("id") %>님 <span>반갑습니다. </span></h1>
			<input class="btn btn-primary form-row" type="button" value="로그아웃"  />	
		</div>
	</div>
	
</div>
</body>
</html>






