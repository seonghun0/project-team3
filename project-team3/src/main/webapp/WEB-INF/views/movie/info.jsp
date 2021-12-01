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
                                <p>
                                    Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                    Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                    pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                    sadipscing mel.
                                </p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <b>Profile Content</b>
                                <p>
                                    Lorem ipsum dolor sit amet, ut duo atqui exerci dicunt, ius impedit mediocritatem an. Pri ut tation electram moderatius.
                                    Per te suavitate democritum. Duis nemore probatus ne quo, ad liber essent aliquid
                                    pro. Et eos nusquam accumsan, vide mentitum fabellas ne est, eu munere gubergren
                                    sadipscing mel.
                                </p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="review">
                            <b>REVIEW</b>
                            	<div class="row clearfix">
                            		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                                	<textarea rows="3" cols="130" name="review" class="review"></textarea>
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
		
		$('.write').click(function(){
			
			var text = $('.review').val();
			var movie_id = $('#movieid').val();
			
			$.ajax({
				type:'post',
				url:'./review',
				data: { review : text, movie_id : movie_id }
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
						var html = '<tr><td class="reviewtext">'+item.review+'</td><td>'+item.member_id+'</td><td>'+item.regdate+'</td>';
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
				var html = '<tr><td class="reviewtext">'+item.review+'</td><td>'+item.member_id+'</td><td>'+item.regdate+'</td>';
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
