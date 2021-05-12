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
		<form>
			<input type="checkbox" name="fruit" value="100">사과<br>
			<input type="checkbox" name="fruit" value="150">바나나<br>
			<input type="checkbox" name="fruit" value="200">딸기<br>
			<input type="checkbox" name="fruit" value="300">키위<br>
			<input type="checkbox" name="fruit" value="500">망고<br>
			<input type="checkbox" name="fruit" value="700">수박<br>
			<input type="submit" class="btn btn-primary" value="합꼐">
		</form>
		<hr>
		<div class="container">
		합계 :
		<!-- 이 위치에 출력되도록 -->
		<%
		String[] fruits = request.getParameterValues("fruit");
		
		int sum = 0;
		if (fruits != null && fruits.length > 0) {
			for (String value : fruits) {
				sum += Integer.valueOf(value);
			}
		}
		// out.print(sum);
		%>
		
		<%= sum %>
		
		
	</div>
	</div>
</body>
</html>