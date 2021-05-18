<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	pageContext.setAttribute("a","50");
	pageContext.setAttribute("b","30");
	
	pageContext.setAttribute("d","abc");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h2>산술연산</h2>
	<h3>String 타입이여도 숫자로 변환할수 있으면 변환해서 산술연산함</h3>
	\${a + b} = ${ a + b} <br>
	\${a - b} = ${ a - b} <br>
	\${a * b} = ${ a * b} <br>
	\${a / b} = ${ a / b} <br>
	\${a % b} = ${ a % b} <br>
	\${a mod b} = ${ a mod b} <br>
	<hr>
	<h3>c은 값을 지정해주지않아서 자동으로 0으로 처리 </h3>
	\${a + c } = ${a + c} <br> 
	\${a - c } = ${a - c} <br> 
	\${a * c } = ${a * c} <br> 
	\${a / c } = ${a / c} <br> 
	<%-- \${a % c } = ${a % c} <br> --%>	
	<%-- 	\${a mod c } = ${a mod c} <br> --%>	

	<hr>
	<h3>d ="abc" String 타입 연산불가 </h3>
	<%-- \${a + d } = ${a + d} <br>  --%>

</div>
</body>
</html>