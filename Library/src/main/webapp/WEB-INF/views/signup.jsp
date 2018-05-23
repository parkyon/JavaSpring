
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko"><head>
	<meta charset="utf-8">
	<title>jQuery 유효성검사</title>
	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
  
   

	<script>
	

	$().ready(function() {

		

		// validate signup form on keyup and submit
		$("#commentForm2").validate({   //많이 사용함
			rules: {
				name: {
					required: true,
					
					
					
				},
				ID: {
					required: true,
					maxlength: 10
					
					
				},
				PW: {
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
				ID: {
					required: " 아이디는 필수항목 입니다.",
					maxlength: "아이디 유효범위를 초과함",
								
				},
				PW: {
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
	
</head>
<body>
	<h1 id="banner">회원등록 </h1>

	<div>
 
	  <form class="cmxform" id="commentForm2" method="get" action="">
		  <fieldset>
			  <p>
		      <label for="name">이름<br>
		      </label>
		      
		      <input id="name" type="name" name="name">
		    </p>
              <p>
                <label for="ID">아이디<br>
		        </label>
		      
		      <input id="ID" type="ID" name="ID">
		    </p>
            <p>
                <label for="PW">패스워드<br>
		        </label>
		      
		      <input id="PW" type="PW" name="PW">
		    </p>
            <p>
                <label for="email">e-mail<br>
		        </label>
		      
		      <input id="email" type="email" name="email">
		    </p>
          
            
		    <p>
			  <center>  <input class="btn-primary" type="submit" value="등록">
              <input type='BUTTON' class="btn-primary" onClick="history.back();" value=" 취소">
</center>
				</p>

	    </fieldset>
	  </form>
</div>
</body>
</html>