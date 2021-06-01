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

<title>회원 정보  </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
		<div class="row justify-content-center">
		<div class="col-8">
			<h1 class="mt-3 mb-3 text-center">회원 정보 </h1>
			<form id="form1" action="" method="post">
				<%-- action="${pageContext.request.contextPath }/sample/modify?index=${param.index} 이거말고input추가 다른방--%>
				<div class="form-group" >
					<label for="input1">닉네임</label>
					<input readonly value="${member.usernick }" type="text" name="usernick" class="form-control">
				</div>
				<div class="form-group" >
					<label for="input2">생년월일 </label>
					<input readonly value="${mbember.userbirth}" type="text" name="userbirth" class="form-control" >
				</div>ㄴ
				
				<div class="form-group">
					<label for="textarea1">자기소개  </label>
					<textarea readonly class="form-control" name="usertalk" rows="5" id="textarea1"><c:out value="${member.usertalk }" /></textarea>
				</div>
				<input type="submit" id="submit1" class="btn btn-primary" value="채팅하기 " />
			</form>
		</div>
	</div>
</div>
</body>
</html>