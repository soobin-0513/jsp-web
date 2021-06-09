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

<title>Insert title here</title>
</head>

<body>
	<div class="container">
		<s2:navbar></s2:navbar>
		<h1>${board.boardId }번 글 보기   </h1>
		<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
			제목 : <br>
			<input id="input1" type ="text" name="title" value="${board.title }" readonly/><br>
			본문 : <br>
			<textarea id="textarea1" name="body" readonly>${board.body }
			</textarea><br>
			작성자 : <br>
			<%-- <input type="text" value="${board.memberIdHidden }" readonly/><br>--%>
			<input type="text" value="${board.memberName }" readonly/><br>
			작성시간:
			<br>
			<%-- <input type="text" value="${board.timeAgo }" readonly/><br> --%>
			<input type="text" value="${board.inserted}" readonly/><br>
			<c:if test="${sessionScope.userLogined.id == board.memberId  }" >
				<script>
						$(document).ready(function(){
							$("#button1").click(function(){
								$("#submit1,#submit2").removeAttr("hidden");
								$("#input1, #textarea1").removeAttr("readonly");
							});
							$("#submit2").click(function(e){
								e.preventDefault();
								
								if(confirm("삭제 하시겠습니까 ? ")){
									var path ="${pageContext.request.contextPath }/sample2/board/remove";
									$("#form1").attr("action",path);
									$("#form1").submit();
								}
							});
						});
				</script>
				
				<input type="number" value="${board.boardId }" name ="boardId" hidden>
				<button id="button1" type="button">수정 </button>
				<input id = "submit1" type="submit" value="전송" hidden >
				<input id = "submit2" type="submit" value="삭제 " hidden >
			</c:if>
		</form>
		<s2:message/>
		
	</div>
	<hr>
	<c:if test="${not empty sessionScope.userLogined }">
	<div class="container">
		<h3>댓글 작성 </h3>
		<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
			<textarea name="comment"></textarea>
			<br>
			<input hidden name="memberId" value="${sessionScope.userLogined.id }" readonly/>
			<br>
			<input hidden name="boardId" value="${board.boardId }" readonly/>
			<br>
			<input type="submit" value="댓글작성"/>
		</form>
	</div>
	</c:if>
</body>
</html>