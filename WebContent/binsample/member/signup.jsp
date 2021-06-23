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

<script type="text/javascript">
	var url = "${pageContext.request.contextPath}" + "/binsample/member/checkdup";
	$(document).ready(function() {
		var checkdupDone = false;
		
		$("#signup").click(function(e){
			e.preventDefault();
			if (signChk(checkdupDone)) {
				$("#myform").submit();
			}
		});		
		
		$("#idChk").click(function() {
			
			var id = $("#idinput").val();
		    if (!(id.trim())) {
		    	alert("아이디를 입력해주세요.");
		    	return;
		    }
			$.post(url, {id: id}, function(data) {
				if (data == 'ok') {
					checkdupDone=true;
					alert("사용 가능")
				} else {
					alert("이미 사용중입니다 ")
				}
			});
		});
	});
	function signChk(checkdupDone){
		var fm = document.forms.myform;
		if(!fm.idinput.value) {
			alert("아이디를 입력해주세요!");
			fm.id.focus();
			return false; 
		}
		
		//중복 체크했니? 
		if(!checkdupDone){
			alert("아이디중복체크를 확인해주세요 ");
			return false; 
		}
		
		if(!fm.password.value){
			alert("비밀번호를 입력해주세요!");
			fm.password.focus();
			return false; 
		}
		if(!fm.name.value){
			alert("이름을 입력해주세요!");
			fm.name.focus();
			return false;
		}
		if(!fm.birth.value){
			alert("생년월일을 선택해주세요! ");
			fm.birth.focus();
			return false;
		}
		var seop =$("select option:selected").val();
		if(seop == "0"){
			alert("성별을 선택해주세요 ");
			fm.usergender.focus();
			return false;
		}
		return true;
	}
	
</script>
<title>회원가입 페이지 </title>
</head>
<body>
<soonav:nav  />
	<div class="container">
			<div class="row justify-content-center">
				<div class="col-8 mt-3">
					<h1>회원가입  </h1>
					<form action="${pageContext.request.contextPath }/sample2/member/signup" method="post" id="myform">
						<label class="mt-1 mb-1"for="idinput">아이디 </label>
						<div class="input-group">
						      <input type="text" class="form-control" name="id" id="idinput" >
						      <input id="idChk" type="button" class="input-group-append" value="중복체크 ">
						</div>
						<br>
						      
						<label class="mt-1 mb-1" for="password" >비밀번호 </label>
						<input class="form-control" type="password" name="password" id="password"/> <br>
						
						<label class="mt-1 mb-1" for="name">이름   </label>
						<input class="form-control" type="text" name="name" id="name" /> <br>
						<label class="mt-1 mb-1" for="birth" >생년월일  </label>
						<input type="date" class="form-control mt-1 mb-1"  name="birth" id="birth"/> <br>
						
						<label class="mt-1 mb-1" >성별 </label>
							  <select class="custom-select" name="usergender" >
								    <option selected value="0">선택 </option>
								    <option value="남">남자 </option>
								    <option value="여">여자 </option>
							  </select>
						<input id="signup" class="btn btn-primary btn-lg mt-3" type="submit" value="가입 ">
					</form>
			</div>
				<soonav:message/>
			</div>
	</div>
</body>
</html>