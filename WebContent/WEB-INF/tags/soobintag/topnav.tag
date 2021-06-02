<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 -->
 <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
  <a class="navbar-brand" href="${pageContext.request.contextPath }/soobinEX/mainindex.jsp">BINBIN'S</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/board/write">글쓰기 </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/board/list">목록보기 </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/board/photo">사진첩  </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/member/memberlist">회원목록   </a>
      </li>
    </ul>
 	<ul class="nav navbar-nav navbar-left">
 	<%-- 로그인했냐 안했냐 조건을 따져서 보여줄 버튼을 변경, 로그인했나안했나는 세션으로확 --%>
 	<c:if test="true">
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/member/login">로그인   <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/soobinEX/member/signup">회원가입 </a>
	      </li>
 	</c:if>
      </ul>
  </div>
</nav>