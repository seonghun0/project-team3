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
    <link rel="stylesheet" href="/mrp/resources/plugins/owl-carousel/assets/owl.carousel.css" />
    <link rel="stylesheet" href="/mrp/resources/plugins/owl-carousel/assets/owl.theme.default.css" />
    
    <style type="text/css">
    	section.content{
	    	margin: 100px 10px 0 10px;
	    }
	     .main-img{
	   		display: block;
	   		margin: 0px auto;
	    }
	    .cc{
		   top:50px;
		}
		.textoverlay{
			z-index: 5;
		}
		.owl-dots{
			display: none;
		}
		h6{
			margin-top:0;
			margin-bottom:0;
		}
		.owl-nav button {
		    position: absolute;
		    top: 0;
		    bottom: 0;
		    width:10px;
		}
		
		.owl-prev {
		    left: -25px;
		}
		
		.owl-next {
		    right: -25px;
		}
		
		.owl-nav button i {
		    font-size: 25px;
		    text-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
		}
		.text{
			position: absolute;
			top: 90%;
			left: 80%;
			color: #fff;
			font-size: 20px;
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

    <section class="content">
        <div class="container-fluid">
        	<div class="block-header">
                <h2>예매율 순위</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="t" items="${ ticketing }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ t.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ t.posterpath }">
			                </a>
			                ${ status.index+1 } 위
			                ${ t.title }
			                ${ t.reserve_rate } %	
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <div class="block-header">
                <h2>평점이 높은 영화</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ best6 }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <br>
            <div class="block-header">
                <h2>엄선 1970년대 영화</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ seventys }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <br>
            <div class="block-header">
                <h2>드라마 인기작</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ drama }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
             <br>
            <div class="block-header">
                <h2>코미디 인기작</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ comedy }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
             <br>
            <div class="block-header">
                <h2>액션 인기작</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ action }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
             <br>
            <div class="block-header">
                <h2>스릴러 인기작</h2>
            </div>
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="top10" items="${ thriller }" varStatus="status">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="/mrp/movie/info?movie_id=${ top10.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ top10.posterpath }">
			                <span class="text">${ top10.vote_average }</span> 
			                </a>
			                ${ status.index+1 }
			                ${ top10.title }
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
		</div>
    </section>

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
    <script src="/mrp/resources/plugins/owl-carousel/owl.carousel.js"></script>
    <script>
        $(function () {
            $('.owl-carousel').owlCarousel({
                items: 6,
                margin: 10,
                loop: true,
                nav: true,
                navText: ["<i class='fa fa-chevron-right'></i>","<i class='fa fa-chevron-left'></i>"],
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                touchDrag  : true,
                mouseDrag  : true
            });
        });
    </script>
    
</body>

</html>
