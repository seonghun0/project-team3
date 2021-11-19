<%@ page contentType="text/html; charset=UTF-8"
   		 pageEncoding="UTF-8"%>
   		 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
	
	<!-- Top Bar -->
    <nav class="navbar" style="background-color: #000">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/mrp"><img src="/mrp/resources/images/logo_01.gif"></a>
            </div>
            <div class="menu">
            	<ul class="nav navbar-nav" style="margin-top:15px">
            		 <li>
                        <a href="/mrp">
                            <span>홈</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/movieinfo/info">
                            <span>탐색하기</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/ranking/rankmain">
                            <span>랭킹보기</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/board/boardmain">
                            <span>게시판</span>
                        </a>
                    </li>
            	</ul>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                    <!-- #END# Call Search -->
                   <c:choose>
                   <c:when test="${ empty loginuser }">
                    <li>
                        <a href="/mrp/member/login">
                            <span>로그인</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/member/join">
                            <span>회원가입</span>
                        </a>
                    </li>
                    </c:when>
                    <c:otherwise>
                    <li>
                        <a href="/mrp/member/profile">
                            <span>${ sessionScope.loginuser.memberId } 님</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/member/join">
                            <span>빈칸 </span>
                        </a>
                    </li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->