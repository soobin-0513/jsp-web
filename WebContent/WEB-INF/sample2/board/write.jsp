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

<title>글쓰기 </title>
</head>
<body>
	<div class="container">
	<s2:navbar></s2:navbar>
		<div class="jumbotron" style="background-color:#ecf4f7" >
			<div class="row justify-content-center">
				<div class="col-8">
					<h1>글 작성 </h1>
						<form action="${pageContext.request.contextPath }/sample2/board/write" method="post">
						제목 : <br>
						<input class="form-control" type ="text" name="title" id="input1"/><br>
						 <div class="form-group">
	    					<label for="exampleFormControlTextarea1">내용 작성 </label>
	    					<textarea class="form-control" name="body" id="textarea1" rows="5"></textarea>
	  					</div>
						<input class="btn btn-primary btn-lg mt-3" type="submit" value="작성하기 "/>
						</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>