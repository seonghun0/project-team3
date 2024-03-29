<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title> Our Movie | kdigital-busan.team3</title>
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
    
    <link rel="stylesheet" href="/mrp/resources/plugins/owl-carousel/assets/owl.carousel.css" />
    <link rel="stylesheet" href="/mrp/resources/plugins/owl-carousel/assets/owl.theme.default.css" />
    <!-- https://www.positronx.io/owl-carousel-2-create-custom-navigation-next-and-previous-arrows/  -->
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

            <!-- CPU Usage -->
            <c:if test="${ sessionScope.loginuser.memberId == null }">
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div id="carousel-example-generic_2" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic_2" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic_2" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic_2" data-slide-to="2"></li>
                                    <li data-target="#carousel-example-generic_2" data-slide-to="3"></li>
                                </ol>
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                
                                    <div class="item active">
                                    	<a href="movie/info?movie_id=${ prmovie[0].movie_id }">
                                        <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2${ prmovie[0].posterpath }" class="main-img" />
                                        </a>
                                        <div class="carousel-caption">
                                            <h3>${ prmovie[0].title }</h3>
                                            <p>${ prmovie[0].overview }</p>
                                        </div>
                                    </div>
								
								<c:forEach var="i" items="${ prmovie }" begin="1">
                                   <div class="item">
                                   		<a href="movie/info?movie_id=${ i.movie_id }">
                                        <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2${ i.posterpath }" class="main-img" />
                                        </a>
                                        <div class="carousel-caption">
                                            <h3>${ i.title }</h3>
                                            <p>${ i.overview }</p>
                                        </div>
                                    </div>
								</c:forEach>
                                </div>
                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic_2" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic_2" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </c:if>
         	<div class="block-header user">
                
            </div>
            <!-- Widgets -->
            <div class="row clearfix user">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			    </div>
			</div>
            <br>
            <!-- #END# CPU Usage -->
            <div class="block-header">
                <h2>현재 상영중인 영화</h2>
            </div>
            <!-- Widgets -->
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="t" items="${ now }">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="movie/info?movie_id=${ t.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ t.posterpath }">
			                <span class="text">${ t.vote_average }</span> 
			                </a>
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <!-- #END# Widgets -->
            <br>
            <div class="block-header">
                <h2>인기 영화</h2>
            </div>
            <!-- Widgets -->
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="i" items="${ pop }">
			            <a href="movie/info?movie_id=${ i.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ i.posterpath }">
			                <span class="text">${ i.vote_average }</span>
			                </a>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <!-- #END# Widgets -->
            <br>
            <div class="block-header">
                <h2>평점 높은 영화</h2>
            </div>
            <!-- Widgets -->
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="t" items="${ top }">
			            <div class="item">
			            	<div class="textoverlay">
			            	<a href="movie/info?movie_id=${ t.movie_id }">
			                <img src="https://www.themoviedb.org/t/p/w220_and_h330_face/${ t.posterpath }">
			                <span class="text">${ t.vote_average }</span> 
			                </a>
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
        	
        	var member = '${sessionScope.loginuser.memberId}';
        	if(member != ''){
        		$.ajax({
        			type:'post',
        			url:'/mrp/recommend',
        			dataType: 'Json'
        		})
        		.done(function(data){
        			$('.block-header.user').append('<h2>'+member+'님에게 추천하는 영화</h2>');
        			$('.row.clearfix.user div').append('<div class="owl-carousel owl-theme"></div>');
        			$.each(data, function(i, item){
        				var html = '<div class="item"><div class="textoverlay"><a href="movie/info?movie_id='+item.movie_id+'"><img src="https://www.themoviedb.org/t/p/w220_and_h330_face/'+ item.posterpath +'" class="user"><span class="text user">'+ item.vote_average +'</span></a></div></div>'
        				$('.row.clearfix.user .owl-carousel.owl-theme').append(html)
        			});
        			
        			$('.row.clearfix.user .owl-carousel.owl-theme').owlCarousel({
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
        		})
        		.fail(function(xhr, status, err){
        			console.log(err)
        		})
        	}
        	
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
	<script type="text/javascript">
	
		
	
	</script>
    
</body>

</html>
