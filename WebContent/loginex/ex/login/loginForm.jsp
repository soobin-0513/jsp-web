<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인 페이지 </title>
</head>
<body>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-3 center mt-3">
			<h1>로그인 </h1>
			<form action="loginAction.jsp" method="post">
				<div class="form-group" >
					<label for="input1">아이디 </label>
					<input type="text" name="id" class="form-control" id="input1">
				</div>
				<div class="form-group" >
					<label for="input2">비밀번호  </label>
					<input type="password" name="pw" class="form-control" id="input2">
				</div>
				<div class="form-row3 p-3">
					<div class="float-left"> 
						<input class="btn btn-primary form-row" type="submit" value="로그인 " />				
					</div>
					<div class="float-right"> 
						<a href="#" class="btn btn-primary" >회원가입 </a>
						<!-- <input class="btn btn-primary form-row" type="button" value="회원가입"  />	 -->			
					</div>
				</div>
			</form>
		</div>
	</div>
	
</div>
</body>
</html>






