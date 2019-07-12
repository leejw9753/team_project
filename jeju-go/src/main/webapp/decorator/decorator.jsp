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
<title>Identity by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<noscript><link rel="stylesheet" href="assets/css/noscript.css"></noscript>
</head>
<decorator:head />
<body class="is-preload">
  
	<div id="wrapper">
	<nav class="navbar navbar-expand-sm bg-light justify-content-center">
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="#">Link 1</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Link 2</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Link 3</a>
	    </li>
	  </ul>
	</nav>
	<!-- 
		Main
		<section id="main">
			<header>
				<span class="avatar"><img src="../images/avatar.jpg" alt="" /></span>
				<h1>Jane Doe</h1>
				<p>Senior Psychonautics Engineer</p>
			</header>
			<hr/>
			<h2>Extra Stuff!</h2>
			<form method="post" action="#">
				<div class="fields">
					<div class="field">
						<input type="text" name="name" id="name" placeholder="Name" />
					</div>
					<div class="field">
						<input type="email" name="email" id="email" placeholder="Email" />
					</div>
					<div class="field">
						<select name="department" id="department">
							<option value="">Department</option>
							<option value="sales">Sales</option>
							<option value="tech">Tech Support</option>
							<option value="null">/dev/null</option>
						</select>
					</div>
					<div class="field">
						<textarea name="message" id="message" placeholder="Message" rows="4"></textarea>
					</div>
					<div class="field">
						<input type="checkbox" id="human" name="human" /><label for="human">I'm a human</label>
					</div>
					<div class="field">
						<label>But are you a robot?</label>
						<input type="radio" id="robot_yes" name="robot" /><label for="robot_yes">Yes</label>
						<input type="radio" id="robot_no" name="robot" /><label for="robot_no">No</label>
					</div>
				</div>
				<ul class="actions special">
					<li><a href="#" class="button">Get Started</a></li>
				</ul>
			</form>
			<hr/>
				<footer>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter">Twitter</a></li>
						<li><a href="#" class="icon brands fa-instagram">Instagram</a></li>
						<li><a href="#" class="icon brands fa-facebook-f">Facebook</a></li>
					</ul>
				</footer>
			</section>
		Footer
		<footer id="footer">
			<ul class="copyright">
				<li>&copy; Jane Doe</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>
		 -->
	</div>
	<!-- Scripts -->
	<script>
		if ('addEventListener' in window) {
			window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
			document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
		}
	</script>
</body>
<decorator:body/>
</html>