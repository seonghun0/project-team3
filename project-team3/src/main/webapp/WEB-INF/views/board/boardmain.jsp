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
    
    <style type="text/css">
    	section.content{
    		margin: 100px 15px 0 15px;
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
    
    <jsp:include page="/WEB-INF/views/module/topbar.jsp"></jsp:include>

  	<section class="content">
                
               <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card" >
                        <div class="header">
                            <h2 style="display: inline-block;">
                                게시판
                            </h2>
                            <c:if test="${sessionScope.loginuser != null }">
                            <a href="/mrp/board/write"><button type="button" class="btn btn-success waves-effect" style="float: right">글쓰기</button></a>
                        	</c:if>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                	
	                                <div class="row">
	                                	<div class="col-sm-12">
	                                		<table class="table table-bordered table-striped table-hover js-basic-example dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
			                                    <thead>
			                                        <tr role="row">
			                                        	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 73.0094px;">글번호</th>
			                                        	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 343.009px;">제목</th>
			                                        	<th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 153.009px;">작성자</th>
			                                        	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 152.009px;">작성날짜</th>
			                                        	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 61.009px;">조회수</th>
			                                    </thead>
			                                    
			                                    <tbody>
			                                        
			                                        <c:forEach var = "board" items="${ boards }">
			                                        <tr>
			                                            <td>
			                                            	<a href="detail?boardNo=${ board.boardNo }">
                                            					${ board.boardNo }
                                            				</a>
			                                            </td>
			                                            <td>
			                                           	<c:choose>
			                                           		<c:when test="${ not board.deleted }">
			                                           		<a href="detail?boardNo=${ board.boardNo }">${ board.title }</a>
			                                           		</c:when>
			                                           		<c:otherwise>
			                                           		<span style="color:lightgray">${ board.title } [삭제된 글]</span>
			                                           		</c:otherwise>	
			                                           	</c:choose>
			                                            	
			                                            </td>
			                                            <td>${ board.member_id }</td>
			                                            <td><fmt:formatDate value="${ board.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			                                            <td>${ board.readCount }</td>
			                                        </tr>
			                                    </c:forEach>
			                                        
			                                    </tbody>
	                                    
	                                		</table>
	                                	</div>
	                                </div>
	                                
                               	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
            
                
    </section>            
      
      
    

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    
    
</body>
</html>