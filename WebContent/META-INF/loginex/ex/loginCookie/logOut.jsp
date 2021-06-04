<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie[] cookies =request.getCookies();
	if(cookies !=null){
		for(int i = 0; i<cookies.length;i++){
		if(cookies[i].getValue().equals("soo123")){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		}
	}
	
	response.sendRedirect("loginForm.jsp");

%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>





