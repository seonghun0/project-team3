<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<head>
    <title>join</title>
    <style>
       body{background-color: #000; color: #fff; font-size: 20px;}
       
       .img{
           display: block;
           margin: 100px auto 50px;
       }
       section{
           width: 400px;
           margin: 0 auto;
       }
       input{
           height: 25px;
           margin-top: 10px;
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
    <img class="img" src="/mrp/resources/images/ourmovie_03.gif">
   
      <section>
        <form name="login" action="index.html" method="post">
        <table style="font-size: 17px">
	        <tr>
	        	<th>
	        		<span> 아이디</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="text" name="user_ID" placeholder="아이디 입력" >
	          		<input type="button" name="user_IDcheck" value="아이디 확인">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span> 비밀번호</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="user_PW1" value="123456">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>비밀번호 확인</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="password" name="user_PW2" value="123456">
	          		<input type="button" name="user_PWcheck" value="비밀번호 확인">
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
					액션<input type="checkbox" name="check" value="hobby1">
	          		SF<input type="checkbox" name="check" value="hobby2">
	          		드라마<input type="checkbox" name="check" value="hobby3">
					로맨스<input type="checkbox" name="check" value="hobby4">
	        	</td>
	        </tr>
	        <tr>
	        	<th>
	        		<span>좋아하는 배우</span>
	        	</th>
	        	<td></td>
	        	<td>
	        		<input type="text" name="user_name" value="">
	        	</td>
	        </tr>
		</table>
        </form>

        <button class="join_button">JOIN</button>
      </section>
      
      
    

</body>
</html>