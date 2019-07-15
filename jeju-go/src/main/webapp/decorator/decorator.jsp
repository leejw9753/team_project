<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%-- /webapp/decorator/decorator.jsp --%>
<%@taglib prefix="decorator"
   uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<title>Jeju Go</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<noscript><link rel="stylesheet" href="assets/css/noscript.css"></noscript>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display: none}
</style>
</head>
<decorator:head />
<body class="is-preload">
   <div id="wrapper">
      <nav class="navbar navbar-expand-sm bg-light justify-content-center">
        <ul class="navbar-nav" >
          <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('signin').style.display='block'">회원가입</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('login').style.display='block'">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">고객센터</a>
          </li>
        </ul>
      </nav>
     <decorator:body/>
      <div id="signin" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent"></i>
               <h2 class="w3-wide">Sign In</h2>
               <p>회원가입에 필요한 정보를 입력하세요.</p>
               <p>
                  <input type="text" style="text-transform: lowercase;" placeholder="이름">
               </p>
               <p>
                  <input type="text" style="text-transform: lowercase;" placeholder="아이디(이메일)">
               </p>
               <p>
                  <input type="password" style="text-transform: lowercase;" placeholder="비밀번호">
               </p>
               <p>
                  <input type="password" style="text-transform: lowercase;" placeholder="비밀번호 확인">
               </p>
               <p>
                  <input type="text" placeholder="전화번호">
               </p>
               <button type="button"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom"
                  onclick="document.getElementById('subscribe').style.display='none'">회원가입</button>
            </div>
         </div>
      </div>
      <div id="login" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent"></i>
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
      <footer id="footer">
         <ul class="copyright">
            <li>&copy; 제주 고</li>
            <li>전화번호: <a href="http://html5up.net">02)1234-5678</a></li>
            <li>주소: 서울시 금천구 가산디지털2로 </li>
         </ul>
      </footer>
   </div>
   <!-- Scripts -->
   <script>
      if ('addEventListener' in window) {
         window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
         document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
      }
   </script>
</body>
</html>