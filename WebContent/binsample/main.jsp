<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="soonav" tagdir="/WEB-INF/tags/soobintag" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<style type="text/css">
	
</style>
<title>메인 페이지 </title>
</head>
<body>
<soonav:nav  />
<div class="container">
	<div class="row justify-content-center">
		<div class=" center mt-3">
			<h1 class="mt-3 mb-3 text-center"> 반갑습니다  삔이월드 입니다!</h1>
			<img alt="" src="${pageContext.request.contextPath}/pic/binbins.JPG">
		</div>
	</div>
	<%-- 
	<div class="row justify-content-center" id="end">
		<div class="my_box">
                <div class="my_promise">
                    <p>안녕하세요! 삔이월드에오신걸 환영합니다 </p>
                    <p>저는 9살 푸들 공주입니다 !</p>
                    <p>사람을 너무너무 좋아합니다  </p>
                    <p>많이 많이 예뻐해 주세요!</p>
                </div>
         </div>
	</div>
	--%>
</div>

</body>
</html>