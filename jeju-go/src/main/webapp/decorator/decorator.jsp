<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%-- /webapp/decorator/decorator.jsp --%>
<%@taglib prefix="decorator"
   uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Jeju Go</title>
<link href="../Arsha/css/bootstrap.min.css" rel="stylesheet">
<link href="../Arsha/css/responsive-slider.css" rel="stylesheet">
<link rel="stylesheet" href="../Arsha/css/animate.css">
<link rel="stylesheet" href="../Arsha/css/font-awesome.min.css">
<link rel="stylesheet" href="../Arsha/css/magnific-popup.css">
<link href="../Arsha/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display: none}
</style>
</head>
<decorator:head />
<body>
<header>
    <div class="container">
      <div class="row">
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <div class="navbar-header">
              <div class="navbar-brand">
                <a href="../user/main.jeju"><h1>JeJu Go</h1></a>
              </div>
            </div>
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
              	<c:if test="${empty sessionScope.login}">
									<li role="presentation"><a href="javascript:void(0)"
										onclick="document.getElementById('login').style.display='block'"
										class="w3-bar-item w3-button">로그인</a></li>
								</c:if>
								<c:if test="${!empty sessionScope.login}">&nbsp;&nbsp;&nbsp;${sessionScope.login}회원님 반갑습니다.
				<a href="${path}/model2/member/main.me"
										class="w3-bar-item w3-button">My Page</a>
									<li role="presentation"><a href="${path}/model2/member/logout.me"
										class="w3-bar-item w3-button">로그아웃</a></li>
								</c:if>
				<li role="presentation"><a href="index.html">Hotel</a></li>
                <li role="presentation"><a href="blog.html">Packages</a></li>
                <li role="presentation" class="active"><a href="contacts.html">Contact</a></li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
</header>
  <decorator:body/>
  <div class="container">
    <div class="row">
      <hr>
    </div>
  </div>
  
<!-- footer 설정 -->
 <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <div class="widget">
            <h5 class="widgetheading">Get in touch with us</h5>
            <address>
						<strong>Jeju Go</strong><br>
						 서울시 금천구 가산디지털2로<br>
						</address>
            <p>
              <i class="icon-phone"></i> 02)1234-5678 <br>
              <i class="icon-envelope-alt"></i> jejugo@jejugaja.com
            </p>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="widget">
            <h5 class="widgetheading">Pages</h5>
            <ul class="link-list">
              <li><a href="#">Hotel</a></li>
              <li><a href="#">Packages</a></li>
              <li><a href="#">My Page</a></li>
              <li><a href="#">Customer Service</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="widget">
            <h5 class="widgetheading">Latest posts</h5>
            <ul class="link-list">
              <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
              <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
              <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="widget">
            <h5 class="widgetheading">Packages Photostream</h5>
            <div class="flickr_badge">
              <script type="text/javascript" src="https://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
            </div>
            <div class="clear">
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <hr>
      </div>
    </div>
	
    <div id="sub-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="copyright">
              <p>
                <span>&copy; Arsha, All right reserved.</span>
              </p>
              <div class="credits">
                <!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Arsha
                -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <ul class="social-network">
              <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
              <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
              <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
              <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
              <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="js/responsive-slider.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/functions.js"></script>
  <script src="contactform/contactform.js"></script>
  <script>
    wow = new WOW({}).init();
  </script>
  <div id="login" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('login').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent"></i>
               <h2 class="w3-wide">LogIn</h2>
               <p>로그인 정보를 입력하세요.</p>
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="text"
                     placeholder="아이디(이메일)">
               </p>
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="password"
                     placeholder="비밀번호">
               </p>
               <p>
               <a class="w3-button w3-padding-large w3-green w3-margin-bottom" href="javascript:void(0)" onclick="document.getElementById('searchid').style.display='block'">아이디/비밀번호 찾기</a>
               </p>
               <button type="button"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom"
                  onclick="document.getElementById('subscribe').style.display='none'">로그인</button>
            </div>
         </div>
      </div>
</body>
</html>