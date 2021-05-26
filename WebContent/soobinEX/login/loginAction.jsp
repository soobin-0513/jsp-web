<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	//임의로 만든 로그인 가능한 아이디 비번
	String[] users ={"soo123","bin456"};
	String[] passwords={"qweasd","asdzxc"};
	
	//Form에서 전달 받은 데이터를 변수에 저장 
	String id =request.getParameter("id");
	String pw =request.getParameter("pw");

	
	String path="";
	for(int i =0; i<users.length;i++){
	if(users[i].equals(id) && passwords[i].equals(pw)){	
		path="welcomeLogin.jsp?id=" +id;
		
	
	
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인</title>
</head>
<body>
<div class="container">
	<%
	}else{
	%>
	<script>
		alert("로그인에 실패하였습니다.");
		//다시로그인화면으로 이동하
		history.go(-1);	
	</script>
	<% 
	}	}
	%>
</div>
</body>
</html>