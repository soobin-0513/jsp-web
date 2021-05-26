<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

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
<div class="container mt-3">
	<form name="frm" method="post">
		<label class="mt-2 mb-3">제목</label>
		<br>
		<input type="text" name="title" />
		<br>
		<label class="mt-2 mb-3">본문</label>
		<br>
		<textarea name="body" ></textarea>
		<br>
		<input class="btn btn-primary mb-2" type="submit" value="등록" onclick="pop()" />
		<input class="btn btn-primary mb-2" type ="button" value="취소" onclick="re()">
		
		
	</form>
</div>
</body>
</html>

