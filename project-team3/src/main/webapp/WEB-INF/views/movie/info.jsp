<%@page import="org.springframework.web.context.annotation.SessionScope"%>
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
    	margin:100px 150px 0 150px;
    }
    #canvas{
    	text-align: center; 
    }
    textarea{
    	resize: none;
    }
    .write{
    	width: 10%;
    	height: 90%;
    	position: absolute;
    }
	.star {
	font-size: 30px;
	}
	.star a{
 	text-decoration: none;
	color: gray;
	}
	.star a.on{
	color: red;
	}
	.star-ratings {
	  color: #aaa9a9; 
	  position: relative;
	  unicode-bidi: bidi-override;
	  width: max-content;
	  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
	  -webkit-text-stroke-width: 1.3px;
	  -webkit-text-stroke-color: #2b2a29;
	  font-size: 30px
	}
	 
	.star-ratings-fill {
	  padding: 0;
	  position: absolute;
	  z-index: 1;
	  display: flex;
	  left: 0;
	  overflow: hidden;
	  -webkit-text-fill-color: red;
	}
	 
	.star-ratings-base {
	  z-index: 0;
	  padding: 0;
	}
	.stars{
		font-size: 20px;
	}
	p{
		text-align: center;
		width: 140px;
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
            <div class="row clearfix">
	            <div class="col-lg-4 ">
					<div class="content">
						<div id="canvas"><a href="#"><img src="https://www.themoviedb.org/t/p/w300_and_h450_bestv2/${ movieinfo.posterpath }"/></a></div>
						<div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"></div>
		            </div>
	            </div>
	            <div class="col-lg-8">
		            <div class="content">
			            <div class="row clearfix">
			            	<div class="col-md-6">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<h1> ${ movieinfo.title }</h1>
	                                </div>
	                                <div class="row">
	                                <div class="col-md-6">
	                                <div class="star-ratings">
										<div class="star-ratings-fill" style="width: ${ movieinfo.vote_average * 10 }%">
										   <span value="1">★</span>
										   &nbsp;
										   <span value="2">★</span>
										   &nbsp;
										   <span value="3">★</span>
										   &nbsp;
										   <span value="4">★</span>
										   &nbsp;
										   <span value="5">★</span>
										</div>
										<div class="star-ratings-base">
										   <span value="1">★</span> 
										   <span value="2">★</span>
										   <span value="3">★</span>
										   <span value="4">★</span>
										   <span value="5">★</span>
										</div>
										</div>
										</div>
										<div class="col-md-3 star-ratings">
										${ movieinfo.vote_average }
										</div>
									</div>
	                            </div>
	                        </div>
						</div>
						<div class="row clearfix">
				            <div class="col-md-6">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<h4>${ movieinfo.subtitle }</h4>
	                                </div>
	                            </div>
	                        </div>
						</div>
						<div class="row clearfix">
				            <div class="col-md-6">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<h3>${ movieinfo.overview }</h3>
	                                </div>
	                            </div>
	                        </div>
						</div>
					</div>
            	</div>
			</div>
		<div class="row clearfix">
        	<div class="col-lg-12 col-md-3 col-sm-6 col-xs-12">
                    <div class="body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tab-nav-right" role="tablist">
                            <li role="presentation" class="active"><a href="#home" data-toggle="tab">HOME</a></li>
                            <li role="presentation"><a href="#profile" data-toggle="tab">PROFILE</a></li>
                            <li role="presentation"><a href="#review" data-toggle="tab">REVIEW</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                <b>Home Content</b>
                                <P class="star"> 
								   <a value="1">★</a><a value="2">★</a><a value="3">★</a><a value="4">★</a><a value="5">★</a>
								<p>
								<div class="star-ratings">
								<div class="star-ratings-fill" style="width: 70%">
								   <span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span>
								</div>
								<div class="star-ratings-base">
								   <span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span>
								</div>
								</div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                            	
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="review">
                            <b>REVIEW</b>
                            	<div class="row clearfix">
                            		<div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 tt1">
										<P class="star"> 
								   			<a value="1">★</a><a value="2">★</a><a value="3">★</a><a value="4">★</a><a value="5">★</a>
										<p>
	                                </div>
	                                <div class="col-lg-10 col-md-12 col-sm-12 col-xs-12 tt">
	                                	<textarea rows="3" cols="100" name="review" class="review"></textarea>
										<button class="btn btn-block btn-lg waves-effect write">작성하기</button>
	                                </div>
								</div>
								<br>
	                            <div class="row clearfix">
	                            	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						            	<div class="body table-responsive">
						                	<table class="table">
						                		<c:forEach var="i" items="${ list }">
							                		<tr>
							                			<td>
							                				<div class="star-ratings stars">
															<div class="star-ratings-fill" style="width: ${ i.rating*20 }%">
															   <span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span>
															</div>
															<div class="star-ratings-base">
															   <span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span>
															</div>
															</div>
														</td>
							                			<td class="reviewtext">${ i.review }</td>
							                			<td>${ i.member_id }</td>
							                			<td><fmt:formatDate value="${ i.regdate }" pattern="yyyy-MM-dd HH:mm" /></td>
							                			<c:if test="${ sessionScope.loginuser.memberId eq i.member_id }">
							                			<td><a href="javascript:deletereview();" ><i class="material-icons">delete_sweep</i></a></td>
							                			</c:if>
							                		</tr>
						                		</c:forEach>
						                     </table>
										</div>
				                    </div>
				                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" value="${ movieinfo.movie_id }" id="movieid">
            <!-- #END# Example Tab -->
    </section>

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
    <script type="text/javascript">
    var login_user_id = '${ sessionScope.loginuser.memberId }';
    $(function(){
    	
    	var star = 0;
    	
    	$('.star a').click(function(){ 
			$(this).parent().children("a").removeClass("on");    
			$(this).addClass("on").prevAll("a").addClass("on");
			star = $(this).attr("value");
		});
    	
		$('.write').click(function(){
			
			var text = $('.review').val();
			var movie_id = $('#movieid').val();
			$.ajax({
				type:'post',
				url:'./review_rating',
				data: { review : text, movie_id : movie_id, rating: star }
			})
			.done(function(data){
				var text = $('.review').val("");
				if (data == "") {
					alert('리뷰작성은 한번만 가능합니다.');
					return;
				}else{
					$('.table').children().remove();
					//$('.table').html(data)
					$.each(data, function(i, item){
						var html = '<tr><td><div class="star-ratings stars"><div class="star-ratings-fill" style="width: '+ item.rating*20 +'%">'
						html += '<span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span></div>'
						html += '<div class="star-ratings-base"><span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span></div></div>'
						html += '</td><td class="reviewtext">'+item.review+'</td><td>'+item.member_id+'</td><td>'+item.regdate+'</td>';
						
						if (item.member_id == login_user_id) {
							html += '<td><a href="javascript:deletereview();" ><i class="material-icons">delete_sweep</i></a></td>';
						}
						html += '</tr>';
						$('.table').append(html);	
					})
				}
			})
			.fail(function(data,textStatus,error){
				alert("code:"+data.status+"\n"+"message:"+data.responseText+"\n"+"error:"+error);
				alert('error');
			})
			
		})
				
	})  
	function deletereview(){
		var movie_id = $('#movieid').val();
		$.ajax({
			type:'post',
			url:'./deletereview',
			data:{ movie_id : movie_id }
		})
		.done(function(data){
			$('.table').children().remove();
			//$('.table').html(data)
			$.each(data, function(i, item){
				var html = '<tr><td><div class="star-ratings stars"><div class="star-ratings-fill" style="width: '+ item.rating*20 +'%">'
					html += '<span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span></div>'
					html += '<div class="star-ratings-base"><span value="1">★</span><span value="2">★</span><span value="3">★</span><span value="4">★</span><span value="5">★</span></div></div>'
					html += '</td><td class="reviewtext">'+item.review+'</td><td>'+item.member_id+'</td><td>'+item.regdate+'</td>';
					
				if (item.member_id == login_user_id) {
					html += '<td><a href="javascript:deletereview();" ><i class="material-icons">delete_sweep</i></a></td>';
				}
				html += '</tr>';
				$('.table').append(html);
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
