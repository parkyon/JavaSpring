<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
   <style>
 
   p{
	   font-size:14px
   }
   
.error{
	color:red
	
}
.cmxform {
    width: 500px;
	
}

	
   
   </style> 
   
   

	<script>
	

	$().ready(function() {

		

		// validate signup form on keyup and submit
		$("#commentForm2").validate({   //많이 사용함
			rules: {
			ID: {
					required: true,
					maxlength: 10
					
					
				},
				PW: {
					required: true,
					minlength : 8
					
					
					
				},
				
			
			comment: "required"
			},
			messages: {
				ID: {
					required: "아이디를 입력해주세요",
					maxlength: "아이디는 초과"
									
				},
			
					PW: {
					required: "비밀번호를 입력해주세요",
					minlength : "비밀번호가 유효하지 않습니다"
									
				}
					
				
			}
		});
	});
	</script>
	
</head>
<body>
	<h1 id="banner">로그인 </h1>

	<div id="main">
	  <form class="cmxform" id="commentForm2" method="post" action="/">
		  <fieldset>
			  <p>
		      <label for="ID">아이디　
		      </label>
		      
		      <input id="ID" type="ID" name="ID">
		    </p>
           
              <p>
		      <label for="PW">비밀번호
		      </label>
		      
		      <input id="PW" type="PW" name="PW">
		    </p>
              <center><table width="200" >
 <tr>
    <center><td><a href="signup">회원가입</a></td></center>
    <center><td><a href="sdfdsfsdfdsfdsf">아아디 찾기</a></td></center>
  </tr>
</table></center>

            
              
            
		    <p>
			  <center>  <input class="submit" type="submit" value="확인">
              <input type='BUTTON' value=" 취소" onClick="history.back();">
</center>
				</p>

	    </fieldset>
	  </form>
</div>
</body>
</html>