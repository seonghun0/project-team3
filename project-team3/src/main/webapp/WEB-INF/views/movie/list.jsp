<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Blank Page | Bootstrap Based Admin Template - Material Design</title>
    
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
    
	<style type="text/css">
	section.content{
    	margin: 87px 30px 0 30px;
    }
    .btn{
    	display: none;
    }
    .btn-group{
    	width : 120px;
    	height: 50px;
    	background-color: transparent;
		outline: 0;
	    border: 0;
    }
    .container{
    	width: 1660px
    }
    .sub_name{
    	margin-top: 10px;
    	width: 80px;
    }
    .tt1.tt2{
    	padding-left: 0px;
    	padding-right: 0px;
    }
    .tt1{
    	width: 70px;
    }
    .thumbnail{
    	padding: 0;
    	margin-bottom: 0;
    	margin-top: 10px;
    }
	</style>    
</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <jsp:include page="/WEB-INF/views/module/topbar.jsp"></jsp:include>
    <section>
    </section>

	<section class="content">
		<div class="row clearfix">
			<div class="container">
				<div class="col-xs-1 tt1">
					<h2 class="sub_name">영화</h2>
				</div>
				<div class="col-xs-3 tt2">
					<select class="form-control show-tick" id="genre">
					    <option disabled="disabled" selected="selected" value="0">장르</option>
					    	<option value="0">전체</option>
					    <c:forEach var="i" items="${ genre }">
						    <option value="${ i.genreid }">${ i.genrename }</option>
					    </c:forEach>
					</select>
					<select class="form-control show-tick" id="original_language">
					    <option disabled="disabled" selected="selected" value="0">원작어</option>
						    <option value="ko">한국어</option>
						    <option value="en">영어</option>
						    <option value="fr">프랑스어</option>
						    <option value="de">독일어</option>
						    <option value="es">스페인어</option>
						    <option value="ja">일본어</option>
						    <option value="pt">포르투갈어</option>
						    <option value="ru">러시아어</option>
						    <option value="it">이탈리아어</option>
						    <option value="zh">중국어</option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div id="aniimated-thumbnials" class="list-unstyled row clearfix">
					<c:forEach var="i" items="${ movie }" varStatus="status">
						<div class="col-md-2">
							<a href="info?movie_id=${ i.movie_id }" data-sub-html="Demo Description">
								<img class="img-responsive thumbnail" src="https://www.themoviedb.org/t/p/w440_and_h660_face/${ i.posterpath }">
					   		</a>
					   		<h5>${ status.index } ${ i.title } ${ i.vote_count } </h5>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
   <script type="text/javascript">
   var scrollchk = true; // 스크롤 체크 여부 확인
   var mutex = false;
   
 	//Javascript
   var count = 0;
   //스크롤 바닥 감지
   $(window).scroll(function() {
       /* //추가되는 임시 콘텐츠
       //window height + window scrollY 값이 document height보다 클 경우,
       if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
       	//실행할 로직 (콘텐츠 추가)
        	count++;
       		setTimeout(fetchlist,1000)
       } */
       var $window = $(this);
       var scrollTop = $window.scrollTop();
       var windowHeight = $window.height();
       var documentHeight = $(document).height();
       
       //console.log(documentHeight +"/"+ windowHeight +"/"+ scrollTop)
       //새로고침이나 뒤로가기시 스크롤이 밑으로가있으면 로딩체크를 하여 알람메시지가 뜨므로 페이지를 완전히 세팅후 스크롤 체크를 하도록 방어처리
       if(scrollchk){
    	   //scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
    	   if( scrollTop + windowHeight + 230 > documentHeight ){
    		   if(mutex){
    			   return;
    		   }
    		   mutex = true;
    		   
    		   setTimeout(fetchlist,500)
    	   }
       }
       
   });
   function fetchlist(){
	   var genre = $('#genre option:selected').val();
	   var ol = $('#original_language option:selected').val();
	   console.log(count)
	   $.ajax({
  			type:"get",
  			url:"./infinite",
  			data:{ count : count, genre : genre, ol : ol }
  		})
  		.done(function(data){
  			var length = data.length;
  			// 남은 데이터가 0개 이하일 경우 무한 스크롤 종료
  			if( length<=-1){
  				mutex = true;
  				scrollchk = false;
  				return;
  			}
  			$.each(data, function(i, item){
  				//alert(item.movie_id)
  				var addcontent = '<div class="col-lg-2 col-md-4 col-sm-6 col-xs-12"><a href="info?movie_id='+item.movie_id+'" data-sub-html="Demo Description"><img class="img-responsive thumbnail" src="https://www.themoviedb.org/t/p/w440_and_h660_face/'+item.posterpath+'"></a><h5>'+(i+24)+item.title+'</h5></div>'
  				//div에 추가되는 콘텐츠를 append	
  				$('#aniimated-thumbnials').append(addcontent);
  			})
  			
  			count += 1;
  			scrollchk = true; // 데이터 로딩이 끝나면 스크롤 체크를 풀어준다.	
  			mutex = false; // 데이터 로딩이 끝나면 ajax점근 권한을 준다. (중복호출 방어)
  			//출처 https://blog.naver.com/PostView.naver?blogId=jjs9006&logNo=222167021604&parentCategoryNo=&categoryNo=3&viewDate=&isShowPopularPosts=true&from=search
  			
  		})
  		.fail(function(data,textStatus,error){
			alert("code:"+data.status+"\n"+"message:"+data.responseText+"\n"+"error:"+error);
			alert('error');
		})
   }
   
   $("#genre").on('change', function(){
	   
	   changedata()
   })
   $("#original_language").on('change', function(){
	   
	   changedata()
   })
   
   function changedata(){
	   var genre = $('#genre option:selected').val();
	   var ol = $('#original_language option:selected').val();
	   console.log(count);
	   $.ajax({
		   type:'post',
		   url:'./select',
		   data: { genre : genre, count : count , ol : ol}
	   })
	   .done(function(data){
		   $('#aniimated-thumbnials').children().remove();
		   $.each(data, function(i, item){
 				//alert(item.movie_id)
 				var addcontent = '<div class="col-lg-2 col-md-4 col-sm-6 col-xs-12"><a href="info?movie_id='+item.movie_id+'" data-sub-html="Demo Description"><img class="img-responsive thumbnail" src="https://www.themoviedb.org/t/p/w440_and_h660_face/'+item.posterpath+'"></a><h5>'+item.title+'</h5></div>'
 				//div에 추가되는 콘텐츠를 append	
 				$('#aniimated-thumbnials').append(addcontent);
 			})
	   })
	   .fail(function(data,textStatus,error){
			alert("code:"+data.status+"\n"+"message:"+data.responseText+"\n"+"error:"+error);
			alert('error');
		})
   }
   </script>
    
</body>

</html>
