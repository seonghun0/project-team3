<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title>join</title>
    <style>
       body{background-color: #000; color: #fff; }
       
       .img{
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
    <a href="/mrp"><img class="img" src="/mrp/resources/images/ourmovie_03.gif"></a>
   
        <form id="join" action="join" method="post">
        <table style="font-size: 17px; width: 600px; margin: 0 auto">
	        <tr>
	        	<th style=" width: 130px">
	        		<span> 아이디</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="text" name="user_ID" placeholder="아이디 입력" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span> 비밀번호</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="user_PW1" value="123456" class="input">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>비밀번호 확인</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="user_PW2" value="123456" class="input">
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
					<input type="radio" name="gender" value="m" id="man">
	          		<label for="man">남자</label>
	          		<input type="radio" name="gender" value="m" id="woman">
					<label for="woman">여자</label>
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>좋아하는 영화 장르</span>
	        	</th>
	        	<td></td>
	        	<td>
					<input type="checkbox" name="check" value="hobby1">액션
	          		<input type="checkbox" name="check" value="hobby2">뮤지컬
	          		<input type="checkbox" name="check" value="hobby3">드라마
					<input type="checkbox" name="check" value="hobby4">로맨스
					<input type="checkbox" name="check" value="hobby4">판타지
					<input type="checkbox" name="check" value="hobby4">공포
					<input type="checkbox" name="check" value="hobby4">모험
					<input type="checkbox" name="check" value="hobby4">스릴러
					<input type="checkbox" name="check" value="hobby4">느와르
					<input type="checkbox" name="check" value="hobby4">코미디
					<input type="checkbox" name="check" value="hobby4">가족
					<input type="checkbox" name="check" value="hobby4">미스터리
					<input type="checkbox" name="check" value="hobby4">전쟁
					<input type="checkbox" name="check" value="hobby4">범죄
					<input type="checkbox" name="check" value="hobby4">SF
					<input type="checkbox" name="check" value="hobby4">다큐멘터리
					<input type="checkbox" name="check" value="hobby4">애니메이션
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>좋아하는 배우</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="text" name="user_name" value="" placeholder="입력해주세요" class="input">
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
		
	</script>
</body>
</html>