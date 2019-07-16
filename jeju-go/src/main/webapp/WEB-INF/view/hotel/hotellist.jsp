<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
	<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>	
<head>
<meta charset="EUC-KR">
<title>호텔 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/responsive-slider.css" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
div.ex3 {
  background-color: white;
  width: 100%;
  height: 500px;
  overflow: auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="recent">
				<button class="btn-primarys">
					<h3>Hotel List</h3>
				</button>
				<hr>
			</div>
		</div>
	</div>

<div class="container">
		<div class="col-md-4">
			<form class="form-search">
				<input class="form-control" type="text" placeholder="Search..">
			</form>
			<div class="panel panel-default">
				<div class="panel-heading">
					<strong>Popular Posts</strong>
				</div>
				<div class="ex3">
				<c:forEach items="${list}" var="hotel">
				<hr style="width: 100%; border: solid 1px black;">
				<div class="panel-body">
					<div class="media">
						<a class="media-left"><img src="${path}/${hotel.photourl}" style="width: 100px; height: 100px;" alt=""></a>
						<div class="media-body">
							<h4 class="media-heading"><a href="hoteldetail.jeju?no=${hotel.no}">${hotel.hname}</a></h4>
							<p>${hotel.content}</p>
							<div class="ficon">
								<p><a href="hoteldetail.jeju?no=${hotel.no}" alt="">보러가기</a> <i
									class="fa fa-long-arrow-right"></i></p>
							
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>