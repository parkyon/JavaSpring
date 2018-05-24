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
		<div class="row ">
		<form method="post">
			<div class="form-group" style="display:inline-block">
				<input class="form-control" name="search">
			</div>
			<div style="display:inline-block" >
				<button type="submit" class="btn" >검색</button>
			</div>
			
		</form>
		
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
				  
				<div class="container col-md-4">
		  
		  <ul class="pagination">
		  <c:if test="${pm.prev}">
		    <li class="page-item"><a class="page-link" href="${pm.query(pm.getStartPage()-1)}">Previous</a></li>
		  </c:if>
		  <c:forEach var="idx" begin="${pm.startPage}" end="${pm.endPage}">
		   <li class="page-item"<c:out value="${pm.page.page == idx? 'style=font-weight:700' : ''}"/>>
		    <a  onclick= 'style="background-color:blue"' class="page-link" href="/board/list?page=${idx}">${idx}</a>
		   
		    </li>
		   </c:forEach>
		  <c:if test="${pm.next}">
		    <li class="page-item"><a class="page-link" href="${pm.query(pm.getEndPage()+1)}">Next</a></li>
		  </c:if>
		  </ul>
		</div>
		
		<div>
		  <a href="/main">
		  	<button class="btn btn-default"> 홈 </button>
		  </a>
		  <a href="/board/write" style="margin: 0 0 0 10px;">
		  	<button class="btn btn-default"> 글쓰기 </button>
		  </a>
		  </div>
		</div>
	</div>
	
</body>
</html>