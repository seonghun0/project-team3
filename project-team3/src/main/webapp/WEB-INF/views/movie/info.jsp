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
    
    <style type="text/css">
    
    div.scroller_wrap {
	    position: relative;
	    top: 0;
	    left: 0;
	}
	ol.people {
	    list-style-type: none;
	    list-style-position: inside;
	    margin: 0;
	    padding: 0;
	    display: flex;
	    position: relative;
	    top: 0;
	    left: 0;
	}
	ol.people.scroller {
	    overflow-y: hidden;
	    overflow-x: scroll;
	    margin-left: -10px;
	    margin-top: -10px;
	    padding-bottom: 10px;
	}
	li.card {
	    margin-top: 10px;
	    margin-bottom: 10px;
	    margin-left: 10px;
	    margin-right: 4px;
	    border: 1px solid rgba(var(--lightGrey), 1);
	    padding-bottom: 10px;
	    border-radius: var(--imageBorderRadius);
	    overflow: hidden;
	}
	ol.people li {
    min-width: 138px;
    width: 138px;
    background-color: #fff;
    margin-right: 10px;
    height: 250px;
	}
	ol.people li>a {
    min-width: 138px;
    width: 138px;
    height: 175px;
    display: block;
	}
    </style>
    
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
    
    <style type="text/css">
    
    
    
    section.content{
    	margin:87px 150px 0 150px;
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
	#op{
		width: 30px;
	}
	.star-input{
		width: 210px;
	}
	.tt1{
		text-align: center;
	}
	.star-input>.input,
	.star-input>.input>label:hover,
	.star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbTCV6h%2FbtrmWrVGzP0%2FcbgJwemVYtKox2S6481AWK%2Fimg.png') no-repeat;}
	.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
	.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
	.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
	star-input>.input.focus{outline:1px dotted #ddd;}
	.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
	.star-input>.input>label:hover,
	.star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label{background-size: 150px; background-position: 0 bottom;}
	.star-input>.input>label:hover~label{background-image: none;}
	.star-input>.input>label[for="p1"]{width:15px;z-index:10;}
	.star-input>.input>label[for="p2"]{width:30px;z-index:9;}
	.star-input>.input>label[for="p3"]{width:45px;z-index:8;}
	.star-input>.input>label[for="p4"]{width:60px;z-index:7;}
	.star-input>.input>label[for="p5"]{width:75px;z-index:6;}
	.star-input>.input>label[for="p6"]{width:90px;z-index:5;}
	.star-input>.input>label[for="p7"]{width:105px;z-index:4;}
	.star-input>.input>label[for="p8"]{width:120px;z-index:3;}
	.star-input>.input>label[for="p9"]{width:135px;z-index:2;}
	.star-input>.input>label[for="p10"]{width:150px;z-index:1;}
	.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
	[type="radio"]:not(:checked) + label:before,[type="radio"]:checked + label:after,[type="radio"]:checked + label:after,
	[type="radio"].with-gap:checked + label:before,[type="radio"].with-gap:checked + label:after,[type="radio"]:checked + label:after,
	[type="radio"].with-gap:checked + label:after,[type="radio"]:checked + label:before  {
		border: 0;
		background-color: rgba(255,255,255,0);
	}
	[type="radio"]:not(:checked) + label, [type="radio"]:checked + label {
		transition:none;
	}
	section.medei_panel{
		width: 100%;
		display: block;
	}
	div.scroller_wrap {
	    position: relative;
	    top: 0;
	    left: 0;
	}
	section.media_panel div.content {
	    display: flex;
	    width: 100%;
	    overflow-x: scroll;
    }
	div.wrapper{
		width: 533px;
    	height: 300px;
	    overflow: hidden;
	    min-width: 350px;
	    width: 350px;
	    height: 197px;
	    box-sizing: border-box;
	    background-position: center;
	    background-repeat: no-repeat;
	    background-size: cover;
	}
	div.video.card div.wrapper div.play_background span.glyphicons_v2 {
	    width: 50%;
	    height: 50%;
	    left: 1px;
	    transition: opacity 200ms linear;
	    
	}
	.glyphicons_v2.play {
	    background-image: url(https://www.themoviedb.org/assets/2/v4/glyphicons/basic/glyphicons-basic-175-play-806cb05551791b8dedd7f8d38fd3bd806e2d397fcfeaa00a5cc9129f0819fd07.svg);
	    z-index: 10;
	}
	a.play_trailer {
	    width: 100%;
	    height: 100%;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	}
	div.play_background {
	    width: 67px;
	    height: 67px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    border-radius: 50%;
	    background: rgba(0,0,0,0.7);
	    
	}
	.glyphicons_v2 {
	    position: relative;
	    top: 0;
	    left: 0;
	    display: inline-flex;
	    align-items: center;
	    justify-content: center;
	    min-width: 1em;
	    min-height: 1em;
	    width: 1em;
	    height: 1em;
	    line-height: inherit;
	    background-position: center center;
	    background-repeat: no-repeat;
	    color: inherit;
	    box-sizing: border-box;
	}
	.svg.invert {
	    filter: invert(1);
	}
	.card{
		margin-bottom: 0;
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
			            	<div class="col-md-10">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<h1> ${ movieinfo.title }</h1>
	                                	<div class="row">
	                                	<div class="col-md-4">
	                                	<h5>(${ movieinfo.subtitle })</h5>
	                                	</div>
	                                	<div class="col-md-8">
		                                	<h5>
		                                	장르 : 
		                                	<c:forEach var="i" items="${ moviegenre }">
											${i.genrename }.
											</c:forEach>
											</h5>
											<h5> 개봉일 : ${ movieinfo.release_date }</h5>
										</div>
										</div>
	                                </div>
	                                <div class="row">
	                                <div class="col-md-2 star-ratings">
										${ movieinfo.vote_average }
										</div>
	                                <div class="col-md-5">
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
									</div>
	                            </div>
	                        </div>
						</div>
						<div class="row clearfix">
				            <div class="col-md-6">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float" id="like">
											<c:choose>
											<c:when test="${ count != '1' }">
		                                    <i class="material-icons">favorite_border</i>
		                                    </c:when>
		                                    <c:otherwise>
		                                    <i class="material-icons">favorite</i>
		                                    </c:otherwise>
		                                    </c:choose>
		                                </button>
		                                <button type="button" class="btn btn-success waves-effect" id="naversearch">
		                                	네이버 검색결과 보기
		                                </button>
		                                <button type="button" class="btn btn-danger waves-effect" id="watchasearch">
		                                	왓챠피디아 검색결과 보기
		                                </button>
	                                </div>
	                            </div>
	                        </div>
						</div>
						<div class="row clearfix">
				            <div class="col-md-12">
	                            <div class="form-group">
	                                <div class="form-line">
	                                	<h4>${ movieinfo.overview }</h4>
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
                            <li role="presentation" class="active"><a href="#home" data-toggle="tab">Main</a></li>
                            <li role="presentation"><a href="#media" data-toggle="tab">Media</a></li>
                            <li role="presentation"><a href="#review" data-toggle="tab">Review</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                <h3>주요 출연진</h3>
                                <div class="row clearfix">
                            
                            <div id="cast_scroller" class="scroller_wrap should_fade is_fading">
				                <ol class="people scroller">
				                <c:forEach var="a" items="${ actor }" varStatus="status">
				                    <li class="card">
				                    	<a href="https://www.themoviedb.org/person/${ a.id }">
											<c:choose>
				                    		<c:when test="${ a.profile_path eq null }">
												<img src="https://www.themoviedb.org/assets/2/v4/glyphicons/basic/glyphicons-basic-4-user-grey-d8fe957375e70239d6abdd549fd7568c89281b2179b5f4470e2e12895792dfa5.svg">			                    		
				                    		</c:when>
				                    		<c:otherwise>
					                    		<img src="https://www.themoviedb.org/t/p/w138_and_h175_face/${ a.profile_path }">
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
				                      <p><a href="https://www.themoviedb.org/person/${ a.id }">${ a.name }</a></p>
				                      <p class="character">${ a.role }</p>
				                    </li>
				                    </c:forEach>
				                </ol>
				                <div class="style_wrapper"></div>
				              </div>
				              </div>
				              <br>
				              <h3>스태프</h3>
				              <div class="row clearfix">
				              <div id="cast_scroller" class="scroller_wrap should_fade is_fading">
				                <ol class="people scroller">
				                <c:forEach var="c" items="${ crew }" varStatus="status">
				                    <li class="card">
				                    	<a href="https://www.themoviedb.org/person/${ c.id }">
				                    		<c:choose>
				                    		<c:when test="${ c.profile_path eq null }">
												<img src="https://www.themoviedb.org/assets/2/v4/glyphicons/basic/glyphicons-basic-4-user-grey-d8fe957375e70239d6abdd549fd7568c89281b2179b5f4470e2e12895792dfa5.svg">			                    		
				                    		</c:when>
				                    		<c:otherwise>
					                    		<img src="https://www.themoviedb.org/t/p/w138_and_h175_face/${ c.profile_path }">
				                    		</c:otherwise>
				                    		</c:choose>
				                    	</a>
				                      <p><a href="https://www.themoviedb.org/person/${ c.id }">${ c.name }</a></p>
				                      <p class="character">${ c.department }</p>
				                    </li>
				                    </c:forEach>
				                </ol>
				                <div class="style_wrapper"></div>
				              </div>
                            
                            </div>
                            </div>
	                         <div role="tabpanel" class="tab-pane fade" id="media">
	                         <b>media</b>
	                         	<section class="media_panel">
	                         		<div id="media_scroller" class="scroller_wrap should_fade is_fading">
					                <div class="h_scroller content scroller">  
					                <c:forEach var="i" items="${ video }" varStatus="status">
									    <div class="video card no_border">
									      <div class="wrapper" style="background-image: url('https://i.ytimg.com/vi/${ i.videokey }/hqdefault.jpg');">
									        <a class="no_click play_trailer" href="https://www.youtube.com/watch?v=${ i.videokey }" target="_blank" data-site="${ i.site }" data-id="${ i.videokey }" data-title="${ i.name }">
									        	<div class="play_background">
									        		<span class="glyphicons_v2 play invert svg"></span>
												</div>
									        </a>
									      </div>
									      <span class="name">${ i.name }</span>
									    </div>
									     </c:forEach>
									    </div>
									</div>
								</section>
							</div>
                            <div role="tabpanel" class="tab-pane fade" id="review">
                            <b>REVIEW</b>
                            	<div class="row clearfix">
                            		<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12 tt1">
										<span class="star-input">
											<span class="input">
										    	<input type="radio" name="star-input" value="1" id="p1">
										    	<label for="p1">1</label>
										    	<input type="radio" name="star-input" value="2" id="p2">
										    	<label for="p2">2</label>
										    	<input type="radio" name="star-input" value="3" id="p3">
										    	<label for="p3">3</label>
										    	<input type="radio" name="star-input" value="4" id="p4">
										    	<label for="p4">4</label>
										    	<input type="radio" name="star-input" value="5" id="p5">
										    	<label for="p5">5</label>
												<input type="radio" name="star-input" value="6" id="p6">
										    	<label for="p6">6</label>
										    	<input type="radio" name="star-input" value="7" id="p7">
										    	<label for="p7">7</label>
										    	<input type="radio" name="star-input" value="8" id="p8">
										    	<label for="p8">8</label>
										    	<input type="radio" name="star-input" value="9" id="p9">
										    	<label for="p9">9</label>
										    	<input type="radio" name="star-input" value="10" id="p10">
										    	<label for="p10">10</label>
										  	</span>
										  	<output for="star-input" id="op"><b>0</b>점</output>						
										</span>
	                                </div>
	                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 tt">
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
															<div class="star-ratings-fill" style="width: ${ i.rating*10 }%">
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
    var movie_id = $('#movieid').val();
    $(function(){
    	
    	$('#naversearch').click(function(){
    		var search = '${ movieinfo.title }';
    		location.href = 'https://movie.naver.com/movie/search/result.naver?query='+ search +'&section=all&ie=utf8';
    	})
    	$('#watchasearch').click(function(){
    		var search = '${ movieinfo.title }';
    		location.href ='https://pedia.watcha.com/ko-KR/search?query='+ search +'&category=contents';
    	})
    	
    	$('#like').click(function(){
    		
    		if (login_user_id == ""){
    			alert('로그인 후에 가능합니다.')
    			var result = confirm('로그인하러 갈까요?')
    			if(result == true){
    				location.href="/mrp/member/login"
    			}
    			return;
    		}
    		$.ajax({
    			type:'post',
    			url:'./addjjim',
    			data:{ member_id : login_user_id, movie_id : movie_id}
    		})
    		.done(function(data){
    			if(data==0){
    				alert('찜목록에 추가하였습니다.');
    				$('#like i').text('favorite');
    			}else{
    				alert('찜목록에서 삭제하였습니다.');
    				$('#like i').text('favorite_border');
    			}
    		})
    		.fail(function(xhr, status, err){
    			console.log(err);
    		})
    	})
    	
    	$("#search").keyup(function(e){if(e.keyCode == 13)
    		alert($(this).val()) 
    	});

    	$('.star a').click(function(){ 
			$(this).parent().children("a").removeClass("on");    
			$(this).addClass("on").prevAll("a").addClass("on");
		});
    	
		$('.write').click(function(){
			
			if(login_user_id == ""){
				alert('리뷰작성은 로그인 후에 가능합니다.')
				var result = confirm('로그인하러 갈까요?')
    			if(result == true){
    				location.href="/mrp/member/login"
    			}
				return;
			}
			
			var star = $('#op b').text()
			/* alert($('#op b').text()) */
			var text = $('.review').val();
			
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
						var html = '<tr><td><div class="star-ratings stars"><div class="star-ratings-fill" style="width: '+ item.rating*10 +'%">'
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
				var html = '<tr><td><div class="star-ratings stars"><div class="star-ratings-fill" style="width: '+ item.rating*10 +'%">'
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
    <script type="text/javascript">
    	
   	var playbox = $('<div></div>');
    playbox.css({
   		"position" : "absolute",
   		"top" : "20%",
   		"left" : "30%",
   		"display":"none"
	});
   	$('.theme-red').append(playbox)
   	
   	$('.theme-red').click(function(){
   		playbox.css({"display":"none"})
   	})
   	function playvideo(){
    	playbox.css({"display":"block"})
    	var innerbox = $('<div></div>');
   		playbox.append(innerbox)
    	var video = '<iframe tabindex="-1" class="video-stream html5-main-video" webkit-playsinline="" playsinline="" controlslist="nodownload" style="width: 1273px; height: 716px; left: 1px; top: 0px;" src="https://www.youtube.com/watch?v=V6aWnlhH6ug"></iframe>'
    	innerbox.append(video)
        
      }
   
    	
    </script>
    <script type="text/javascript">
    
    var starRating = function(){
    	var $star = $(".star-input"),
    	    $result = $star.find("output>b");
    		
    	  	$(document)
    		.on("focusin", ".star-input>.input", 
    			function(){
    	   		 $(this).addClass("focus");
    	 	})
    			 
    	   	.on("focusout", ".star-input>.input", function(){
    	    	var $this = $(this);
    	    	setTimeout(function(){
    	      		if($this.find(":focus").length === 0){
    	       			$this.removeClass("focus");
    	     	 	}
    	   		}, 100);
    	 	 })
    	  
    	    .on("change", ".star-input :radio", function(){
    	    	$result.text($(this).next().text());
    	  	})
    	    .on("mouseover", ".star-input label", function(){
    	    	$result.text($(this).text());
    	    })
    	    .on("mouseleave", ".star-input>.input", function(){
    	    	var $checked = $star.find(":checked");
    	    		if($checked.length === 0){
    	     	 		$result.text("0");
    	   		 	} else {
    	     	 		$result.text($checked.next().text());
    	    		}
    	  	});
    	};

    	starRating();
    
	</script>
</body>

</html>
