<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row"> 
			<h3>게시판</h3>
		</div>
		<div class="row">
		<table class="table table-dark table-striped">
		    <thead>
				<tr>
		        	<th>번호</th>
		        	<th>제목</th>
		        	<th>작성자</th>
		      	</tr>
		    </thead>
		    
		    <tbody>
		    	<!-- c:forEach 태그를 이용하여 리스트의 값을 하나씩 테이블 행에 출력 -->
		    	<c:forEach var="board" items="${list}" varStatus="status">
			    	<tr>
		    			<td>${board.number}</td>
			        	<td><a href="/board/detail?number=${board.number}">${board.title}</a></td>
			        	<td>${board.author}</td>
			        </tr>
		        </c:forEach>
		    </tbody>
		  </table>
				  
				<div class="container">
		  
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</div>
		  <a href="/main">
		  	<button class="btn btn-default"> 홈 </button>
		  </a>
		  <a href="/board/write" style="margin: 0 0 0 10px;">
		  	<button class="btn btn-default"> 글쓰기 </button>
		  </a>
		</div>
	</div>
	
</body>
</html>