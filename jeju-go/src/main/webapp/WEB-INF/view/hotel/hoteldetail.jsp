<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>숙소 상세 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>
<script>
// Slideshow
var slideIndex = 1;
$(document).ready(function(){
	showDivs(slideIndex);
});
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function currentDiv(n) {
  showDivs(slideIndex = n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
</head>
<body>
  <div class="w3-content">
    <c:set value="${hotel}" var="h"/>
    <div class="w3-panel">
      <h1><b>${h.hname}</b></h1>
    </div>
  
    <c:forEach items="${h.photo}" var="photo">
      <div class="w3-display-container mySlides">
       <img src="${path }/${photo.photourl}" style="width:100%;height:100%;max-height:500px;">
        <div class="w3-display-topleft w3-container w3-padding-32">
          <span class="w3-white w3-padding-large w3-animate-bottom">${photo.photoname}</span>
        </div>
      </div>
    </c:forEach>
    
    <div class="w3-container w3-dark-grey w3-padding w3-xlarge">
      <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div>
      <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>
    
      <div class="w3-center">
        <c:forEach items="${h.photo }" var="photo" varStatus="i">
          <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(${i.index+1})"></span>
        </c:forEach>
      </div>
    </div>
    
    <h1><b>${h.location}</b></h1>
    <h1><b>${h.content}</b></h1>
    <h1><b>${h.tel}</b></h1>
    
	<br>
	<hr>
	<br>

	<c:forEach items="${room}" var="r">
      <div class="w3-row w3-margin">
        <div class="w3-third">
          <img src="${path}/${r.photourl}" style="width:100%;height:100%;max-height:200px;max-weight:300px;">
        </div>
        <div class="w3-twothird w3-container">
          <h2><a href="roomdetail.jeju?hno=${r.hno}&name=${r.name}">${r.name}</a></h2>
            <p>
              ${r.price}
              ${r.convenient}
              ${r.bed} / ${r.bedcount}개
            </p>
        </div>
      </div>
    </c:forEach>    
    <input type="button" onclick="location.href='roomregist.jeju?no=${h.no}'" value="방등록하기">
  </div>
</body>
</html>