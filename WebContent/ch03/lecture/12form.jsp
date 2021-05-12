<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row justyfy-content-center">
		<div class="col-6">
			<form>
			<div class="form-grop">
				<label for="uboyt1">이름</label>
				<input name="name" class="form-control" id="input1">
			</div>
			<input type="submit" class="btn btn-primary" value="전송">
			<div class="form-check">
				<input name="fruit" value="berry" type="checkbox" id="check1">
				<label class="form-check-label" for="check1">딸기</label>
			</div>
			<div class="form-check">
				<input name="fruit" value="apple" type="checkbox" id="check2">
				<label class="form-check-label" for="check2">사과</label>
			</div>
			
			</form>
		</div>
	</div>
</div>
<hr>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-6">
			<p>name: <%= request.getParameter("name") %></p>
			<%-- <p>fruit1:<%= request.getParameterValues("fruit")[0]%></p> --%>
			<%
				String[]fruits = request.getParameterValues("fruit");
			if(fruits !=null && fruits.length >0){
				for(int i = 0; i<fruits.length;i++){
					out.print("<p>");
					out.print("fruit"+(i+1)+":"+fruits[i]);
					out.print("</p>");
				}
			}
			%>
			
		</div>
	</div>
</div>
</body>
</html>