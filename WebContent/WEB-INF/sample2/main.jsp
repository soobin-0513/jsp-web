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
		<s2:navbar/>
		<div class="jumbotron" style="background-color:#ecf4f7">
			  <h1 class="display-4">Hello, ${sessionScope.userLogined.id} 환영합니다! </h1>
			  <p class="lead"> 안녕하세요!!프로그래밍을 처음 배워본 임수빈입니다.</p>
			  <p>본 페이지는  Servlet/JSP 기본으로 만든 회원가입, 게시판 어플리케이션입니다 !</p>
			  <hr class="my-4">
			  <p>아직 많이 부족하지만,더 열심히 공부해서 발전하겠습니다.</p>
			  <p> 회원가입부터 해보세요!! 감사합니다 <i class="far fa-smile-wink"></i>  </p>
			  <a class="btn btn-primary btn-lg" href="#" role="button">회원가입 </a><br>
			  <img src="${pageContext.request.contextPath }/res/image/hellobar.png" alt="helloimg" width="80%">
			  <hr>
		</div>
	</div>
</body>

</html>