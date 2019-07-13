<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>숙소 등록 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
  <div class="w3-content">
    <form:form modelAttribute="room" action="register2.jeju" enctype="multipart/form-data">
      <input type="hidden" value="${no}" name="hno">
              사진등록&nbsp;&nbsp;<input type="file" multiple="multiple" name="photoname">
      <br><br>
              방 종류&nbsp;&nbsp;<input type="radio" name="name" value="더블룸">더블룸
      &nbsp;<input type="radio" name="name" value="디럭스">디럭스
      &nbsp;<input type="radio" name="name" value="트윈룸">트윈룸
      &nbsp;<input type="radio" name="name" value="스위트">스위트
      <br><br>
             호수&nbsp;<input type="text" name="roomnum">
      <br><br>
             가격&nbsp;<input type="text" name="price">
      <br><br>
             제한 인원 수&nbsp;
        <select name="max">
          <c:forEach begin="1" end="10" var="i">
            <option value="${i}">${i}명</option>
          </c:forEach>
        </select>
      <br><br>
             침대 종류 / 개수&nbsp;
        <select name="bed">
          <option value="싱글">싱글</option>
          <option value="트윈">트윈</option>
          <option value="더블">더블</option>
        </select>&nbsp;
      <select name="bedcount">
        <c:forEach begin="1" end="10" var="i">
          <option value="${i}">${i}개</option>
        </c:forEach>
      </select>
      <br><br>
             방 종류&nbsp;&nbsp;<input type="checkbox" name="convenient" value="엘레베이터">엘레베이터
      <input type="checkbox" name="convenient" value="wi-fi">wi-fi
      <input type="checkbox" name="convenient" value="주방시설">주방시설
      <input type="checkbox" name="convenient" value="주차장">주차장
      <input type="checkbox" name="convenient" value="세탁기">세탁기
      <input type="checkbox" name="convenient" value="비품류">비품류
      <input type="checkbox" name="convenient" value="TV">TV
      <input type="checkbox" name="convenient" value="에어컨">에어컨
      <input type="checkbox" name="convenient" value="냉장고">냉장고
      <input type="checkbox" name="convenient" value="스파">스파
      <br><br>
      <input type="submit" value="등록">
    </form:form>
  </div>
</body>
</html>