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
          아이디<br>
          <input type="text" name="user_ID" placeholder="아이디 입력" >
          <input type="button" name="user_IDcheck" value="아이디 확인">
          <br>
          비밀번호<br> 
          <input type="password" name="user_PW1" value="123456"><br>
          비밀번호 재확인<br> 
          <input type="password" name="user_PW2" value="123456">
          <input type="button" name="user_PWcheck" value="비밀번호 재확인">
          <br>
          생년월일<br> 
          <select name="year">
            <option value="">-- 선택 --</option>
            <option value="1995">1974</option>
            <option value="1995">1975</option>
            <option value="1995">1976</option>
            <option value="1995">1977</option>
            <option value="1995">1978</option>
            <option value="1995">1979</option>
            <option value="1995">1980</option>
            <option value="1995">1981</option>
            <option value="1995">1982</option>
            <option value="1995">1983</option>
            <option value="1995">1984</option>
            <option value="1995">1985</option>
            <option value="1995">1986</option>
            <option value="1995">1987</option>
            <option value="1995">1988</option>
            <option value="1995">1989</option>
            <option value="1995">1990</option>
            <option value="1995">1991</option>
            <option value="1995">1992</option>
            <option value="1995">1993</option>
            <option value="1995">1994</option>
            <option value="1995">1995</option>
            <option value="1996">1996</option>
            <option value="1997">1997</option>
            <option value="1998">1998</option>
            <option value="1999">1999</option>
            <option value="2000">2000</option>
            <option value="2000">2001</option>
            <option value="2000">2002</option>
            <option value="2000">2003</option>
            <option value="2000">2004</option>
            <option value="2000">2005</option>
            <option value="2000">2006</option>
            <option value="2000">2007</option>
            <option value="2000">2008</option>
            <option value="2000">2009</option>
            <option value="2000">2010</option>
          </select>
          <select name="month">
            <option value="">-- 선택 --</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
          </select>
          <select name="day">
            <option value="">-- 선택 --</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
          <br><br>
          성별<br>  
          <label for="man">남자</label>
          <input type="radio" name="gender" value="m" id="man">
          <label for="woman">여자</label>
          <input type="radio" name="gender" value="m" id="woman"> <br><br>
          
          좋아하는 영화 장르<br> 
          액션<input type="checkbox" name="check" value="hobby1">
          SF<input type="checkbox" name="check" value="hobby2">
          드라마<input type="checkbox" name="check" value="hobby3">
          로맨스<input type="checkbox" name="check" value="hobby4">
          <br><br>
          좋아하는 배우<br>  <input type="text" name="user_name" value=""> <br>
          
        </form>

        <button class="join_button">JOIN</button>
      </section>
      
      
    

</body>
</html>