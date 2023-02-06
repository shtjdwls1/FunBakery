<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  
    Document Title
    =============================================
    -->
<title>Fun Bakery</title>
<!--  
    Favicons
    =============================================
    -->
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/images/favicons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="assets/images/favicons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/images/favicons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/images/favicons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/images/favicons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/images/favicons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/images/favicons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/images/favicons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/images/favicons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="assets/images/favicons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/images/favicons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/images/favicons/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="assets/images/favicons/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!--  
    Stylesheets
    =============================================
    
-->
<!-- Default stylesheets-->
<link href="assets/lib/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Template specific stylesheets-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Volkhov:400i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link href="assets/lib/animate.css/animate.css" rel="stylesheet">
<link href="assets/lib/components-font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="assets/lib/et-line-font/et-line-font.css" rel="stylesheet">
<link href="assets/lib/flexslider/flexslider.css" rel="stylesheet">
<link href="assets/lib/owl.carousel/dist/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css"
	rel="stylesheet">
<link href="assets/lib/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet">
<link href="assets/lib/simple-text-rotator/simpletextrotator.css"
	rel="stylesheet">
<!-- Main stylesheet and color file-->
<link href="assets/css/style.css" rel="stylesheet">
<link id="color-scheme" href="assets/css/colors/default.css"
	rel="stylesheet">
</head>
<style>
	.post-thumbnail img{
		width: 800px;
		height: 300px;
	}
</style>
<body data-spy="scroll" data-target=".onpage-navigation"
	data-offset="60">
	<main>
		<!-- 헤더부분 -->
		<%@ include file="header.jsp"%>
		<div class="main">
			<section class="module bg-dark-60 blog-page-header"
				data-background="assets/images/background/tip.jpg">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<h2 class="module-title font-alt">INFORMATION</h2>
							
						</div>
					</div>
				</div>
			</section>
			<section class="module">
				<div class="container">
					<div class="row post-masonry post-columns" style="height:100%">
						<!-- 사이드바 -->
						<div class="col-sm-4 col-md-3 sidebar"
							style="border-right: 1px solid #c2c2c2">
							<div class="widget">
								<h5 class="widget-title font-alt">Categories</h5>
								<ul class="icon-list">
									<li><a href="#none" id="all">전체 - 16</a></li>
									<li><a href="#none" id="ingredients">재료 - 6</a></li>
									<li><a href="#none" id="implements">도구 - 10</a></li>
								</ul>
							</div>
						</div>
						<!-- 사이드바 -->
						<div class="col-sm-8" id="info-img">
							<div id="ingre">
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/밀가루.png"
												alt="Blog-post Thumbnail" style="border-radius: 20px;" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">강력분</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>글루텐 함량 13% 이상으로 주로 피자 도우, 제빵에 이용된다.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/밀가루.png"
												alt="Blog-post Thumbnail" style="border-radius: 20px;"/>
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">박력분</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>글루텐 함량 10% 이하. 케이크나 제과, 또는 튀김 및 부침개에 주로 이용된다.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/버터.jpg"
												alt="Blog-post Thumbnail"/>
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">버터</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>음식에 넣으면 부드럽고 고소한 풍미가 올라오고 약간 식었을 때의 바삭해지는 식감 때문에 사용된다.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/이스트.jpg"
												alt="Blog-post Thumbnail"/>
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">이스트</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>당분이나 영양분을 가한 습기가 있는 밀가루에 섞으면 알코올발효를 일으키는 빵효모</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/베이킹파우더.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">베이킹파우더</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>주로 과자를 만들때 가열과 수분에 의해 생성되는 탄산이나 암모니아 가스로 반죽을 부풀게 하는 화학적 팽창제.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 ingredients">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/우유.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">우유</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>수분을 강하게 머금어 빵을 더 촉촉하고 부드러워지게 하며 습도를 적당히 유지시킨다.</p>
										</div>
									</div>
								</div>
							</div>
							<div id="tool">
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/오븐.png"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">오븐</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>조리재료를 밀폐한 후 가열하여 건열로 음식을 익히게 설계된 조리기구</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/전자저울.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">전자저울</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>물체의 무게을 측정하는 기계로 레시피의 정량을 정확히 맞추기 위해 사용됨</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/고운 체.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">고운 체</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>밀가루, 설탕, 베이킹파우더 등을 곱게 만들기 위해 사용하는 도구</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/주걱.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">주걱</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>음식을 저어 섞거나 표면에서 남김없이 쓸어 담을 수 있는 도구</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/휘핑기.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">휘핑기</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>우유와 반죽에 공기를 불어넣어 부피를 더하고 재료를 섞는 도구</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/빵틀.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">빵 틀</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>냄비와 같은 역할을 하여 반죽을 담을 수 있게 하는 도구로 오븐에 담아 빵을 구울 수 있게 함</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/밀대.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">밀대</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>굴리는 원통형 나무 도구로 페이스트리를 밀어서 펼 때 사용한다.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/믹싱볼.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">믹싱볼</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>음식을 혼합하거나 준비하는 데 사용하는 다양한 크기의 둥근 용기.</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/계량스푼.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt">
											<h2 class="post-title">
												<a href="#">계량스푼</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>약물이나 조미료 따위의 정확한 분량 사용을 목적으로 만들어진 숟가락 모양의 기구</p>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6 col-lg-6 implements">
									<div class="post">
										<div class="post-thumbnail">
											<img src="assets/images/info/식힘망.jpg"
												alt="Blog-post Thumbnail" />
										</div>
										<div class="post-header font-alt implements">
											<h2 class="post-title">
												<a href="#">식힘용 받이</a>
											</h2>
										</div>
										<div class="post-entry">
											<p>원형 또는 직사각형의 양철이나 스텐 망으로 바닥에서 약간 뜨게 되어 있어 오븐에서 꺼내 틀을 제거한 뒤 바로 이 망 위에 올리면 식으면서 열기와 수분이 증발해 축축하게 물러지는 것을 방지할 수 있다.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 페이지이동 -->
				</div>
			</section>
			<%@ include file="footer.jsp"%>
		</div>
	</main>
	<!--  
    JavaScripts
    =============================================
    -->
	<script src="assets/lib/jquery/dist/jquery.js"></script>
	<script src="assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="assets/lib/wow/dist/wow.js"></script>
	<script src="assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
	<script src="assets/lib/isotope/dist/isotope.pkgd.js"></script>
	<script src="assets/lib/imagesloaded/imagesloaded.pkgd.js"></script>
	<script src="assets/lib/flexslider/jquery.flexslider.js"></script>
	<script src="assets/lib/owl.carousel/dist/owl.carousel.min.js"></script>
	<script src="assets/lib/smoothscroll.js"></script>
	<script src="assets/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
	<script
		src="assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
	function doDisplay(String id){
		var ingre_con = document.getElementById("ingre");
		var tool_con = document.getElementById("tool");
		
		if(id.equals("ingre")){
			ingre_con.style.display = "none";
			tool_con.style.display = "block";
		}else if(id.equals("tool")){
			ingre_con.style.display = "block";
			tool_con.style.display = "none";
		}
	}
	</script>
</body>
</html>
