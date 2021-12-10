<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title> Our Movie | kdigital-busan.team3</title>
    
    <jsp:include page="/WEB-INF/views/module/css.jsp"></jsp:include>
    <style type="text/css">
    	section.content{
    		margin: 100px 15px 0 15px;
    	}
    	.info{
    		border:0;
    	}
    	#deletebtn{
    		float: right;
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
               <div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
	               <ul class="nav nav-tabs tab-col-black" role="tablist">
	                   <li role="presentation" class="">
	                       <a href="#profile" data-toggle="tab" aria-expanded="false">가입정보</a>
	                   </li>
	                   <li role="presentation" class="">
	                       <a href="#changepwd" data-toggle="tab" aria-expanded="false">비밀번호 변경</a>
	                   </li>
	               </ul>
	               <div class="tab-content">
	                   <div role="tabpanel" class="tab-pane fade in active" id="profile">
	                   <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12">
	                   </div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
		                    <div class="card">
		                        <div class="header">
		                            <h2>
		                                가입 정보
		                            </h2>
		                        </div>
		                        <div class="body table-responsive">
		                            <table class="table table-condensed">
		                                <tbody>
		                                    <tr>
		                                        <th scope="row">아이디</th>
		                                        <td> <input type="text" value="${ sessionScope.loginuser.memberId }" class="info"></td>
		                                    </tr>
		                                    <tr>
		                                    <c:choose>
		                                    	<c:when test="${ sessionScope.loginuser.gender eq 'male' }">
			                                    	<th scope="row">성별</th>
			                                        <td><input type="text" value="남" class="info"></td>
		                                    	</c:when>
		                                    	<c:otherwise>
			                                        <th scope="row">성별</th>
			                                        <td><input type="text" value="여" class="info"></td>
			                                    </c:otherwise>
			                                </c:choose>
		                                    </tr>
		                                    <tr>
		                                        <th scope="row">생일</th>
		                                        <td><fmt:formatDate value="${ sessionScope.loginuser.birth_date }" pattern="yyyy-MM-dd" /></td>
		                                    </tr>
		                                    <c:forEach var="i" items="${ usergenre }">
		                                    <tr>
		                                        <th scope="row">좋아하는 장르</th>
		                                        <td>${ i.genrename }</td>
		                                    </tr>
		                                    </c:forEach>
		                                </tbody>
		                            </table>
		                        </div>
		                    </div>
		                </div>
		                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
		                    <div class="card">
		                    	<div class="header">
		                            <h2>
		                                내 찜목록
		                            </h2>
		                        </div>
		                        <div class="body table-responsive">
		                        	<table class="table table-condensed">
		                        		<c:forEach var="jjim" items="${ jjimlist }">
		                        		<tr>
		                        			<td>
		                        				<a href="/mrp/movie/info?movie_id=${ jjim.movie_id }">${ jjim.title }</a>
		                        				<button id='deletebtn' name="deletebtn" class="btn btn-primary btn-sm" data-sname='${ jjim.movie_id }'>삭제</button>
		                        			</td>
		                        		</tr>
		                        		</c:forEach>
		                        	</table>
		                        </div>
		                    </div>
		                </div>
	                   </div>
	                   <div role="tabpanel" class="tab-pane fade" id="changepwd">
	                   	<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
		               	</div>
		               	<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
		                	<div class="card">
		                		<div class="header">
		                            <h2>
		                                비밀번호 변경
		                            </h2>
		                        </div>
		                        <div class="body table-responsive">
		                        	<table class="table table-condensed">
		                        		<tr>
		                        			<td>현재 	비밀번호</td>
		                        			<td><input type="password" id="pwd"></td>
		                        		</tr>
		                        		<tr>
		                        			<td>새로운 비밀번호</td>
		                        			<td><input type="password" id="np"></td>
		                        		</tr>
		                        		<tr>
		                        			<td>새로운 비밀번호 확인</td>
		                        			<td><input type="password" id="npc"></td>
		                        		</tr>
		                        		<tr>
		                        			<td colspan="2" style="text-align: center;"><input type="button" value="변경하기" id="pwdbtn"></td>
		                        		</tr>
		                        	</table>
		                        </div>
		                    </div>
		               	</div>
	                   </div>
	               </div>
	           </div>
            </div>
            <!-- #END# Widgets -->

            </div>
        </div>
    </section>

    <jsp:include page="/WEB-INF/views/module/js.jsp"></jsp:include>
    <script type="text/javascript">
	
    	$('input.info').attr('readonly', true);
    	
    	$("button[name='deletebtn']").click(function(e){
			e.preventDefault();
			var movieid = $(this).attr("data-sname");
			var msg = "삭제하시겠습니까?";
			var memberId = '${ sessionScope.loginuser.memberId }';
			var yes = confirm(msg);
			if (yes) {
				/* $('#delete-form').submit(); */
				$.ajax({
					type:'post',
					url:'./delete',
					data:{ movie_id : movieid, member_id : memberId}
				})
				.done(function(data){
					alert("삭제되었습니다.")
					setTimeout(
			                  function() 
			                  {
			                     location.reload();
			                  }, 0001);   
				})
				.fail(function(data,textStatus,error){
					console.log("code:"+data.status+"\n"+"message:"+data.responseText+"\n"+"error:"+error);
					console.log('error');
				})

			}
			
		});
    	
    	$('#npc').blur(function(){
    		var pwd = $('#pwd').val();
    		var newpwd = $('#np').val();
    		var newpwdconfrim = $('#npc').val();
    		
    		if (newpwd == newpwdconfrim){
    		}else{
    			alert('새로운 비밀번호가 다릅니다.')
    			$('#npc').val("");
    			return;
    		}
    	})
    	$('#npt').keyup(function(e){
    		if (e.keyCode == 13){
    			updatepwd();
    		} 
    	})
    	
    	
    	$('#pwdbtn').click(function(e){
    		e.preventDefault();
    		updatepwd();
    	})
    	function updatepwd(){
    		var pwd = $('#pwd').val();
    		var newpwd = $('#np').val();
    		var newpwdconfrim = $('#npc').val();
    		
    		if (newpwd == newpwdconfrim){
    		}else{
    			alert('새로운 비밀번호가 다릅니다.')
    			$('#newpwdconfrim').val("");
    			return;
    		}
    		
    		if(newpwdconfrim == ""){
    			alert('비밀번호를 확인해주세요')
    			return;
    		}
    		var yes = confirm("비밀번호를 변경하시겠습니까?");
    		if  (yes){
    			$.ajax({
        			type:'post',
        			url:'./pwdchange',
        			data:{ pwd : pwd , newpwd : newpwd}
        		})
        		.done(function(data){
        			if(data==1){
        				alert('변경되었습니다.')
        				location.href='/mrp/movie/profile'
        			}else{
        				alert('현재 비빌번호가 틀렸습니다.');
        				$('#pwd').val("");
        			}
        		})
        		.fail(function(data, status, err){
        			console.log(err);
        		})
    		}else{
    			return;
    		}
    	}
    	
    </script>
</body>

</html>
