<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title>join</title>
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
        <table style="font-size: 17px; width: 600px; margin: 0 auto">
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
	        		<input type="password" name="passwd_confirm" placeholder="비밀번호 확인" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>생년월일</span>
	        	</th>
	        	<td></td>
	        	<td>
					<select name="year">
						<option value="">-- 선택 --</option>
			            <c:forEach var="i" begin="1970" end="2021">
			            	<option value="${ i }">${ i }</option>
			            </c:forEach>
		          	</select>
		          	<select name="month">
		            	<option value="">-- 선택 --</option>
		             	<c:forEach var="i" begin="1" end="12">
		            		<option value="${ i }">${ i }</option>
		            	</c:forEach>
		          	</select>
		          	<select name="day">
		            	<option value="">-- 선택 --</option>
		             	<c:forEach var="i" begin="1" end="31">
		            		<option value="${ i }">${ i }</option>
		            	</c:forEach>
		          	</select>
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>성별</span>
	        	</th>
	        	<td></td>
	        	<td>
					<input type="radio" name="male" value="m" id="man">
	          		<label for="man">남자</label>
	          		<input type="radio" name="female" value="m" id="woman">
					<label for="woman">여자</label>
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>좋아하는 영화 장르 (3개선택)</span>
	        	</th>
	        	<td></td>
	        	<td>
					<input type="checkbox" name="check1" value="hobby1">액션
	          		<input type="checkbox" name="check2" value="hobby2">뮤지컬
	          		<input type="checkbox" name="check3" value="hobby3">드라마
					<input type="checkbox" name="check4" value="hobby4">로맨스
					<input type="checkbox" name="check5" value="hobby5">판타지
					<input type="checkbox" name="check6" value="hobby6">공포
					<input type="checkbox" name="check7" value="hobby7">모험
					<input type="checkbox" name="check8" value="hobby8">스릴러
					<input type="checkbox" name="check9" value="hobby9">느와르
					<input type="checkbox" name="check10" value="hobby10">코미디
					<input type="checkbox" name="check11" value="hobby11">가족
					<input type="checkbox" name="check12" value="hobby12">미스터리
					<input type="checkbox" name="check13" value="hobby13">전쟁
					<input type="checkbox" name="check14" value="hobby14">범죄
					<input type="checkbox" name="check15" value="hobby15">SF
					<input type="checkbox" name="check16" value="hobby16">다큐멘터리
					<input type="checkbox" name="check17" value="hobby17">애니메이션
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
		
		$('#join_button').click(function(){
			/* ${'#join'}.submit() */
			location.href = '/mrp/member/login';
		});
		$(document).ready(function(){
			$("input[type='checkbox']").on('click', function(){
				var count = $("input:checked[type='checkbox']").length;
				
				if(count > 3){
					$(this).prop("checked",false);
					alert("3개까지만 선택할 수 있습니다.")
				}
			})
			
		})
		$('#join_button').on('click', function(){
			$('#joinform').submit();
		})
		
	</script>
</body>
</html>