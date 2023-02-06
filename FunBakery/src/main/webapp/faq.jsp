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
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<%@ include file="header.jsp" %>
      </nav>
      <div class="main">
        <section class="module">
          <div class="container">
			  <div class="container">
	            <div class="row">
	              <div class="col-sm-6 col-sm-offset-3">
	                <h1 class="module-title font-title2">베이킹 시 유의 사항</h1>
	              </div>
	            </div>
	          </div>
	          <hr class="divider-w pt-20">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <div role="tabpanel">
                  <div class="tab-content">
                    <div class="tab-pane active" id="support">
                      <div class="panel-group" id="accordion">
                        
                        <div class="panel panel-default">
                          <div class="panel-heading">
                            <h4 class="panel-title font-title3"><a data-toggle="collapse" data-parent="#accordion" href="#support1">오븐에서 구운 빵을 꺼낼 땐 반드시 화상 조심!</a></h4>
                          </div>
                          <div class="panel-collapse collapse in" id="support1">
                            <div class="panel-body">오븐뿐 아니라 베이킹 틀과 빵은 고온에서 오래 달궈진 이후 나오는 것이기 때문에 매우 뜨겁습니다. 오븐을 사용한 사람뿐만 아니라 주변 가족들, 반려동물들이 화상에 입지 않도록 주의해주세요!
                            </div>
                          </div>
                        </div>
                        
                        <div class="panel panel-default">
                          <div class="panel-heading">
                            <h4 class="panel-title font-alt"><a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#support2">오븐에 넣으면 화재가 발생할 수 있어요!</a></h4>
                          </div>
                          <div class="panel-collapse collapse" id="support2">
                            <div class="panel-body">오븐 안에 유산지를 넣을 경우 화재 사고가 일어날 수 있습니다. 화재 사고가 일어나지 않기 위해서는 오븐에 넣기 전, 불이 날 만한 요소가 없는지 철저하게 확인해보는 것이 매우 중요합니다.
                            </div>
                          </div>
                        </div>
                        
                        <div class="panel panel-default">
                          <div class="panel-heading">
                            <h4 class="panel-title font-alt"><a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#support3">베이킹 재료 관리에 유의해주세요!</a></h4>
                          </div>
                          <div class="panel-collapse collapse" id="support3">
                            <div class="panel-body">특히 재료를 대량으로 구매했을 경우 관리가 중요합니다. 베이킹에 들어가는 재료에는 유제품이 많기 때문에 재료 관리를 제대로 하지 못하거나 제조 과정에서 위생을 신경 쓰지 않으면 재료가 금방 상하거나 탈이 날 수 있습니다.
                            </div>
                          </div>
                        </div>
                        
                        <div class="panel panel-default">
                          <div class="panel-heading">
                            <h4 class="panel-title font-alt"><a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#support4">밀가루도 관리가 중요해요!</a></h4>
                          </div>
                          <div class="panel-collapse collapse" id="support4">
                            <div class="panel-body">밀가루는 제대로 익히지 않고 먹으면 식중독을 유발할 수 있는 음식 중 하나입니다. 밀가루는 입자가 고운 가루의 형태이기 때문에 퍼지기가 매우 쉽습니다. 익혀서 먹지 않는 음식들이 밀가루에 닿지 않도록 하고, 밀가루가 묻는 도마나 칼, 접시 등은 철저히 세척하는 것이 중요합니다.
                            </div>
                          </div>
                        </div>
                        
                      </div>
                    </div>
                    
                  </div>
                </div>
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