<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<html>
<head>
	<title>Home</title>
	<script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	</script>
</head>
<body>
<div class="container">
		<div class="row">
	
	
			<a href = "login">로그인</a>
			<a href = "signup">회원가입</a>
			
		<div>
	
		<h1 class ="text-center">${ID}님이 로그인 했습니다</h1>
		
		</div>
		
		<div>
		<a class="text-center" href="/">로그아웃</a>
		</div>
		
		<div class="row">
		<a href="/board/list">게시판으로</a>
		</div>
		</div>
	</div>
</body>
</html>
