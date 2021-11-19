<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>team3</title>
    
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
    
    <style type="text/css">
    .content{
    	margin: 100px 10px 0 75px;
    }
    .content2{
    	margin: 50px 10px 0 100px;
    }
    .container{
    	display: flex;
    	width: 1500px;
    	height: 200px;
    }
    .ul{
    	list-style-type: none;
    	margin: 0 auto;
    	padding-inline-start: 0;
    }
    .li{
    	float:left;
    	margin: 0 auto;
    }
    .img{
    	width: 203px;
    	height: 150px;
    }
    .main-img{
   		display: block;
   		margin: 0px auto;
    }
    .item{
    	width: 1300px;
    	text-align: center;
    }
    .carousel-control{
    	opacity: 0.2;
    	width: 120px;
    }
    .carousel{
    	width: 1500px;
    	height: 640px;
    }
    .carousel-inner{
    	width: 1300px;
    	height: 640px;
    	margin: 0 auto;
    }
    .carousel-example-generic{
    	margin: 0 10px;
    }
    .prev-btn{
    	height: 150px;
    	opacity: 0.5;
    	border: 0;
    	outline: 0;
    }
    .next-btn{
    	height: 150px;
    	opacity: 0.8;
    	border: 0;
    	outline: 0;
    }
    .body {
		width: 1550px;
	}
	.caption{
		position: absolute;
		top: 150px;
		left: 60px;
	}
	.caption2{
		position: absolute;
		top: 150px;
		left: 263px;
	}
	.caption3{
		position: absolute;
		top: 150px;
		left: 466px;
	}
	.caption4{
		position: absolute;
		top: 150px;
		left: 669px;
	}
	.caption5{
		position: absolute;
		top: 150px;
		left: 872px;
	}
	.caption6{
		position: absolute;
		top: 150px;
		left: 1075px;
	}
	.caption7{
		position: absolute;
		top: 150px;
		left: 1278px;
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
    
     <!-- With Captions -->
     	<div class="content">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="body">
                            <div id="carousel-example-generic_2" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic_2" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic_2" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic_2" data-slide-to="2"></li>
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
    <!-- list1 -->
    <div class="container content2" role="listbox">
    	<div class="body">
    	<h4>MESSAGE</h4>
    		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			    <ul class="ul">
		    		<li class="li">
		    			<button id="prev-btn" class="prev-btn" ><</button>
		    			<img src="resources/images/image-gallery/1.jpg" class ="img img1" id="img1">
		    			<div class="caption">
                        	<span class="text1" id="text1">1</span>
                        </div>
		    		</li>
			    	<c:forEach var="i" begin="2" end="6">
			    		<li class="li">
			    			<img src="resources/images/image-gallery/${ i }.jpg" class ="img img${ i }" id="img${ i }">
			    			<div class="caption${ i }">
                            	<span class="text${ i }" id="text${ i }">${ i }</span>
                       		</div>
			    		</li>
			    	</c:forEach>
			    	<li class="li">
		    			<img src="resources/images/image-gallery/7.jpg" class ="img img7" id="img7">
		    			<div class="caption7">
                        	<span class="text7" id="text7">7</span>
                        </div>
		    			<button id="next-btn" class="next-btn">></button>
		    		</li>
			    </ul>
		    </div>
		</div>
	</div>
	<!-- end-list1 -->
	
	<!-- list2 -->
    <div class="container content2" role="listbox">
    	<div class="body ">
    	<h4>MESSAGE2</h4>
    		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			    <ul class="ul">
		    		<li class="li">
		    			<button id="prev-btn2" class="prev-btn" ><</button>
		    			<img src="resources/images/image-gallery/1.jpg" class ="img img1" id="img8">
		    			<div class="caption">
                        	<span class="text1" id="text8">1</span>
                        </div>
		    		</li>
			    	<c:forEach var="i" begin="2" end="6">
			    		<li class="li">
			    			<img src="resources/images/image-gallery/${ i }.jpg" class ="img img${ i }" id="img${ i+7 }">
			    			<div class="caption${ i }">
                            	<span class="text${ i }" id="text${ i+7 }">${ i }</span>
                       		</div>
			    		</li>
			    	</c:forEach>
			    	<li class="li">
		    			<img src="resources/images/image-gallery/7.jpg" class ="img img7" id="img14">
		    			<div class="caption7">
                        	<span class="text7" id="text14">7</span>
                        </div>
		    			<button id="next-btn2" class="next-btn">></button>
		    		</li>
			    </ul>
		    </div>
		</div>
	</div>
	<!-- end-list2 -->
	
    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
    <script type="text/javascript">
    	
	    var currentIndex = 0;
			imageFiles = [];
			textnum = [];
	  	for (var i = 1; i < 21; i++){
	  		imageFiles.push(i+'.jpg');
	  	}
	  	for (var j = 1; j < 21; j++){
	  		textnum.push(j);
	  	}
	  	
	  	var img1 = document.querySelector('#img1');
	  	var img2 = document.querySelector('#img2');
	  	var img3 = document.querySelector('#img3');
	  	var img4 = document.querySelector('#img4');
	  	var img5 = document.querySelector('#img5');
	  	var img6 = document.querySelector('#img6');
	  	var img7 = document.querySelector('#img7');
	  	
	  	var text1 = document.querySelector('#text1');
	  	var text2 = document.querySelector('#text2');
	  	var text3 = document.querySelector('#text3');
	  	var text4 = document.querySelector('#text4');
	  	var text5 = document.querySelector('#text5');
	  	var text6 = document.querySelector('#text6');
	  	var text7 = document.querySelector('#text7');
	  	
	  	var prevButtons = document.querySelectorAll('#prev-btn');
	    for(var k = 0; k < prevButtons.length; k++){
	        prevButtons[k].addEventListener('click', function(event){
	            currentIndex--;
	            if(currentIndex < 0){
	                currentIndex = imageFiles.length -1;
	            }
	
	            changeImage2();
	        });
	    }	
	  	var nextButtons = document.querySelectorAll('#next-btn');
	    for (var i = 0; i < nextButtons.length; i++) {
	        nextButtons[i].addEventListener('click',(event) => {
	            currentIndex++;
	            if(currentIndex >= imageFiles.length){
	                currentIndex = 0;
	            }
	            
	            changeImage2();
	        })
	    }
		function changeImage2(){
	
	        var nextIndex = currentIndex + 1 == imageFiles.length ? 0 : currentIndex +1;
	        var nextIndex2 = nextIndex +1 == imageFiles.length ? 0 : nextIndex +1;
	        var nextIndex3 = nextIndex2 +1 == imageFiles.length ? 0 : nextIndex2 +1;
	        var lastIndex = nextIndex3 + 1 == imageFiles.length ? 0 : nextIndex3 +1;
	        var lastIndex2 = lastIndex + 1 == imageFiles.length ? 0 : lastIndex +1;
	        var lastIndex3 = lastIndex2 + 1 == imageFiles.length ? 0 : lastIndex2 +1;
	        
	        if(nextIndex== imageFiles.length){
	            nextIndex = 0;
	        }
	        img1.src = 'resources/images/image-gallery/' + imageFiles[currentIndex];
	        img2.src = 'resources/images/image-gallery/' + imageFiles[nextIndex];
	        img3.src = 'resources/images/image-gallery/' + imageFiles[nextIndex2];
	        img4.src = 'resources/images/image-gallery/' + imageFiles[nextIndex3];
	        img5.src = 'resources/images/image-gallery/' + imageFiles[lastIndex];
	        img6.src = 'resources/images/image-gallery/' + imageFiles[lastIndex2];
	        img7.src = 'resources/images/image-gallery/' + imageFiles[lastIndex3];
	        
	        text1.innerText= textnum[currentIndex];
	        text2.innerText= textnum[nextIndex];
	        text3.innerText= textnum[nextIndex2];
	        text4.innerText= textnum[nextIndex3];
	        text5.innerText= textnum[lastIndex];
	        text6.innerText= textnum[lastIndex2];
	        text7.innerText= textnum[lastIndex3];
	        
	   	}
		
		var img8 = document.querySelector('#img8');
	  	var img9 = document.querySelector('#img9');
	  	var img10 = document.querySelector('#img10');
	  	var img11 = document.querySelector('#img11');
	  	var img12 = document.querySelector('#img12');
	  	var img13 = document.querySelector('#img13');
	  	var img14 = document.querySelector('#img14');
	  	
	  	var text8 = document.querySelector('#text8');
	  	var text9 = document.querySelector('#text9');
	  	var text10 = document.querySelector('#text10');
	  	var text11 = document.querySelector('#text11');
	  	var text12 = document.querySelector('#text12');
	  	var text13 = document.querySelector('#text13');
	  	var text14 = document.querySelector('#text14');
	  	
	  	var prevButtons = document.querySelectorAll('#prev-btn2');
	    for(var k = 0; k < prevButtons.length; k++){
	        prevButtons[k].addEventListener('click', function(event){
	            currentIndex--;
	            if(currentIndex < 0){
	                currentIndex = imageFiles.length -1;
	            }
	
	            changeImage3();
	        });
	    }	
	  	var nextButtons = document.querySelectorAll('#next-btn2');
	    for (var i = 0; i < nextButtons.length; i++) {
	        nextButtons[i].addEventListener('click',(event) => {
	            currentIndex++;
	            if(currentIndex >= imageFiles.length){
	                currentIndex = 0;
	            }
	            
	            changeImage3();
	        })
	    }
		function changeImage3(){
	
	        var nextIndex = currentIndex + 1 == imageFiles.length ? 0 : currentIndex +1;
	        var nextIndex2 = nextIndex +1 == imageFiles.length ? 0 : nextIndex +1;
	        var nextIndex3 = nextIndex2 +1 == imageFiles.length ? 0 : nextIndex2 +1;
	        var lastIndex = nextIndex3 + 1 == imageFiles.length ? 0 : nextIndex3 +1;
	        var lastIndex2 = lastIndex + 1 == imageFiles.length ? 0 : lastIndex +1;
	        var lastIndex3 = lastIndex2 + 1 == imageFiles.length ? 0 : lastIndex2 +1;
	        
	        if(nextIndex== imageFiles.length){
	            nextIndex = 0;
	        }
	        img8.src = 'resources/images/image-gallery/' + imageFiles[currentIndex];
	        img9.src = 'resources/images/image-gallery/' + imageFiles[nextIndex];
	        img10.src = 'resources/images/image-gallery/' + imageFiles[nextIndex2];
	        img11.src = 'resources/images/image-gallery/' + imageFiles[nextIndex3];
	        img12.src = 'resources/images/image-gallery/' + imageFiles[lastIndex];
	        img13.src = 'resources/images/image-gallery/' + imageFiles[lastIndex2];
	        img14.src = 'resources/images/image-gallery/' + imageFiles[lastIndex3];
	        
	        text8.innerText= textnum[currentIndex];
	        text9.innerText= textnum[nextIndex];
	        text10.innerText= textnum[nextIndex2];
	        text11.innerText= textnum[nextIndex3];
	        text12.innerText= textnum[lastIndex];
	        text13.innerText= textnum[lastIndex2];
	        text14.innerText= textnum[lastIndex3];
	        
	   	}
	</script>

    
</body>

</html>
