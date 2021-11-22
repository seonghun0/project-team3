<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title>Login</title>
  
    <style>
    
       body{background-color: #000; color: #fff;}

       .logoimg{
           display: block;
           margin: 100px auto 130px;
           
       }
       .id_passwd{
           font-size: 30px;
           font-weight: bold;
           width: 350px;
           margin: 30px auto;
           text-align: center;
       }
       .login{
           width: 300px;
           margin: auto;
           padding : 0 0 0 130px;
       }
       .login_button{
           width: 100px;
           height: 45px;
           background-color: green;
           font-size: 20px;
           text-align: center;
           color: #fff;
           margin: auto;
       }
       .join_button{
           width: 100px;
           height: 45px;
           font-size: 20px;
           text-align: center;
           color: #fff;
           background-color: green;
           margin: auto;
       }
       .input{
       		font-size : 15px;
       		float: right;
       		color: #fff;
       		background-color: #000;
       		width: 200px;
           	height: 30px;
           	font-weight: bold;
       }
       
       

    </style>
</head>

<body>
    <a href='/mrp' ><img class="logoimg" src="/mrp/resources/images/ourmovie_03.gif"></a>
    

    <div class="member">
		<form action="login" method="post" id ="loginform">
	        <div class="id_passwd">
	            ID
	            <input type="text" name="memberId" placeholder="아이디를 입력해 주세요" class="input">
	        </div><!--id_passwd-->
	        <div class="id_passwd">
	            PASSWD
	            <input type="password" name="passwd" placeholder="비밀번호를 입력해 주세요" class="input">
	        </div><!--id_passwd-->
	        <div class="login">
	        	<input type="button" class="login_button" id="login_button" value="로그인">
	        	<input type="button" class="join_button" id="join_button" value="회원가입"> 
	        </div>
		</form>
    </div><!--member-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
	<script type="text/javascript">
		
		$('#login_button').click(function(){
			/* ${'#loginform'}.submit() */
			location.href = '/mrp';
		});
	
		$('#join_button').click(function(){
			location.href = '/mrp/member/join';
		});
		
	</script>
</body>
</html>