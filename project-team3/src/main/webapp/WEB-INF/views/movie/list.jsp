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
    	margin: 100px 30px 0 30px;
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
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <jsp:include page="/WEB-INF/views/module/topbar.jsp"></jsp:include>
    <section>
    </section>

	<section class="content">
		<div class="row clearfix">
			<div class="container">
				<div class="col-xs-1 tt1">
					<h2 class="sub_name">영화</h2>
				</div>
				<div class="col-xs-2 tt2">
					<select class="form-control show-tick">
					    <option disabled="disabled" selected="selected">장르</option>
					    	<option >전체</option>
					    <c:forEach var="i" items="${ genre }">
						    <option value="${ i.genreid }">${ i.genrename }</option>
					    </c:forEach>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div id="aniimated-thumbnials" class="list-unstyled row clearfix">
					<c:forEach var="i" items="${ movie }">
						<div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
							<a href="info?movie_id=${ i.movie_id }" data-sub-html="Demo Description">
								<img class="img-responsive thumbnail" src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ i.posterpath }">
					   		</a>
					   		${ i.title }
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
   <script type="text/javascript">
 	//Javascript
   var count = 0;
   //스크롤 바닥 감지
   window.onscroll = function(e) {
       //추가되는 임시 콘텐츠
       //window height + window scrollY 값이 document height보다 클 경우,
       if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
       	//실행할 로직 (콘텐츠 추가)
           count++;
           var addContent = '<c:forEach var="i" begin="1" end="20"><div class="col-lg-3 col-md-4 col-sm-6 col-xs-12"><a href="/mrp2/resources/images/image-gallery/${ i }.jpg" data-sub-html="Demo Description"><img class="img-responsive thumbnail" src="/mrp2/resources/images/image-gallery/thumb/thumb-${ i }.jpg"></a>text</div></c:forEach>';
           //div에 추가되는 콘텐츠를 append
           $('#aniimated-thumbnials').append(addContent);
       }
   };
   </script>
    
</body>

</html>
