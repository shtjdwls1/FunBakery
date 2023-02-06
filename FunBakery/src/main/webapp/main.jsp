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
    <link rel="apple-touch-icon" sizes="57x57" href="assets/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="assets/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="assets/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="assets/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="assets/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="assets/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="assets/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="assets/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="assets/lib/animate.css/animate.css" rel="stylesheet">
    <link href="assets/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="assets/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="assets/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="assets/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="assets/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="assets/css/colors/default.css" rel="stylesheet">
  </head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <!-- 헤더부분 -->
	  <%@ include file="header.jsp" %>
      <!-- 메인섹션 -->
      <section class="home-section home-parallax home-fade home-full-height bg-dark-30" id="home" data-background="assets/images/croissants-and-bread-frame-with-copy-space.jpg">
        <div class="titan-caption">
          <div class="caption-content">
          	<% if(username!=null){ %>
            	<div class="font-alt mb-30 titan-title-size-1"><h1 style="display:inline;"><%=username%></h1>의</div>
            <%}else{ %>
            	
            <%} %>
            <div class="font-title mb-40 titan-title-size-5">Fun Bakery</div><a class="section-scroll btn btn-border-w btn-round" href="#works">더보기</a>
          </div>
        </div>
      </section>
      <div class="main">
      <!-- 카테고리 섹션 -->
        <section class="module" id="works">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title" id="main-category-font"><b>RECIPE</b></h2>
                <div class="module-subtitle font-serif"></div>
              </div>
            </div>
          </div>
          <div class="container">
          <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="works-grid">
            <li class="work-item illustration webdesign"><a href="CategoryCon?cat=케이크">
                <div class="work-image"><img src="assets/images/category/케이크.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption">
                  <h1 class="main-category-font">케이크</h1>
                </div></a></li>
            <li class="work-item marketing photography"><a href="CategoryCon?cat=구움과자">
                <div class="work-image"><img src="assets/images/category/구움과자.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h1 class="main-category-font">구움과자</h1>
                </div></a></li>
            <li class="work-item illustration photography"><a href="CategoryCon?cat=빵">
                <div class="work-image"><img src="assets/images/category/빵.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h1 class="main-category-font">빵</h1>
                </div></a></li>
            <li class="work-item marketing photography"><a href="CategoryCon?cat=쿠키">
                <div class="work-image"><img src="assets/images/category/쿠키.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h1 class="main-category-font">쿠키</h1>
                </div></a></li>
            <li class="work-item illustration webdesign"><a href="CategoryCon?cat=노오븐">
                <div class="work-image"><img src="assets/images/category/노오븐.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h1 class="main-category-font">노오븐</h1>
                </div></a></li>
            <li class="work-item marketing webdesign"><a href="CategoryCon?cat=냉동생지">
                <div class="work-image"><img src="assets/images/category/냉동생지.jpg" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h1 class="main-category-font">냉동생지</h1>
                </div></a></li>
          </ul>
          </div>
        </section>
          </div>
      </div>
		<%@ include file="footer.jsp" %>
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
    <script src="assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
