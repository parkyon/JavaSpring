
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <title>bootstrap template</title>


    <link href="../Downloads/회원가입폼/css/bootstrap.min.css" rel="stylesheet">
 
    <link rel="stylesheet" href="../Downloads/회원가입폼/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
   
    <link rel="stylesheet" href="../Downloads/회원가입폼/css/style.css" media="screen" title="no title" charset="utf-8">


   
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    
  </head>
  <body>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
  
  <script>
	

	$().ready(function() {

		

		// validate signup form on keyup and submit
		$("#commentForm2").validate({   //많이 사용함
			rules: {
				name: {
					required: true,
					
					
					
				},
				id: {
					required: true,
					maxlength: 10
					
					
				},
				pw: {
					required: true,
					minlength: 8
					
					
					
				},
				email: {
					required: true,
					email: true
					
					
					
				},
			
				
				
			
			comment: "required"
			},
			messages: {
				name: {
					required: " 이름은 필수항목 입니다.",
								
				},
				id: {
					required: " 아이디는 필수항목 입니다.",
					maxlength: "아이디 유효범위를 초과함",
								
				},
				pw: {
					required: " 패스워드 필수항목 입니다.",
					minlength: "8글자를 넘어야합니다",
								
				},
				email: {
					required: " 이메일주소는 필수항목 입니다.",
					email:"유효한 메일주소가 아닙니다"
								
				},
				
					
				
			}
		});
	});
	</script>


      <article class="container">
      
     

        <div class="col-md-12">
        <div class="page-header">
    	    <h1>회원가입 <small>horizontal form</small></h1>
        </div>
        <form class="form-horizontal cmxform" id="commentForm2" method="get" action="">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-6">
          <input class="form-control" id="email" type="email" placeholder="이메일" name="email">
        </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호" name="pw">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">아이디</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck"  placeholder="아이디" name="id">
                
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputName" type="text" placeholder="이름" name="name">
          </div>
        </div>
        
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#">이용약관</a> 에 동의 합니다.
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" onClick="history.back(); type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../Downloads/회원가입폼/js/bootstrap.min.js"></script>
  </body>
</html>
