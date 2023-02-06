<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String username = (String)session.getAttribute("username"); %>
<div class="page-loader">
  <div class="loader">Loading...</div>
</div>
<nav class="navbar navbar-custom navbar-fixed-top navbar-transparent" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#custom-collapse">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Fun <img src="assets/images/cooking.png" style="display:inline;"/> Bakery</a>
		</div>
		<div class="collapse navbar-collapse" id="custom-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">레시피</a>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=케이크" data-toggle="dropdown">케이크</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryCon?seq=1">생크림케이크</a></li>
								<li><a href="BakeryCon?seq=2">치즈케이크</a></li>
								<li><a href="BakeryCon?seq=3">초코케이크</a></li>
								<li><a href="BakeryCon?seq=4">카스테라</a></li>
								<li><a href="BakeryCon?seq=5">티라미수</a></li>
								<li><a href="BakeryCon?seq=6">당근케이크</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=구움과자" data-toggle="dropdown">구움과자</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryCon?seq=7">레몬 마들렌</a></li>
								<li><a href="BakeryCon?seq=8">플레인 스콘</a></li>
								<li><a href="BakeryCon?seq=9">크림치즈 스콘</a></li>
								<li><a href="BakeryCon?seq=10">오레오브라우니</a></li>
								<li><a href="BakeryCon?seq=11">황치즈머핀</a></li>
								<li><a href="BakeryCon?seq=12">대파치즈스콘</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=빵" data-toggle="dropdown">빵</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryCon?seq=13">소금빵</a></li>
								<li><a href="BakeryCon?seq=14">모닝빵</a></li>
								<li><a href="BakeryCon?seq=15">모카빵</a></li>
								<li><a href="BakeryCon?seq=16">포카치아</a></li>
								<li><a href="BakeryCon?seq=17">호밀빵</a></li>
								<li><a href="BakeryCon?seq=18">꽈배기 도너츠</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle" href="CategoryCon?cat=쿠키" data-toggle="dropdown">쿠키</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryCon?seq=19">버터 쿠키</a></li>
								<li><a href="BakeryCon?seq=20">초코칩 쿠키</a></li>
								<li><a href="BakeryCon?seq=21">코코아 쿠키</a></li>
								<li><a href="BakeryCon?seq=22">치즈 쿠키</a></li>
								<li><a href="BakeryCon?seq=23">얼그레이 쿠키</a></li>
								<li><a href="BakeryCon?seq=24">녹차 쿠키</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"  href="CategoryCon?cat=노오븐" data-toggle="dropdown">노오븐</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryOneCon?seq=25">초코 브라우니</a></li>
								<li><a href="BakeryOneCon?seq=26">카스테라</a></li>
								<li><a href="BakeryOneCon?seq=27">고구마 케이크</a></li>
								<li><a href="BakeryOneCon?seq=28">타르트</a></li>
								<li><a href="BakeryOneCon?seq=29">검은깨 쿠키</a></li>
								<li><a href="BakeryOneCon?seq=30">고구마 빵</a></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"  href="CategoryCon?cat=냉동생지" data-toggle="dropdown">냉동생지</a>
							<ul class="dropdown-menu">
								<li><a href="BakeryOneCon?seq=31">유령 머핀</a></li>
								<li><a href="BakeryOneCon?seq=32">치즈빵-오징어 먹물</a></li>
								<li><a href="BakeryOneCon?seq=33">부추빵</a></li>
								<li><a href="BakeryOneCon?seq=34">크로플</a></li>
								<li><a href="BakeryOneCon?seq=35">데니쉬식빵</a></li>
								<li><a href="BakeryOneCon?seq=36">브레즈앤롤</a></li>
							</ul></li>
					</ul>
				</li>
				<li><a href="tip.jsp">유의사항</a></li>
				<li><a href="BoardListCon">게시판</a></li>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"  href="#">재료 및 도구</a>
					<ul class="dropdown-menu">
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">판매처</a>
						<ul class="dropdown-menu">
							<li><a href="http://www.bncmarket.com/" target="_blank">b&c market</a></li>
							<li><a href="http://www.bakingfarm.co.kr/" target="_blank">baking farm</a></li>
						</ul></li>
					<li><a href="info.jsp">정보</a></li>
				</ul></li>
					<% if(username!=null){ %>
						<li><a href="LogoutCon">로그아웃</a></li>
						<% if(username.equals("admin")){ %>
							<li><a href="ManageCon">회원관리</a></li>
						<%} %>
					<%}else{ %>
						<li><a href="login_register.jsp">로그인</a></li>
					<%} %>
			</ul>
		</div>
	</div>
</nav>