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

<title>회원가입 페이지 </title>
</head>
<body>
<soonav:topnav  />
<div class="container">
	<div class="row justify-content-center">
		<h1 class="mt-3 mb-3 text-center" > 회 원 가 입  </h1>
		<form action="" method="post"class="text-center">
			  <div class="form-row">
			      <label class="mt-1 mb-1"for="inputID">아이디 </label>
			      <div class="input-group">
			      <input type="text" class="form-control" id="inputID" name="userid">
			      <input type="button" class="input-group-append" value="중복체크 ">
			      </div>
			      <br>
			      
			      <label class="mt-1 mb-1" for="inputPassword" >비밀번호 </label>
			      <input type="password" class="form-control" id="inputPassword4" name="userpw">
			  	  <br>
			  	  
			     <label class="mt-1 mb-1" for="inputAddress">이름 </label>
			     <input type="text" class="form-control" id="inputAddress" name="username">
			  	 <br>
			  	 
			     <label class="mt-1 mb-1" for="inputAge">생년월일  </label>
			     <input type="text"  class="form-control" name="userbirth"placeholder="1999-00-00" >
			 	 <br>
			 	 
			     <label class="mt-1 mb-1" for="inputEmail4">Email</label>
			     <input type="email" class="form-control" id="inputEmail4" name="userem">
	    		 <br>
	    		 
	    		  
				  <label class="mt-1 mb-1" >성별 </label>
				  <select class="custom-select" name="usergender" >
				    <option selected>선택 </option>
				    <option value="1">남자 </option>
				    <option value="2">여자 </option>
				  </select>
				 
			     <br>
			  </div>
			  <br>
	  		<button type="submit" class="btn btn-primary">회원가입 </button>
		</form>
	</div>
</div>
</body>
</html>