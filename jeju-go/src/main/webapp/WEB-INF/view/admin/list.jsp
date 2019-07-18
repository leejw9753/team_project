<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
<title>회원 목록</title>
<script type="text/javascript">
   function allchkbox(allchk) {
      var chks = document.getElementsByName("idchks");
      for (var i = 0; i < chks.length; i++) {
         chks[i].checked = allchk.checked;
      }
   }
   function graph_open(url) {
      var op = "width=800,height=600,scrollbars=yes,left=50,top=150";
      window.open(url + ".shop", "graph", op);
   }
</script>
</head>
<body>
   <div class="container">
      <div class="row">
         <div class="recent">
            <button class="btn-primarys">
               <h3>회원 목록</h3>
            </button>
            <table>
                  <tr>
                     <th>아이디</th>
                     <th>이름</th>
                     <th>전화</th>
                     <th>&nbsp;</th>
                     <th><input type="checkbox" name="allchk"
                        onchange="allchkbox(this)"></th>
                  </tr>
                  <c:forEach items="${list}" var="user">
                     <tr>
                        <td>${user.userid}</td>
                        <td>${user.username}</td>
                        <td>${user.phone}</td>
                        <td><a href="../user/update.jeju?id=${user.userid}">수정</a>
                           <a href="../user/delete.jeju?id=${user.userid}">강제탈퇴</a> <a
                           href="../user/mypage.jeju?id=${user.userid}">회원정보</a></td>
                        <td><input type="checkbox" name="idchks"
                           value="${user.userid}"></td>
                     </tr>
                  </c:forEach>
               </table>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <div class="recent">
            <form action="mailForm.shop" method="post">
            </form>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="col-md-4">
         <a href="../hotel/regist.jeju"><button type="submit"
               class="btn btn-default">호텔 등록 하기</button></a> <a
            href="../hotel/roomregist.jeju"><button type="submit"
               class="btn btn-default">방 등록 하기</button></a>
      </div>
   </div>
</body>
</html>