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
<title>정보보기 </title>
<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});
		
		//함수에  e 넣어주면클릭해주는 요 객체를만들어서 실행해
		$("#submit2").click(function(e) {
			//preventDefault(); 진행되지 않게 하는 메소드 ?
			e.preventDefault();
			console.log("submit2 clicked.....");
			
			var con = confirm("탈퇴 하시겠습니까??");
			
			console.log(con);
			
			if (con) {
				$("#form2").submit();
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
	<s2:navbar/>
	<div class="jumbotron" style="background-color:#ecf4f7">
		<div class="row justify-content-center">
			<div class="col-8">
				<h1>정보보기 </h1>
				<form id="form1" action="${pageContext.request.contextPath }/sample2/member/modify" method="post">
					아이디  <br>
					<input id="input1"  class="form-control" type="text" name="id" value="${member.id }" readonly> <br>
					비밀번호  <br>
					<input id="input2"  class="form-control"  type="password" name="password" value="${member.password }" readonly> <br>
					이름  <br>	
					<input id="input3"  class="form-control"  type="text" name="name" value="${member.name }" readonly> <br>
			   	 	생년월일  <br>
					<input id="input4"  class="form-control"  type="date" name="birth" value="${member.birth }" readonly> <br>
					
			   		 성별  <br>
			   		 <select class="custom-select" name="usergender" disabled>
							<option selected value="${member.usergender }">${member.usergender }</option>
					</select>
					<button id="button1"  class="btn btn-primary btn-lg mt-3" type="button" >수정</button>
					<input type="submit"  class="btn btn-danger btn-lg mt-3" id="submit1" value="회원정보 수정" hidden />
				</form>
				<br>
				<div>
				작성한 게시물 수 : <span>${member.numberOfBoard }</span> <br>
				작성한 댓글 수 : <span>${member.numberOfComment }</span>
				</div>
				<div class="container ">
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<form id="form2" action="${pageContext.request.contextPath}/sample2/member/remove" method="post">
							<input id="submit2" class="btn btn-warning " type="submit" value="회원탈퇴">
						</form>
					</div>
				</div>
				<s2:message></s2:message>
			</div>
		</div>
	</div>
	</div>
</body>
</html>