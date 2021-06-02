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

	$(document).ready(function() {
		$("#submit1").click(function(e) {
			e.preventDefault();
			if (signcheck()) {
				console.log("submitt");
				$("#myform").submit();
			}
		});
	});

	function signcheck(){
		var fm = document.myform;
		if(!fm.userid.value) {
			alert("아이디를 입력해주세요!");
			fm.userid.focus();
			return false;			
		}
		if(!fm.userpw.value){
			alert("비밀번호를 입력해주세요!!");
			fm.userpw.focus();
			return false;		
		}
		if(!fm.usernick.value){
			alert("닉네임을 입력해주세요");
			fm.usernick.focus();
			return false;
		}
		if(!fm.username.value){
			alert("이름을 입력해주세요");
			fm.username.focus();
			return false;
		}
		if(!fm.userbirth.value){
			alert("생일을 입력해주세요");
			fm.userbirth.focus();
			return false;
		}
		if(!fm.userem.value){
			alert("이메일을 입력해주세요");
			fm.userem.focus();
			return false;
		}
		var seop =$("select option:selected").val();
		if(seop == "0"){
			alert("성별을 선택해주세요 ");
			fm.usergender.focus();
			return false;
		}
		
		//location.href="../mainindex.jsp";
		return true;
	}

	


</script>
<title>회원가입 페이지 </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
	<div class="row justify-content-center">
		<h1 class="mt-3 mb-3 text-center" > 회 원 가 입  </h1>
		<form id="myform" action="${pageContext.request.contextPath }/soobinEX/member/signup" method="post"class="text-center" name="myform">
			  <div class="form-row">
			      <label class="mt-1 mb-1"for="inputID">아이디 </label>
			      <div class="input-group">
			      <input type="text" class="form-control" id="inputID" name="userid">
			      <input type="button" class="input-group-append" value="중복체크 ">
			      </div>
			      <br>
			      
			      <label class="mt-1 mb-1" for="inputPassword" >비밀번호 </label>
			      <input type="password" class="form-control" id="inputPassword" name="userpw">
			  	  <br>
			  	  
			  	 <label class="mt-1 mb-1" for="inputNick">닉네임  </label>
			     <input type="text" class="form-control" id="inputNick" name="usernick">
			  	 <br>
			     <label class="mt-1 mb-1" for="inputName">이름 </label>
			     <input type="text" class="form-control" id="inputName" name="username">
			  	 <br>
			  	 
			     <label class="mt-1 mb-1" for="inputAge">생년월일  </label>
			     <input type="text"  class="form-control" id="inputAge" name="userbirth"placeholder="1999-00-00" >
			 	 <br>
			 	 
			     <label class="mt-1 mb-1" for="inputEmail">Email</label>
			     <input type="email" class="form-control" id="inputEmail" name="userem">
	    		 <br>
	    		 
	    		  
				  <label class="mt-1 mb-1" >성별 </label>
				  <select class="custom-select" name="usergender" >
				    <option selected value="0">선택 </option>
				    <option value="1">남자 </option>
				    <option value="2">여자 </option>
				  </select>
				 
			     <br>
			     <label class="mt-1 mb-1" for="userTextarea">자기소개  </label>
   				 <textarea class="form-control" name="usertalk" id="userTextarea" rows="3"></textarea>
				  </div>
				  <br>
	  			<%-- <input type="submit" class="btn btn-primary" value="회원가입 " onclick="signcheck()" > --%>
	  			<input id="submit1" type="submit" class="btn btn-primary" value="회원가입 " >
	  		</form>
		</div>
</div>
</body>
</html>

