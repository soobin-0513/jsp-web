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

<title>글보기 </title>
</head>

<body>
	<div class="container">
		<s2:navbar></s2:navbar>
		<div class="jumbotron" style="background-color:#ecf4f7" >
			<div class="row justify-content-center">
				<div class="col-8">
					<h1>${board.boardId }번 글 보기   </h1>
					<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
						제목 : <br>
						<input id="input1" class="form-control"  type ="text" name="title" value="${board.title }" readonly/><br>
						작성자 : <br>
						<%-- <input type="text" value="${board.memberIdHidden }" readonly/><br>--%>
						<input class="form-control" type="text" value="${board.memberName }" readonly/><br>
						
						<div class="form-group">
	    					<label for="exampleFormControlTextarea1">내용 </label>
	    					<textarea id="textarea1" name="body" readonly class="form-control" rows="5">${board.body }</textarea>
	  					</div>
						
						작성시간:
						<br>
						<%-- <input type="text" value="${board.timeAgo }" readonly/><br> --%>
						<input readonly class="form-control" type="text" value="${board.inserted}" /><br>
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
							<button id="button1" class="btn btn-primary btn-lg mt-1" type="button">수정 </button>
							<input id = "submit1" class="btn btn-primary btn-lg mt-1" type="submit" value="수정하기" hidden >
							<input id = "submit2" class="btn btn-warning btn-lg mt-1" type="submit" value="삭제하기" hidden >
						</c:if>
					</form> <br>
					<s2:message/>
					<hr>
					<c:if test="${not empty sessionScope.userLogined }">
						<h3>댓글 작성 </h3>
							<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
								<textarea name="comment" class="form-control" rows="3"></textarea>
								<br>
								<input hidden name="memberId" value="${sessionScope.userLogined.id }" readonly/>
								<br>
								<input hidden name="boardId" value="${board.boardId }" readonly/>
								<input type="submit" class="btn btn-light"value="댓글작성"/>
							</form>
					</c:if>
					
					<div class="container mt-5 pl-0 pr-0">
						<span>전체댓글 </span>
						<c:if test="${comments.size() != 0 }">
							<span><i class="far fa-comment-dots"></i>[${comments.size() }]</span>
						</c:if>
						<hr style="border:solid 2px blue">
						<c:forEach items="${comments }" var="comment">
							<script>
								//여기 댓글작성 후 수정 및  삭제 할수 있는 기능 
								$(document).ready(function(){
									//제이쿼리 객체로  만들기 
									var $form = $('#' + 'comment${comment.id}Form');
									var $modifyButton =$('#' +  'comment${comment.id}Button1');
									var $deleteButton = $('#' + 'comment${comment.id}Button2');
									var $submitButton = $('#' + 'comment${comment.id}Button3');
									
									$modifyButton.click(function(e){
										e.preventDefault();
										$form.find("textarea").removeAttr("readonly");
										$(this).attr("hidden","hidden");
										$submitButton.removeAttr("hidden");
										
									});
									$deleteButton.click(function(e) {
										e.preventDefault();
										
										if (confirm("삭제 하시겠습니까?")) {
											$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove");
											$form.submit();
										}
									});
								});
							</script>

							<form id="comment${comment.id }Form" action="${pageContext.request.contextPath }/sample2/comment/modify" method="post">
								<div class="container">
									<div class="row">
										<input name="commentId" value="${comment.id }" hidden />
								 		<input name="boardId" value="${board.boardId }" hidden />
								 		<div class="col align-self-start pl-0">
											<span>작성자 : ${comment.memberName }</span>
								 		</div>
										<div class="col align-self-end text-right">
											<small class="" >${comment.timeAgo }</small>
										</div>
									</div>
									<br>
								</div>
								
								<textarea id="rdtext" class="form-control" rows="3" name="comment" readonly>${comment.comment }</textarea><br>
								
								<c:if test="${sessionScope.userLogined.id == comment.memberId }">
									<button id="comment${comment.id }Button1">수정 </button>
									<button id="comment${comment.id }Button3" hidden> 수정완료   </button>
									<button id="comment${comment.id }Button2">삭제  </button>
								</c:if> 
							</form>
							<br>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>