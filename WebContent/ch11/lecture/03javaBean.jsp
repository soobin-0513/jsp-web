<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	pageContext.setAttribute("title","writer");
%>
<jsp:useBean id="book1" class="ch08.Book" scope="page">
	<jsp:setProperty name="book1" property ="title" value="JAVA"/>
	<jsp:setProperty name="book1" property="writer" value="Kim"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	book : ${book1} <br>
	title : ${book1.title }<br>
	writer : ${book1.writer }<br>
	<%-- none: ${book1.none} --%>
	<hr>
			<%-- ["여기안에들어가는거 프로퍼티명 String 타입"] --%>
	title : ${book1["title"] } <br>  
	writer : ${book1["writer"] } <br> 
	
	<hr>
	<%-- 위에서 title 에 값을 writer로 지정함 --%>
	title : ${book1[title] } <br>  
	
</div>
</body>
</html>