<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title>Login</title>
    <style>
       body{background-color: #000; color: #fff;}
       


       .img{
           display: block;
           margin: 100px auto;
       }
       .id_passwd{
           font-size: 30px;
           font-weight: bold;
           width: 350px;
           margin: 20px auto;
           text-align: center;
       }
       input{
           background-color: #000;
           width: 200px;
           height: 30px;
           float: right;
           color: #fff;
           font-size: 25px;
           font-weight: bold;
       }
       .login{
           width: 350px;
           margin: 40px auto;
       }
       .login_button{
           width: 100px;
           height: 45px;
           background-color: green;
           font-size: 20px;
           text-align: center;
           color: #fff;
           margin-left: 60px;
       }
       .join_button{
           width: 100px;
           height: 45px;
           font-size: 20px;
           text-align: center;
           color: #fff;
           float: right;
           margin-right: 50px;
           background-color: green;
       }
    </style>
</head>

<body>
    <a href='/mrp' ><img class="img" src="/mrp/resources/images/ourmovie_03.gif"></a>
    

    <div class="member">

        <div class="id_passwd">
            ID
            <input type="text">
        </div><!--id_passwd-->
        <div class="id_passwd">
            PASSWD
            <input type="password">
        </div><!--id_passwd-->

        <div class="login">
        	<button class="login_button" id="login_button" >LOGIN</button>
        	<button class="join_button" id="join_button" >JOIN</button>
        </div>

    </div><!--member-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
	<script type="text/javascript">
	
		$('#join_button').click(function(){
			location.href = '/mrp/member/join';
		});
		
	</script>
</body>
</html>