<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="util.Cookies" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String password =request.getParameter("password");
	
	if(id.equals(password)){
		//ID와 암호가 같으면 로그인에 성공한 것으로 판단
		response.addCookie(
					Cookies.createCookie("AUTH",id,"/",-1)
				);
		out.write("로그인성공");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>로그인성공</title>
</head>
<body>
<div class="container">
	<%
	}else{
	%>
	<script>
		alert("로그인에 실패하였습니다.");
		history.go(-1);	
	</script>
	<% 
	}	
	%>
</div>
</body>
</html>