<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>


<%

	User member =(User)request.getAttribute("member");
	//우리가 필요한건 User에 메소드이기 때문에 강제 형변환해줘여함 (User)
	
	
%>
<div>
	이름 : <%= member.getName() %> <br>
	나이 : <%= member.getAge() %> <br>
	주소 : <%= member.getAddress() %><br>
</div>