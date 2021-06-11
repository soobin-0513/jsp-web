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

<title> 로그인페이지 </title>
</head>
<body>
	<div class="container">
		<s2:navbar></s2:navbar>
		<div class="jumbotron" style="background-color:#ecf4f7">
			<div class="row justify-content-center">
				<div class="col-8">
				<h1>로그인   </h1>
					<form method="post" action="${pageContext.request.contextPath }/sample2/member/login">
						<label class="mt-1 mb-1"for="idinput">아이디 </label><br>
						<input type="text" class="form-control" name="id" id="idinput" >
						<label class="mt-1 mb-1" for="password" >비밀번호 </label>
						<input class="form-control" type="password" name="password" id="password"/> <br>
						<input type="submit" class="btn btn-primary btn-lg mt-3" value="로그인">
					</form>
				</div>
			</div>
			<s2:message></s2:message>
		</div>
	</div>
</body>
</html>