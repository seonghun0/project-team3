<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title> Our Movie | kdigital-busan.team3</title>
    <style>
       body{background-color: #000; color: #fff; }
       
       .logoimg{
           display: block;
           margin: 100px auto 50px;
       }
       section{
           width: 600px;
           margin: 0 auto;
       }
       .input{
       	   width: 440px
       }
       input{
           height: 25px;
           margin-top: 10px;
           font-size : 15px;
           color: #fff;
           background-color: #000;
       }
       .join_button{
           width: 100px;
           height: 45px;
           font-size: 20px;
           text-align: center;
           color: #fff;
           margin-left: 150px;
           margin-top: 30px;
           background-color: green;
       }
    </style>
</head>

<body>
    <a href="/mrp"><img class="logoimg" src="/mrp/resources/images/ourmovie_03.gif"></a>
   
        <form id="joinform" action="join" method="post">
        <table style="font-size: 17px; width: 610px; margin: 0 auto">
	        <tr>
	        	<th style=" width: 130px">
	        		<span> 아이디</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="text" name="memberId" placeholder="아이디 입력" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span> 비밀번호</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="passwd" placeholder="비밀번호 입력" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>비밀번호 확인</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="passwdconfirm" placeholder="비밀번호 확인" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>생년월일</span>
	        	</th>
	        	<td></td>
	        	<td>
					<select name="year" id="year" onchange="javascript:lastday();">
						<option value="">-- 선택 --</option>
		          	</select>
		          	<select name="month" id="month" onchange="javascript:lastday();">
		            	<option value="">-- 선택 --</option>
		          	</select>
		          	<select name="day" id="day">
		            	<option value="">-- 선택 --</option>
		          	</select>
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>성별</span>
	        	</th>
	        	<td></td>
	        	<td>
					<input type="radio" name="sex" value="male" id="man">
	          		<label for="man">남자</label>
	          		<input type="radio" name="sex" value="female" id="woman">
					<label for="woman">여자</label>
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>좋아하는 영화 장르 (3개선택)</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<c:forEach var="i" items="${ genre }">
						<input type="checkbox" name="genre" value=${ i.genreid }>${ i.genrename }
					</c:forEach>
	        	</td>
	        </tr>
		</table>
        </form>
       	<section>
        	<button class="join_button" id="join_button">가입하기</button>
        	<a href="/mrp/member/login" style="font-size: 15px; color: white; padding: 0 0 0 10px">이미 있다면 로그인하기!</a>
		</section>
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
	<script type="text/javascript">
		
		$(document).ready(function(){
			$("input[type='checkbox']").on('click', function(){
				var count = $("input:checked[type='checkbox']").length;
				
				if(count > 3){
					$(this).prop("checked",false);
					alert("3개까지만 선택할 수 있습니다.")
				}
			})
			
			var now = new Date();
			var year = now.getFullYear();
			var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) :'0'+(now.getMonth()+1);
			var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+( now.getDate());
			
			//년도 selectbox 	만들기
			for(var i = 1900; i <= year; i++){
				$('#year').append('<option value="' + i + '">' + i + '년</option>');
			}
			
			// 월별 selectbox 만들기 
			for(var i=1; i <= 12; i++) { 
				var mm = i > 9 ? i : "0"+i ; 
				$('#month').append('<option value="' + mm + '">' + mm + '월</option>'); 
			} 
			
			// 일별 selectbox 만들기 
			for(var i=1; i <= 31; i++) { 
				var dd = i > 9 ? i : "0"+i ; 
				$('#day').append('<option value="' + dd + '">' + dd+ '일</option>'); 
			} 
			$("#year > option[value="+year+"]").attr("selected", "true"); 
			$("#month > option[value="+mon+"]").attr("selected", "true"); 
			$("#day > option[value="+day+"]").attr("selected", "true"); 
			
		})
		$('#join_button').on('click', function(){
			
			var re = /^[A-Za-z0-9]{6,12}$/;
			var memberId = $('#memberId').val();
			var passwd = $("input[name=passwd]").val();
			var passwdconfirm = $("input[name=passwdconfirm]").val();
			
			if(passwd == passwdconfirm){
				
			}else{
				alert("비밀번호가 일치하지 않습니다.");
				$("input[name=passwdconfirm]").val("");
			}
			if(!re.test(memberId)){
				alert('아이디 형식 오류 (6~12개의 영문자 또는 숫자)');
				return;
			}
			
			if($("input[name=memberId]").val() == ""){
				alert("아이디를 입력해주세요")
				return;
			}
			if($("input[name=passwdconfirm]").val() == ""){
				alert("비밀번호를 입력해주세요")
				return;
			}
			
			if($("input[type=radio]").is(':checked') == false){
				alert("성별을 선택해주세요");
				return;
				$("input[type=radio]").focus();
			}
			if($("input[type=checkbox]").is(':checked') == false){
				alert("장르를 선택해주세요");
				return;
			}
			$('#joinform').submit();
		})
		
		$("input[name=memberId]").blur(function(){
			
			var memberId = $(this).val()
			var re = /^[A-Za-z0-9]{6,12}$/;
			if(!re.test(memberId)){
				alert('아이디 형식 오류 (6~12개의 영문자 또는 숫자)');
				$(this).focus();
				return;
			}
			
			$.ajax({
				type:'post',
				url:'./idcheck',
				data:{memberId : memberId}
			})
			.done(function(data){
				if(data == "1"){
					alert("아이디가 중복입니다.")
					$("input[name=memberId]").val("");
					return;
				} else{
					alert("사용가능한 아이디입니다.")
					$("input[name=passwd]").focus();
				}
			})
			.fail(function(data,textStatus,error){
				alert("code:"+data.status+"\n"+"message:"+data.responseText+"\n"+"error:"+error);
				alert('error');
			})
		});
		
		$("input[name=passwdconfirm]").blur(function(){
			var passwd = $("input[name=passwd]").val();
			var passwdconfirm = $("input[name=passwdconfirm]").val();
			
			if(passwd == passwdconfirm){
				
			}else{
				alert("비밀번호가 일치하지 않습니다.");
				$(this).val("");
				return;
			}
		})
		
		function lastday(){ //년과 월에 따라 마지막 일 구하기 
			var Year = $('#year').val(); 
			var Month = $('#month').val(); 
			var day= new Date(new Date(Year,Month,0)).getDate()
			/* = new Date(new Date(Year,Month,0)).getDate(); */ 
			
			$('#day').children('option').remove();
			
			var dayindex_len = $('#day').length
			if(day>dayindex_len){
				for(var i=(dayindex_len); i<=day; i++)
					if (i < 10){
						$('#day').append('<option value="' + '0'+i + '">' +'0'+ i + '일</option>')
					}else{
						$('#day').append('<option value="' + i + '">' + i + '일</option>')
					}
						
			}
		}
		
	</script>
</body>
</html>