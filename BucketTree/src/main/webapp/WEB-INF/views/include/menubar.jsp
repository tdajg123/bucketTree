<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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
                     <li><a href="/BucketTree/mypage"><i class="fa fa-fw fa-gear"></i> 정보관리</a></li>
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
            <input name="q" class="form-control" type="text"> <span
               class="input-group-btn">
               <button type="submit" name="search" id="search-btn"
                  class="btn btn-flat">
                  <i class="fa fa-search"></i>
               </button>
            </span>
         </div>
      </div>
      <!-- /.box-header -->
      <div class="box-list">
         <!-- Open Chat : href="#" id="addClass" -->
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4 style="width: 70px; margin: 10px 0 0 50px">백승호</h4>

         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>김기훈</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>임유리</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>이가희</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>송주영</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4 style="width: 70px; margin: 10px 0 0 50px">백승호</h4>

         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>김기훈</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>임유리</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>이가희</h4>
         </div>
         
         <div class="box-body addClass"; href="#">
            <img src="/BucketTree/images/user1-128x128.jpg" class="user-image"
               alt="User Image">
            <h4>송주영</h4>
         </div>
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