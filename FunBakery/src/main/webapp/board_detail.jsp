<%@page import="com.VO.CommentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.BoardDAO"%>
<%@page import="com.VO.BoardVO"%>
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
  <% String email = (String)session.getAttribute("email"); %>
    <main>
      <!-- 헤더부분 -->
	  <%@ include file="header.jsp" %>
      <div class="main">
        <section class="module-small">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 col-sm-offset-2">
                <div class="post">
                  <div class="post-header font-alt">
                    <h1 class="post-title">${vo.article_title }</h1>
                    <div class="comment-author font-alt">By ${vo.mb_name } | ${vo.article_date }</div>
                  </div>
                  <div class="post-entry">
                   	<p>${vo.article_content }</p>
                  </div>
                </div>
                <div class="comments">
                  <h4 class="comment-title font-alt">댓글</h4>
                  <c:forEach items="${clist }" var="clist">
	                  <div class="comment clearfix">
	                    <div class="comment-content clearfix">
	                      <div class="row" style="padding: 0 12px 0 16px;">
	                        <div class="comment-author font-alt" style="font-weight: bold; float:left">${clist.name }</div>
	                        <div class="comment-meta font-alt" style="float:right">${clist.date }</div>
	                      </div>
	                      <div class="comment-body">
	                        <p>${clist.content }</p>
	                      </div>
	                      <hr>
	                    </div>
	                  </div>
                  </c:forEach>
                </div>
                <%if(email != null){ %>
                <div class="comment-form">
                <%}else{ %>
                <div class="comment-form" style="display:none">
                <%} %>
                  <form method="post" action="CommentCon">
                    <div class="form-group">
                      <textarea class="form-control" id="comment" name="comment" rows="4" placeholder="Comment"></textarea>
                      <input type="hidden" name="id" value=<%=email %>>
                      <input type="hidden" name="aseq" value=${vo.article_seq }>
                    </div>
                    <button class="btn btn-round btn-g" type="submit" style="float: right">댓글쓰기</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
	          <div class="col-sm-8 col-sm-offset-2">
	           	<hr>
	           	  <c:set var="id" value="${vo.id }"></c:set>
	           	  <% String id = (String)pageContext.getAttribute("id"); %>
	           
	           	  <%if(email != null){ %>
		           	  <% if(email.equals(id)){ %>
		           	  <a class="btn btn-danger btn-round" href="BoardEditCon?seq=${vo.article_seq }">수정하기</a>
		           	  <%}else{ %>
		           	  <a class="btn btn-danger btn-round" style="display:none">수정하기</a>
		           	  <%} %>
	              <a class="btn btn-round btn-g" href="board_write.jsp">글쓰기</a>
	              <%}else{ %>
	              <a class="btn btn-round btn-g" style="display:none">글쓰기</a>
	              <%} %>
	              <a href="BoardListCon" class="btn btn-default btn-round">목록</a>
	          </div>
          </div>
          </div>
        </section>
      </div>
		<%@ include file="footer.jsp" %>
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
