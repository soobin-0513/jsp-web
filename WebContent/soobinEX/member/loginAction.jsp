<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	//임의로 만든 로그인 가능한 아이디 비번
	//String[] users ={"soo123","bin456"};
	//String[] passwords={"qweasd","asdzxc"};
	
	//Form에서 전달 받은 데이터를 변수에 저장 
	String userid =request.getParameter("userid");
	String userpw =request.getParameter("userpw");
	
	
	if(userid.equals(userpw)){
		session.setAttribute("userid", userid);
		session.setAttribute("userpw", userpw);
		
		String path ="/soobinEX/mianindex.jsp";
		RequestDispatcher dispatcher =  request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	
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
		alert("아이디나 비밀번호를 다시 확인해주세요.");
		//다시로그인화면으로 이동
		location.href="login.jsp";
	</script>
	<% 
	}	
	//}
	
	%>
</div>
</body>
</html>