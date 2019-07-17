<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<!--
   Identity by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
<title>Jeju Go!</title>
<script>
 
	function passchk(f) {
		if (f.password.value != f.checkpassword.value) {
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
		return true;
	}

	function loginchk(f) {
		if (f.userid.value == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (f.password.value == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		return true;
	}
</script>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${path}/assets/css/main.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display: none}
body {
		height: 100%;
		background-color: #ffffff;
		background-image: url("../assets/css/images/overlay.png"), -moz-linear-gradient(60deg, rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35)), url("../images/jeju.jpg");
		background-image: url("../assets/css/images/overlay.png"), -webkit-linear-gradient(60deg, rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35)), url("../images/jeju.jpg");
		background-image: url("../assets/css/images/overlay.png"), -ms-linear-gradient(60deg, rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35)), url("../images/jeju.jpg");
		background-image: url("../assets/css/images/overlay.png"), linear-gradient(60deg, rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35)), url("../images/jeju.jpg");
		background-repeat: repeat,			no-repeat,			no-repeat;
		background-size: 100px 100px, cover,				cover;
		background-position: top left,		center center,		bottom center;
		background-attachment: fixed,			fixed,				fixed;
	}
</style>
<script type="text/javascript">
function search_check(num) {
   if (num == '1') {
      document.getElementById("searchP").style.display = "none";
      document.getElementById("searchI").style.display = "";   
   } else {
      document.getElementById("searchI").style.display = "none";
      document.getElementById("searchP").style.display = "";
   }
   
}
</script>
</head>
   <body class="is-preload">
   <header>
    <div class="container"  style="background-color: rgba(255,255,255,0.01);">
      <div class="row">
        <nav class="navbar navbar-default" role="navigation" style="background-color: rgba(255,255,255,0.001);">
          <div class="container-fluid">
            <div class="navbar-header">
              <div class="navbar-brand">
                <a href="../user/main.jeju"><h1 style="font-family: 'Nanum Brush Script', cursive; font-size: 100px; color:blue;" >JeJu Go</h1></a>
              </div>
            </div>
            <%-- <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
               <c:if test="${empty sessionScope.login}">
									<li role="presentation"><a href="javascript:void(0)" onclick="document.getElementById('login').style.display='block'"
										class="w3-bar-item w3-button">로그인</a></li>
								</c:if>
								<c:if test="${!empty sessionScope.login}"><b style="color:black;">&nbsp;&nbsp;&nbsp;${sessionScope.login.username}회원님 반갑습니다.</b>
									<a href="${path}/user/mypage.jeju"
										class="w3-bar-item w3-button" style="color:black;">My Page</a>
									<a href="${path}/user/logout.jeju" class="w3-bar-item w3-button" style="color:black;">로그아웃</a>
								</c:if>
				<li role="presentation"><a href="${path }/hotel/hotellist.jeju">Hotel</a></li>
                <li role="presentation"><a href="#">Packages</a></li>
                <li role="presentation"><a href="#">Contact</a></li>
              </ul>
            </div> --%>
          </div>
        </nav>
      </div>
    </div>
</header>
      <!-- Wrapper -->
         <div id="wrapper">
        <nav class="navbar navbar-expand-sm bg-light justify-content-right">
        <ul class="navbar-nav" >
        <c:if test="${empty sessionScope.login}">
          <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('signin').style.display='block'" style="font-family: 'Sunflower', sans-serif; font-size: 20px; font-weight: bold;">회원가입</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('login').style.display='block'" style="font-family: 'Sunflower', sans-serif; font-size: 20px; font-weight: bold;">로그인</a>
          </li>
        </c:if>
        <li class="nav-item">
            <a class="nav-link" href="${path}/hotel/hotellist.jeju" style="font-family: 'Sunflower', sans-serif; font-size: 20px; font-weight: bold;">호텔소개</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" style="font-family: 'Sunflower', sans-serif; font-size: 20px; font-weight: bold;">고객센터</a>
          </li>
          
          <c:if test="${sessionScope.login.userid == 'admin'}">
          <li class="nav-item">
          <a class="nav-link" href="${path}/hotel/regist.jeju"style="font-family: 'Sunflower', sans-serif; font-size: 20px; font-weight: bold;">숙소등록</a>
          </li>
        </c:if>
        </ul>
      </nav>
            <!-- Main -->
               <section id="main"">
                  <header>
                     <h1 style="font-family: 'Sunflower', sans-serif;">숙박 날짜 검색</h1><br>
                  </header>
                  <hr />
                  <form method="post" action="#">
                     <div class="fields">
                        <div class="field">
                           <input type="date" name="name" id="name" placeholder="Name" />
                        </div>
                        <div class="field">
                           <input type="date" name="email" id="email" placeholder="Email" />
                        </div>
                     </div>
                     <ul class="actions special">
                        <li><a href="#" class="button">숙소 검색</a></li>
                     </ul>
                  </form>
                  <hr/>
               </section>
                <div id="signin" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('signin').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
               <h2 class="w3-wide">Sign In</h2>
               <p>회원가입에 필요한 정보를 입력하세요.</p>
               <form:form modelattribute="user" name="f" action="userEntry.jeju" method="post" onsubmit="return passchk(this)">
               <p>
                  <input type="text" name="username"style="text-transform: lowercase;" placeholder="이름">
               </p>
               <p>
                  <input type="text" name="userid" style="text-transform: lowercase;" placeholder="아이디(이메일)">
               </p>
               <p>
                  <input type="password" name="password" style="text-transform: lowercase;" placeholder="비밀번호">
               </p>
               <p>
                  <input type="password" name="checkpassword" style="text-transform: lowercase;" placeholder="비밀번호 확인">
               </p>
               <p>
                  <input type="text" name="phone" placeholder="전화번호">
               </p>
               <button type="submit"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom">회원가입</button>
              </form:form>
            </div>
         </div>
      </div>
      <div id="login" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('login').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
               <h2 class="w3-wide">LogIn</h2>
               <p>로그인 정보를 입력하세요.</p>
               <form:form modelattribute="user" action="login.jeju" name="lf" onsubmit="return loginchk(this)">
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="text" name="userid"
                     placeholder="아이디(이메일)">
               </p>
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="password" name="password"
                     placeholder="비밀번호">
               </p>
               <p>
               <a class="w3-button w3-padding-large w3-green w3-margin-bottom" href="javascript:void(0)" onclick="document.getElementById('searchid').style.display='block'">아이디/비밀번호 찾기</a>
               </p>
               <button type="submit"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom">로그인</button>
               </form:form>
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

<!-- 아이디/비밀번호 찾기 부분 -->
	<form:form modelAttribute="user" method="post" action="userSearch.jeju">
		<div id=searchid class="w3-modal" style="display: none;">
			<div class="w3-modal-content w3-animate-zoom w3-padding-large">
				<div class="w3-container w3-white w3-center">
					<i
						onclick="document.getElementById('searchid').style.display='none'"
						class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
					<h2 class="w3-wide">아이디/비밀번호 찾기</h2>
					<p>인증된 이메일만 정보 찾기가 가능합니다 .</p>
					<div style="margin-bottom: 10px;"
						class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="search_1"
							name="search_total" onclick="search_check(1)" checked="checked">
						<label class="custom-control-label font-weight-bold text-white"
							for="search_1"></label><p>아이디 찾기</p>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="search_2"
							name="search_total" onclick="search_check(2)"> <label
							class="custom-control-label font-weight-bold text-white"
							for="search_2"></label><p>비밀번호 찾기</p>
					</div>
					<div id="searchI">
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputName_1"></label><p>이름</p>
							<div>
								<input type="text" class="form-control" id="username"
									name="username" placeholder="ex) 송문준">
							</div>
						</div>
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputPhone_1"></label><p>휴대폰번호</p>
							<div>
								<input type="text" class="form-control" id="Phone" name="Phone"
									placeholder="ex) 01077779999">
							</div>
						</div>
						<div class="form-group"></div>
					</div>
					<div id="searchP" style="display: none;">
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputId" ></label><p>아이디(이메일)</p>
							<div>
								<input type="text" class="form-control" id="userid" style="text-transform: lowercase;"
									name="userid" placeholder="ex)goodee@aaa.bbb">
							</div>
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button"
							class="btn btn-primary btn-block">확인</button>
						<a class="btn btn-danger btn-block"
							href="${pageContext.request.contextPath}">취소</a>
					</div>
				</div>
			</div>
		</div>
	</form:form>
   </body>
</html>