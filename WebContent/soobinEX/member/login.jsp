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


<title>로그인 페이지  </title>
</head>
<script type="text/javascript">

	function logincheck(){
		var fm = document.mf;
		
		if(!fm.userid.value){
			alert("아이디를 입력해주세요!");
			fm.userid.focus();
		}else{
			return false; 
		}
	
		if(!fm.userpw.value){
			alert("비밀번호를 입력해주세요!!");
			fm.userpw.focus();
		}else{
			return false; 
		}
		
		if(fm.userid=="admin"){
			if(fm.userpw=="1234"){
				alert("환영합니다.");
				location.href="mainindex.jsp";
			}
		}
		}
</script>	

<body>
<soonav:topnav  />
<div class="container">
	<div class="row justify-content-center">
			<div class="col-3 center mt-3">
				<h1 class="mt-3 mb-3 text-center" > 로 그 인 </h1>
				<br>
				<form action="" method="post" name="mf">
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