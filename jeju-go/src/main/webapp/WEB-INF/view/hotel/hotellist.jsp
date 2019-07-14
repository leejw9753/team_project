<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
	<c:set var="path" value="${pageContext.request.contextPath}" />
	
<!DOCTYPE html>
<html>	
<head>
<meta charset="EUC-KR">
<title>호텔 리스트 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
  <div class="w3-content">
    <c:forEach items="${list}" var="hotel">
      <div class="w3-row w3-margin">
        <div class="w3-third">
          <img src="${path}/${hotel.photourl}" style="width:100%;height:100%;max-height:200px;max-weight:300px;">
        </div>
        <div class="w3-twothird w3-container">
          <h2><a href="hoteldetail.jeju?no=${hotel.no}">${hotel.hname}</a></h2>
            <p>
              ${hotel.location}
              ${hotel.content }
              ${hotel.tel }
            </p>
        </div>
      </div>
    </c:forEach>
  </div>
</body>
</html>