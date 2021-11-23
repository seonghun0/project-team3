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
	
		.content{
	    	margin: 100px 10px 0 10px;
	    }
	    .container{
	    	width: 1600px
	    }
	    .btn{
	    	display: none;
	    }
	    .btn-group {
	    	height: 50px;
	    	background-color: transparent;
	    	outline: 0;
	    	border: 0;
	    }
	    .sub_name{
	    	width: 90px;
	    }
	    .select_box{
	    	padding-left: 5px; 
	    	padding-right: 5px;
	    }
	    .form-control{
	    	padding: 9px 0px;
	    }
	    .name{
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

	<div class="content">
		<div class="container">
			<div class="col-md-1 sub_name">
				<h2 class="name">영화</h2>
        	</div>
        	<div class="col-md-1 select_box">
        		<select class="form-control show-tick ">
					<option disabled="disabled" selected="selected">장르</option>
	                <c:forEach var="i" begin="1" end="10">
	                	<option value="${ i }"> ${ i }</option>
	                </c:forEach>
            	</select>
        	</div>
        	<div class="col-md-1 select_box">
        		<select class="form-control show-tick ">
					<option disabled="disabled" selected="selected">장르</option>
	                <c:forEach var="i" begin="1" end="10">
	                	<option value="${ i }"> ${ i }</option>
	                </c:forEach>
            	</select>
        	</div>
		</div>
	</div>

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
</body>

</html>
