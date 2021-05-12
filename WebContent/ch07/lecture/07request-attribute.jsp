<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch07.Page" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<%
Page p = new Page(3, 10);
request.setAttribute("page", p);
//Attribute는 request에 붙어있는 객체

Object o = request.getAttribute("page");//어디선가 그 이름을 꺼내서 사용가능
//System.out.println(o == p);

Page p2 = (Page) o;

int s = p2.getStart();
int e = p2.getEnd();

System.out.println(s);
System.out.println(e);

%>

<div class="container">
	<jsp:include page="07request-attribute-sub.jsp"></jsp:include>
</div>
</body>
</html>






