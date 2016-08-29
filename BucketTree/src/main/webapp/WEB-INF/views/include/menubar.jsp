<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav id="header" class="navbar navbar-fixed-top">

	<!-- /.container -->

	<div id="header-container" class="container navbar-container">


		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a id="brand" class="navbar-brand" href="#"> <img id="logo"
				src="/BucketTree/images/BUCKET_LOGO.png"
				onmouseover="this.src='/BucketTree/images/BUCKET_LOGO_HOVER.png'"
				onmouseout="this.src='/BucketTree/images/BUCKET_LOGO.png'"
				style="border: 0 solid">
			</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li id="dl-menu-1" class="dl-menuwrapper"><a href="#"
					class="dl-trigger">버킷리스트</a>
					<ul class="dl-menu">
						<li><a href="#">마이버킷리스트</a></li>
						<li><a href="#">전체버킷리스트</a></li>
					</ul></li>
				<li id="dl-menu-2" class="dl-menuwrapper"><a href="#"
					class="dl-trigger">버킷트리</a>
					<ul class="dl-menu">
						<li><a href="#">마이버킷트리</a></li>
						<li><a href="#">전체버킷트리</a></li>
					</ul></li>
				<li id="dl-menu-3" class="dl-menuwrapper"><a href="#"
					class="dl-trigger">버킷쉐어</a>
					<ul class="dl-menu">
						<li><a href="#">마이버킷쉐어</a></li>
						<li><a href="/BucketTree/bucketshare/listAll">전체버킷쉐어</a></li>
					</ul></li>
			</ul>


			<div class="navbar-custom-menu">
				<!-- NAVBAR 오른쪽  -->

				<ul class="nav navbar-left">
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="/BucketTree/images/user1-128x128.jpg" class="user-image"
							alt="User Image"> USER <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"><i class="fa fa-fw fa-user"></i> 타임라인</a></li>
							<li><a href="#"><i class="fa fa-fw fa-group"></i> 친구</a></li>
							<li><a href="/BucketTree/mypage"><i
									class="fa fa-fw fa-gear"></i> 정보관리</a></li>
							<li class="divider"></li>
							<li><a href="#"><i class="fa fa-fw fa-power-off"></i>
									로그아웃</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-left">
					<li><a href="#"> 1500 <i class="fa fa-tree"></i></a></li>

				</ul>
				<ul class="nav navbar-left">
					<li id="showRight"><a><i class="fa fa-comments-o"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.nav-collapse -->
</nav>

<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right"
	id="cbp-spmenu-s2">
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">NOTICE</h3>
		</div>
		<!-- /.box-header -->
		<div class="box-body">공지사항입니다.</div>
		<!-- /.box-body -->
	</div>
	<div class="box box-solid box-default">
		<div class="box-header">
			<div class="input-group">
				<input name="q" class="form-control friend_search search" type="text"> <span
					class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</div>
		<!-- /.box-header -->
		<div class="box-list MessengerFriendList">
			<!--새로운 메세지를 보낸 친구 목록-->
			<c:forEach var="friend" items="${flist1}">
				<div class="box-body addClass newMessenegeFriend">
					<img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
						alt="User Image">
					<h4>${friend.name}
						<span class="badge bg-green">NEW</span>
					</h4>
				</div>
			</c:forEach>
			
			<!--메신저에서 쓸 친구 목록(새로운메세지 보낸 친구 제외)  --> 
			<c:forEach var="friend" items="${flist2}">
				<div class="box-body addClass MessenegerFriend">
					<img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
						alt="User Image">
					<h4>${friend.name}</h4>
				</div>
			</c:forEach>
		</div>
	
	</div>

</div>


<!-- JS -->
<!-- MENU -->
<script type="text/javascript" src="/BucketTree/js/menu/menu.js"></script>
<script type="text/javascript"
	src="/BucketTree/js/menu/jquery.dlmenu.js"></script>
<script>
	$(function() {
		$('#dl-menu-1').dlmenu();
	});
	$(function() {
		$('#dl-menu-2').dlmenu();
	});
	$(function() {
		$('#dl-menu-3').dlmenu();
	});
</script>
<script src="/BucketTree/js/sidebar/sidebar.js"></script>
<script>
	var menuRight = document.getElementById('cbp-spmenu-s2'), showRight = document
			.getElementById('showRight'), body = document.body;

	showRight.onclick = function() {
		classie.toggle(this, 'active');
		classie.toggle(menuRight, 'cbp-spmenu-open');
		disableOther('showRight');
	};

	function disableOther(button) {

		if (button !== 'showRight') {
			classie.toggle(showRight, 'disabled');
		}

	}
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<!--메신저 친구검색  -->
<script>
$(function() {
	//검색창에 키를 누른후 이벤트발생
	$('.friend_search').keyup(function( event ) {
	//친구 목록삭제
	$('.MessenegerFriend').detach();
	//srchType=0
	var srchType=0;
	//srchText 값가져오기	
	var srchText=$('.search').val();
	//srchText빈문자열이면 srchType=0;
	if(srchText == 0)
	{
		srchType=0;
	}
	//그이외에는 srchType=1;
	else
	{
	    srchType=1;
	}
	//객체에 담기
	var allData = {srchType: srchType,srchText: srchText };
	//ajax구현	  
		$.ajax({
	           url : "/BucketTree/Friend/MessengerFriendList",    
	           dataType : "json",
	           type : "POST",   
	           data : allData ,
	           success : function(data) {
	        	  
	        	     $.each(data, function(entryIndex, entry) {
	        	    	$('.MessengerFriendList').append("<div class='box-body addClass MessenegerFriend'>");
	        	    	$('.MessengerFriendList').append("</div>");
	        	    	$('.MessenegerFriend:last').append("<img src='/BucketTree/images/user1-128x128.jpg' class='user-image' alt='User Image'>");
	        			$('.MessenegerFriend:last').append("<h4>"+entry.name+"</h4>");
	                });
	           }
	       });
		
	});
	


	
	

});
</script>