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
    <style type="text/css">
    	section.content{
    		margin: 100px 15px 0 15px
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
        <div class="container-fluid">

            <!-- Widgets -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-3 col-sm-6 col-xs-12">
                 <div class="card">
                   	<div class="header">
                           <h2>
                               회원리스트
                           </h2>
                       </div>
                	<div class="body table-responsive">
		            	<table class="table table-condensed">
		            		<c:forEach var="memberlist" items="${ memberlist }">
		            		<tr>
		            			<td>${ memberlist.memberId }</td>
		            			<td>${ memberlist.gender }</td>
		            			<td><fmt:formatDate value="${ memberlist.birth_date }" pattern="yyyy-MM-dd" /></td>
		            			<td><fmt:formatDate value="${ memberlist.join_date }" pattern="yyyy-MM-dd" /></td>
		            			<td><input type="text" value="${ memberlist.usertype }" class="inputuser"></td>
		            			<td><input type="button" class="changeusertype" data-type="${ memberlist.usertype}" data-id= "${ memberlist.memberId }" value="수정"></td>
		            			<td><input type="button" class="memberdt" data-id="${ memberlist.memberId }" value="탈퇴"></td>
		            		</tr>
		            		</c:forEach>
		            	</table>
		            </div>
                </div>
            </div>
            </div>
            <!-- #END# Widgets -->
		</div>
    </section>

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    <script type="text/javascript">
    	
    	$('.changeusertype').click(function(){
    		var usertype = $('.inputuser').val();
    		var memberId = $(this).attr('data-id');
			
    		$.ajax({
    			type:'post',
    			url:'./updateusertype',
    			data:{ usertype : usertype , memberId : memberId}
    		})
    		.done(function(data){
    			alert('변경되었습니다.')
    		})
    		.fail(function(data, status, err){
    			console.log(data.status)
    		})

    	})
    	$('.memberdt').click(function(){
    		var yes = confirm('탈퇴시키겠습니까?');
    		
    		if (yes){
    			var memberId = $(this).attr('data-id');
        		
        		$.ajax({
        			type:'post',
        			url:'./deleteuser',
        			data:{ memberId : memberId}
        		})
        		.done(function(data){
        			alert('탈퇴되었습니다.')
        			location.reload();
        		})
        		.fail(function(data, status, err){
        			console.log(data.status)
        		})
    		}
    		
    	})
    </script>
</body>

</html>
