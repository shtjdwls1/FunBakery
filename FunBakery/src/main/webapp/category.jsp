<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <div class="main">
        <section class="module bg-dark-60 shop-page-header" data-background="assets/images/background/recipe.png">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">RECIPE</h2>
                <!-- <div class="module-subtitle font-serif">먹고 싶은게 있었으면 좋겠네?</div> -->
              </div>
            </div>
          </div>
        </section>
        <section class="module-small">
          <div class="container">
            <div class="row multi-columns-row">
 <!-- 사이드바 -->
              <div class="col-sm-4 col-md-3 sidebar" style="height:1400px;">
              	<div style="border-right: 1px solid #c2c2c2; position:sticky;top:17.5%">
                <div class="widget">
                  <h5 class="widget-title font-alt">Recipe</h5>
                  <ul class="icon-list">
                 	<li><a href="CategoryCon?cat=케이크">케이크</a></li>
					<li><a href="CategoryCon?cat=구움과자">구움과자</a></li>
					<li><a href="CategoryCon?cat=빵">빵</a></li>
					<li><a href="CategoryCon?cat=쿠키">쿠키</a></li>
					<li><a href="CategoryCon?cat=노오븐">노오븐</a></li>
					<li><a href="CategoryCon?cat=냉동생지">냉동생지</a></li>
                  </ul>
                </div>
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <c:forEach items="${plist }" var="list">
                    <li class="clearfix">
                      <c:choose>
                      <c:when test="${list.b_category eq '노오븐' || list.b_category eq '냉동생지'}">
                      <div class="widget-posts-image"><a href="BakeryOneCon?seq=${list.b_seq }"><img src="${list.b_img }" alt="Post Thumbnail"/></a></div>
                      </c:when>
                      <c:otherwise>
                      <div class="widget-posts-image"><a href="BakeryCon?seq=${list.b_seq }"><img src="${list.b_img }" alt="Post Thumbnail"/></a></div>
                      </c:otherwise>
                      </c:choose>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">${list.b_name }</a></div>
                        <div class="widget-posts-meta">${list.b_category }</div>
                      </div>
                    </li>
                    </c:forEach>
                  </ul>
                </div>
                </div>
              </div>
<!-- 사이드바 -->
				<div class="col-sm-8">
					<c:forEach items="${brlist }" var="list">
					<div class="col-sm-6 col-md-6 col-lg-6">
		                <div class="shop-item">
		                  <c:choose>
		                  <c:when test="${list.b_category eq '노오븐' || list.b_category eq '냉동생지'}">
		                  <div class="shop-item-image"><a href="BakeryOneCon?seq=${list.b_seq }"><img style="width:600px; height:400px;" src="${list.b_img }"/></a>
		                  </div>
		                  <h4 class="shop-item-title font-alt" id="category-title1"><a href="BakeryOneCon?seq=${list.b_seq }">${list.b_name }</a></h4>
		                  </c:when>
		                  <c:otherwise>
		                  <div class="shop-item-image"><a href="BakeryCon?seq=${list.b_seq }"><img style="width:600px; height:400px;" src="${list.b_img }"/></a>
		                  </div>
		                  <h4 class="shop-item-title font-alt" id="category-title2"><a href="BakeryCon?seq=${list.b_seq }">${list.b_name }</a></h4>
		                  </c:otherwise>
		                  </c:choose>
		                </div>
	                </div>
					</c:forEach>
              	</div>		  	     
            </div>
            </div>
        </section>
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
