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
<style type="text/css">
div.ex3 {
  background-color: lightblue;
  width: 500px;
  height: 1000px;
  overflow: auto;
}
</style>
</head>
<body>
 <div class="container">
    <div class="row">
      <div class="recent">
        <button class="btn-primarys"><h3>Hotel List</h3></button>
        <hr>
      </div>
    </div>
  </div>

<div class="container">
    <div class="row">
      <div class="content">
        <div class="col-md-4">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="align-center" style="width: 200px; height: 100px;">
              <h4>Fully responsive</h4>
              <div class="icon">
                <i class="fa fa-desktop fa-3x"></i>
              </div>
              <p>
                Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.
              </p>
              <div class="ficon">
                <a href="" alt="">Learn more</a> <i class="fa fa-long-arrow-right"></i>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
 </div> 




  <%-- <div class="container" >
    <div class="row">
      <div class="content">
      <div class="ex3">
        <div class="col-md-3" >
          <div class="wow fadeInUp" data-wow-delay="0.2s">
         
            <div class="align-center" style="width: 450px; height: 300px;" >
             <c:forEach items="${list}" var="hotel">
              <h4><a href="hoteldetail.jeju?no=${hotel.no}">${hotel.hname}</a></h4>
              <!-- <img src="img/team/3.jpg" alt="" class="img-responsive"> -->
              <img src="${path}/${hotel.photourl}" style="width:100px;height:100px;max-height:100px;max-weight:100px;" class="img-responsive" alt="">
              <p>
                ${hotel.content}
                ${hotel.tel}
              </p>
              <div class="ficon">
                <a href="hoteldetail.jeju?no=${hotel.no}">상세보기</a><i class="fa fa-long-arrow-right"></i>
              </div>
              </c:forEach>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </div>
</div>   --%>
  <div class="container">
    <div class="row">
      <hr>
    </div>
  </div>
</body>
</html>