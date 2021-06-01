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
<title>내용작성 </title>
</head>
<body>

<soonav:topnav  />

<div class="container mt-3">
<div class="row justify-content-center">
		<div class="col-8">
			<h1 class="mt-3 mb-3 text-center">글 쓰기</h1>
			<form action="" method="post">
				<div class="form-g
				roup" >
					<label for="input1">제목</label>
					<input type="text" name="title" class="form-control" id="input1">
				</div>
				
				<div class="form-group" >
					<label for="input2">작성자 </label>
					<input type="text" name="writer" class="form-control" id="input2">
				</div>
				<div class="form-group">
					<label for="textarea1">본문</label>
					<textarea class="form-control" name="body" rows="5" id="textarea1"></textarea>
				</div>
				<input class="btn btn-primary mb-2" type="submit" value="등록" onclick="pop()" />
				<input class="btn btn-primary mb-2" type ="button" value="취소" onclick="re()">
			</form>
		</div>
	</div>
	
</div>
</body>
</html>

