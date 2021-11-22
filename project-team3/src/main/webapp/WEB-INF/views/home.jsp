<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Welcome To | Bootstrap Based Admin Template - Material Design</title>
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
    .nav-button {
      height: 155px;
      width: 25px;
      position: absolute;
      top: 0px !important;
      outline: 0;
      border: 0;
      opacity: 0.8;
      vertical-align: middle;
    }
    .owl-nav {
      overflow: hidden;
      height: 0px;
    }
    .owl-prev {
      left: -35px;
    }
    .owl-next {
      right: -35px;
    }
    .owl-carousel div h2{
	   position:absolute;
	   color:#FFF;
	   font-size:17px;
	   display:block;
	   top:120px;
	   left: 10px;
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
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>DASHBOARD</h2>
            </div>

            <!-- CPU Usage -->
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
                                        <img src="resources/images/image-gallery/10.jpg" class="main-img" />
                                        <div class="carousel-caption">
                                            <h3>First slide label</h3>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="resources/images/image-gallery/12.jpg" class="main-img" />
                                        <div class="carousel-caption">
                                            <h3>Second slide label</h3>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="resources/images/image-gallery/19.jpg" class="main-img" />
                                        <div class="carousel-caption">
                                            <h3>Third slide label</h3>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="resources/images/image-gallery/19.jpg" class="main-img" />
                                        <div class="carousel-caption">
                                            <h3>Third slide label</h3>
                                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                        </div>
                                    </div>
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
            <!-- #END# CPU Usage -->
            <div class="block-header">
                <h2>DASHBOARD</h2>
            </div>
            <!-- Widgets -->
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="i" begin="1" end="20">
			            <div class="item">
			            	<div class="textoverlay">
			            	<h2>text${ i }</h2>
			                <img src="/mrp/resources/images/image-gallery/${ i }.jpg">
			                </div>
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <!-- #END# Widgets -->
            <div class="block-header">
                <h2>DASHBOARD</h2>
            </div>
            <!-- Widgets -->
            <div class="row clearfix">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			        <div class="owl-carousel owl-theme">
			            <c:forEach var="i" begin="1" end="20">
			            <div class="item">
			                <img src="/mrp/resources/images/image-gallery/${ i }.jpg">
			            </div>
			            </c:forEach>
			        </div>
				</div>
            </div>
            <!-- #END# Widgets -->
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
                navText: ["<div class='nav-button owl-prev'><</div>", "<div class='nav-button owl-next'>></div>"],
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                touchDrag  : true,
                mouseDrag  : true
            });
        });
    </script>
</body>

    
</body>

</html>
