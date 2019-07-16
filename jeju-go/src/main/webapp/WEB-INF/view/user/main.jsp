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
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${path}/assets/css/main.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
      <!-- Wrapper -->
         <div id="wrapper">
         <nav class="navbar navbar-expand-sm bg-light justify-content-right">
        <ul class="navbar-nav" >
          <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('signin').style.display='block'">ȸ������</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="javascript:void(0)" onclick="document.getElementById('login').style.display='block'">�α���</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">������</a>
          </li>
        </ul>
      </nav>
            <!-- Main -->
               <section id="main">
                  <header>
                     <h1>���� ��¥ �˻�</h1>
                     <input type="text" style="text-transform: lowercase;" placeholder="�̸�">
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
                        <li><a href="#" class="button">���� �˻�</a></li>
                     </ul>
                  </form>
                  <hr/>
               </section>
                <div id="signin" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('signin').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
               <h2 class="w3-wide">Sign In</h2>
               <p>ȸ�����Կ� �ʿ��� ������ �Է��ϼ���.</p>
               <p>
                  <input type="text" style="text-transform: lowercase;" placeholder="�̸�">
               </p>
               <p>
                  <input type="text" style="text-transform: lowercase;" placeholder="���̵�(�̸���)">
               </p>
               <p>
                  <input type="password" style="text-transform: lowercase;" placeholder="��й�ȣ">
               </p>
               <p>
                  <input type="password" style="text-transform: lowercase;" placeholder="��й�ȣ Ȯ��">
               </p>
               <p>
                  <input type="text" placeholder="��ȭ��ȣ">
               </p>
               <button type="button"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom"
                  onclick="document.getElementById('subscribe').style.display='none'">ȸ������</button>
            </div>
         </div>
      </div>
      <div id="login" class="w3-modal" style="display: none;">
         <div class="w3-modal-content w3-animate-zoom w3-padding-large">
            <div class="w3-container w3-white w3-center">
               <i onclick="document.getElementById('login').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
               <h2 class="w3-wide">LogIn</h2>
               <p>�α��� ������ �Է��ϼ���.</p>
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="text"
                     placeholder="���̵�(�̸���)">
               </p>
               <p>
                  <input class="w3-input w3-border" style="text-transform: lowercase;" type="password"
                     placeholder="��й�ȣ">
               </p>
               <p>
               <a class="w3-button w3-padding-large w3-green w3-margin-bottom" href="javascript:void(0)" onclick="document.getElementById('searchid').style.display='block'">���̵�/��й�ȣ ã��</a>
               </p>
               <button type="button"
                  class="w3-button w3-padding-large w3-green w3-margin-bottom"
                  onclick="document.getElementById('subscribe').style.display='none'">�α���</button>
            </div>
         </div>
      </div>
      <footer id="footer">
         <ul class="copyright">
            <li>&copy; ���� ��</li>
            <li>��ȭ��ȣ: <a href="http://html5up.net">02)1234-5678</a></li>
            <li>�ּ�: ����� ��õ�� ���������2�� </li>
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

<!-- ���̵�/��й�ȣ ã�� �κ� -->
	<form:form modelAttribute="user" method="post" action="userSearch.jeju">
		<div id=searchid class="w3-modal" style="display: none;">
			<div class="w3-modal-content w3-animate-zoom w3-padding-large">
				<div class="w3-container w3-white w3-center">
					<i
						onclick="document.getElementById('searchid').style.display='none'"
						class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent">x</i>
					<h2 class="w3-wide">���̵�/��й�ȣ ã��</h2>
					<p>������ �̸��ϸ� ���� ã�Ⱑ �����մϴ� .</p>
					<div style="margin-bottom: 10px;"
						class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="search_1"
							name="search_total" onclick="search_check(1)" checked="checked">
						<label class="custom-control-label font-weight-bold text-white"
							for="search_1"></label><p>���̵� ã��</p>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" class="custom-control-input" id="search_2"
							name="search_total" onclick="search_check(2)"> <label
							class="custom-control-label font-weight-bold text-white"
							for="search_2"></label><p>��й�ȣ ã��</p>
					</div>
					<div id="searchI">
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputName_1"></label><p>�̸�</p>
							<div>
								<input type="text" class="form-control" id="username"
									name="username" placeholder="ex) �۹���">
							</div>
						</div>
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputPhone_1"></label><p>�޴�����ȣ</p>
							<div>
								<input type="text" class="form-control" id="Phone" name="Phone"
									placeholder="ex) 01077779999">
							</div>
						</div>
						<div class="form-group"></div>
					</div>
					<div id="searchP" style="display: none;">
						<div class="form-group">
							<label class="font-weight-bold text-white" for="inputId" ></label><p>���̵�(�̸���)</p>
							<div>
								<input type="text" class="form-control" id="userid" style="text-transform: lowercase;"
									name="userid" placeholder="ex)goodee@aaa.bbb">
							</div>
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button"
							class="btn btn-primary btn-block">Ȯ��</button>
						<a class="btn btn-danger btn-block"
							href="${pageContext.request.contextPath}">���</a>
					</div>
				</div>
			</div>
		</div>
	</form:form>
   </body>
</html>