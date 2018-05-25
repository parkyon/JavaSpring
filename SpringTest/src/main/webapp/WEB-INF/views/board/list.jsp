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
	
		<link rel="stylesheet" href="/resources/css/list.css">
	
	<title>Insert title here</title>
    
  <style>
	body{
		background-color:#6FC
	}


	</style>
</head>
<body>
<center><h1>게시판</h1></center>
	<div class="container">
		
		
		<!--  폼 태그 -->
			<form method="post" action="/board/list">
			
			
			<div class="row">
			<!-- 셀렉트 리스트 -->
			<div class="form-group">
			
			  <select class="form-control" name="searchType">
			    <option value="0" <c:out value="${searchType==0? 'selected':''}"/>>제목</option>
			    <option value="1" <c:out value="${searchType==1? 'selected':''}"/>>번호</option>
			    <option value="2" <c:out value="${searchType==2? 'selected':''}"/>>작성자</option>
			    
			  </select>
			</div>
			
			
			<!--  텍스트 입력창 -->
				<div class="form-group" style="display:inline-block">
					<input class="form-control" name="search"
					value="${search}">
				</div>
				<!-- 버튼 -->
				<div style="display:inline-block">
					<button type="submit" class="btn">검색</button>
				</div>
				</div>
			</form>
		
		<div class="row">
			<table class="table table-dark table-striped">
			    <thead>
					<tr>
			        	<th width="12%" >번호</th>
			        	<th width="52%" >제목</th>
			        	<th width="12%" >작성자</th>
                        <th width="13%"> 조회수</th>
                        <th width="11%"> 작성날짜</th>
			      	</tr>
			    </thead>
			    
			    <tbody>
			    	<!-- c:forEach 태그를 이용하여 리스트의 값을 하나씩 테이블 행에 출력 -->
			    	<c:forEach var="board" items="${list}" varStatus="status">
				    	<tr>
			    			<td>${board.number}</td>
				        	<td><a href="/board/detail?number=${idx}${board.number}">${board.title}</a></td>
				        	<td>${board.author}</td>
                            <td>조회수</td>
                            <td>작성날짜</td>
				        </tr>
			        </c:forEach>
			    </tbody>
			</table>
	  </div>
		<div class="row"  >
			  <ul class="pagination">
			  	<c:if test="${pm.prev}">
				  <li class="page-item">
				  	<a class="page-link" href="/board/list?page=${pm.getStartPage()-1}&search=${search}&searchType=${searchType}">Previous</a>
				  </li>
			  	</c:if>
			  	<c:forEach var="idx" begin="${pm.startPage}"
			  				end="${pm.endPage}">
				  <li class="page-item">
				  	<a class="page-link" href="/board/list?page=${idx}&search=${search}&searchType=${searchType}">
				  	<span   <c:out value="${pm.page.page == idx?'class=pagenation-active': ''}"/>>${idx}</span>
				  	</a>
				  </li>
				</c:forEach>
			  	<c:if test="${pm.next}">
				  <li class="page-item"><a class="page-link" href="/board/list?page=${pm.getEndPage()+1}&search=${search}&searchType=${searchType}">Next</a></li>
			  	</c:if>
			  </ul>
	  </div>
		    <div class="row">
		      <div class="col-3"></div>
		      <div class="col-5"></div>
		      <div class="col"></div>
		    
         <div class="col"> 
          
		    <a href="/main">
		  	<button class="btn btn-default" > 홈 </button>
		    </a>
			  <a href="/board/write" style="margin: 0 0 0 10px;">
			  	<button class="btn btn-default"> 글쓰기 </button>
		  	  <span style="text-align: center"></span></a>
              </div>
		  </div>
	</div>
	
</body>
</html>