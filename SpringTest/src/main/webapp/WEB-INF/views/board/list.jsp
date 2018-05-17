<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>게시판</h2>
              
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th width="14%"><center>번호</center></th>
        <th width="44%"><center>제목</center></th>
        <th width="42%"><center>작성자</center></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><center>${board.noticeNUM}</center></td>
        <td>${board.noticeTitle}</td>
        <td><center>${board.noticeID}</center></td>
      </tr>
     
     <tr>
        <td><center>${NoticeNUM}</center></td>
        <td>${NoticeTitle}</td>
        <td><center>${NoticeID}</center></td>
      </tr>
    </tbody>
  </table>
 
</div>
<div class="container">
  <h2>&nbsp;</h2>
  
 <p align="right" >  <a  href="/" class="btn btn-info" role="button">홈</a>
  <a  href="NoticeBoard" class="btn btn-info" role="button">글쓰기</a> </p>

</div>
</body>
</html>
