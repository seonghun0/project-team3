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
    
    <jsp:include page="/WEB-INF/views/module/topbar.jsp"></jsp:include>

  	<section style="padding-top: 100px; width: 1500px; margin-left: auto; margin-right: auto">
                
                
                
               <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2 style="display: inline-block;">
                                BASIC EXAMPLE
                            </h2>
                            	<button id ="write-button" class="btn btn-success waves-effect" style="float: right">글쓰기</button>
                            	<button id ="tolist-button" class="btn btn-success waves-effect" style="float: right; margin-right: 10px">목록보기</button>
                        </div>
                        <div class="body">
                            <form id="board-write-form" action="write" method="post">
                             	<div class="form-group">
                             		<label>제목</label>
                             		<input type="text" class="form-control" name="title" id="title" style="border: 1px solid lightgray; border-radius:10px">
                             	</div>
                             	<div class="form-group">
                             		<label>작성자</label>
                             		<input type="text" class="form-control" name="member_id" style="border: 1px solid lightgray; border-radius:10px">
                             	</div>
                             	<div class="form-group">
                             		<label>내용</label>
                             		<textarea class="form-control" name="content" rows="23" id="contentarea" style="border: 1px solid lightgray; border-radius:10px"></textarea>
                             	</div>
                             	
                             	
                             </form>	
                        </div>
                    </div>
                </div>
            </div>
                
                
                
    </section>            
      

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    <script type="text/javascript">
	$(function() { // jQuery의 main 함수 역할 ( 시작점 )
		
		$('#write-button').on('click', function(event) {
			event.preventDefault();		// 이벤트를 발생시킨 객체의 기본 동작 ( 다른페이지로 이동 등 ) 의 수행을 차단
			event.stopPropagation();	// 상위 객체로 이벤트 전달 차단
			
			// 입력 데이터의 유효성 검사 등 처리
			
			var title = $('#title').val();
			alert(title)
			var content = $('#contentarea').val();
			// 입력 데이터의 유효성 검사 등 처리
			if(title == ""){
				alert("제목을 입력하세요");
				return;
			}
			if(content== null || content == ""){
				alert("내용을 입력하세요");
				return;
			}
			
			$("#board-write-form").submit(); // form을 서버로 전송
			
		});
	
	
		$('#tolist-button').on('click', function(event) {
			event.preventDefault();		// 이벤트를 발생시킨 객체의 기본 동작 ( 다른페이지로 이동 등 ) 의 수행을 차단
			event.stopPropagation();	// 상위 객체로 이벤트 전달 차단
			
			location.href = "boardmain";
			
		});
		
	});
	</script>
</body>
</html>