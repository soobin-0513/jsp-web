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

<script type="text/javascript">
		function pop(){
			ok =confirm("제출할꺼야?");
			if(ok){
				doucument.getElementById("frm").submit();
			}else{
				return false;
			}
		}
		function re(){
			ok =confirm("취소할꺼야?");
			if(ok){
				doucument.getElementById("frm").button();
			}else{
				return false;
			}
		}
		
	</script>
<title>로그인 페이지  </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
	<div class="row justify-content-center">
			<div class="col-3 center mt-3">
				<h1 class="mt-3 mb-3 text-center" > 로 그 인 </h1>
				<br>
				<form action="loginAction.jsp" method="post">
				<div class="form-group" >
					<label class="mt-1 mb-1" for="input1">아이디 </label>
					<input type="text" name="userid" class="form-control" id="input1">
				</div>
				<div class="form-group" >
					<label for="input2">비밀번호  </label>
					<input type="password" name="userpw" class="form-control" id="input2">
				</div>
			  	  <br>
			  	  
	  			<input type="submit" class="btn btn-primary" value="로그인" >
	  		</form>
		</div>
	</div>
</div>
</body>
</html>