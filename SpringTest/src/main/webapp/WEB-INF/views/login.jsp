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
		$("#commentForm2").validate({   //���� �����
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
					required: "���̵� �Է����ּ���",
					maxlength: "���̵�� �ʰ�"
									
				},
			
					PW: {
					required: "��й�ȣ�� �Է����ּ���",
					minlength : "��й�ȣ�� ��ȿ���� �ʽ��ϴ�"
									
				}
					
				
			}
		});
	});
	</script>
	
</head>
<body>
	<h1 id="banner">�α��� </h1>

	<div id="main">
	  <form class="cmxform" id="commentForm2" method="post" action="/">
		  <fieldset>
			  <p>
		      <label for="ID">���̵�
		      </label>
		      
		      <input id="ID" type="ID" name="ID">
		    </p>
           
              <p>
		      <label for="PW">��й�ȣ
		      </label>
		      
		      <input id="PW" type="PW" name="PW">
		    </p>
              <center><table width="200" >
 <tr>
    <center><td><a href="signup">ȸ������</a></td></center>
    <center><td><a href="sdfdsfsdfdsfdsf">�ƾƵ� ã��</a></td></center>
  </tr>
</table></center>

            
              
            
		    <p>
			  <center>  <input class="submit" type="submit" value="Ȯ��">
              <input type='BUTTON' value=" ���" onClick="history.back();">
</center>
				</p>

	    </fieldset>
	  </form>
</div>
</body>
</html>