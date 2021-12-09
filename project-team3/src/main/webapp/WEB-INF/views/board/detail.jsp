<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>board</title>
    
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
</head>

<body>
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

  	<section style="padding-top: 100px; width: 1500px; margin-left: auto; margin-right: auto">
                
                
                
               <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header" >
                            <h2 style="display: inline-block; font-weight:bold; font-size:30px">
                                글 상세 보기
                            </h2>
                          
                            	<!-- <button id ="write-button" class="btn btn-success waves-effect" style="float: right">글쓰기</button> -->
                            <c:if test="${ sessionScope.loginuser.memberId == board.member_id }">
								<button id="delete-button" type="button" class="btn btn-success waves-effect" style="float: right; margin-right: 10px">삭제</button>
								<button id="edit-button" type="button" class="btn btn-success waves-effect" style="float: right; margin-right: 10px">수정</button>
							</c:if>
                            	<button id ="tolist-button" class="btn btn-success waves-effect" style="float: right; margin-right: 10px">목록보기</button>
                        </div>
                        <div class="body">
                           
                             	<div class="form-group">
                             		<label style="font-size:15px; font-weight:bold">제목</label>
                             		<input type="text" class="form-control" name="title" id="title" value="${ board.title }">
                             	</div>
                             	<hr>
                             	<div class="form-group">
									<label style="font-size:15px; font-weight:bold">작성자</label> 
									<input class="form-control" id='memberId'	name='memberId' value="${ board.member_id }">
								</div>
								<hr>
                             	<div class="form-group">
                             		<label style="font-size:15px; font-weight:bold">내용</label>
                             		<textarea class="form-control" name="content" id="contentarea">${ board.content }</textarea>
                             	</div>
                             	<hr>
                             	<div class="form-group">
									<label style="font-size:15px; font-weight:bold">조회수</label> 
									<input class="form-control" id='readCount' value="${ board.readCount }">
								</div>
								<hr>
								<div class="form-group">
								<label style="font-size:15px; font-weight:bold">첨부파일</label>
								<c:forEach var="attachment" items="${ board.attachments }"> 
								<br>
								<a id='attachment' href="download?attachNo=${ attachment.attachNo }">${ attachment.userFileName }</a>
								</c:forEach>
							</div>
							
						
						
                          
                        </div>
                    </div>
                </div>
            </div>
            
    </section>            
    
    <section style="width: 1500px; margin-left: auto; margin-right: auto">
    
    <div class="row_comment">
    
    <div>
    	<h3>댓글</h3>
    </div>
    <div>
    	<textarea rows="4" class="form-control no-resize" placeholder="Please type what you want..."></textarea>
    	<button type="button" class="btn btn-block btn-lg btn-default waves-effect">입력하기</button>
    </div>
    
    <div>
    	<table>
    		
    	</table>
    </div>
    
    </div><!-- row_comment -->
    
    </section>
      

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    <script type="text/javascript">
    $(function() {
    	$(".form-group input, .form-group textarea").attr('readonly', true);
    	
    	$('#edit-button').on('click', function(event) {
    		location.href = "edit?boardNo=${ board.boardNo }";
    	});
    	
		$('#delete-button').on('click', function(event) {
			var yes = confirm('${ board.boardNo }번 게시글을 삭제하겠습니까?');
			if (yes) {
    			location.href = "delete?boardNo=${ board.boardNo }";
			}
    	});
		
		$('#tolist-button').on('click', function(event) {
    		location.href = "boardmain";
    	});		
		
    });
	</script>
</body>
</html>