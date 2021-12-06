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
            	<ul class="nav navbar-nav" style="margin-top:4px">
            		 <li>
                        <a href="/mrp">
                            <span>홈</span>
                        </a>
                    </li>
                    <li>
                        <a href="/mrp/movie/list">
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
                    <c:if test="${ sessionScope.loginuser.usertype eq 'admin' }">
	                    <li>
	                        <a href="/mrp/movie/admin">
	                            <span>관리페이지</span>
	                        </a>
	                    </li>
                    </c:if>
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
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">
                        	<span>${ sessionScope.loginuser.memberId } 님</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">${ sessionScope.loginuser.memberId } 님</li>
                            <li class="body">
                                <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: 200px; height: 100px;"><ul class="menu" style="overflow: hidden; width: auto; height: 254px;">
                                    <li>
                                        <a href="/mrp/movie/profile" class=" waves-effect waves-block">
                                            <div class="icon-circle bg-light-green">
                                                <i class="material-icons">contacts</i>
                                            </div>
                                            <div class="menu-info">
                                                <h4>마이페이지</h4>
                                                <p>
                                                	show yours
                                                </p>
                                            </div>
                                        </a>
                                        <a href="/mrp/member/logout" class=" waves-effect waves-block">
                                            <div class="icon-circle bg-purple">
                                                <i class="material-icons">person_outline</i>
                                            </div>
                                            <div class="menu-info">
                                                <h4>로그아웃</h4>
                                                <p>
                                                	goodbye!
                                                </p>
                                            </div>
                                        </a>
                                    </li>
                                </div>
                            </li>
                            <li class="footer">
                                <a href="javascript:void(0);" class=" waves-effect waves-block">Our Movie.com</a>
                            </li>
                        </ul>
                    </li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING..." id="search">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->