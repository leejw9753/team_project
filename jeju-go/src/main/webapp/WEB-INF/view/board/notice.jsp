<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MyPage</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#info").show();
		$("#oinfo").hide();
		$(".saleLine").each(function() { // 주문상품 목록 숨김.
			$(this).hide();
		})
		$("#tab1").addClass("select"); // class 속성에 select를 추가
	})
	function disp_div(id, tab) {
		$(".info").each(function() {
			$(this).hide();
		})
		$(".tab").each(function() {
			$(this).removeClass("select");
		})
		$("#" + id).show();
		$("#" + tab).addClass("select");
	}
	function list_disp(id) {
		$("#" + id).toggle();
	}
</script>
<style type="text/css">
	.select {
		padding:3px;
		background-color:#0000ff;
	}
	.select > a {
		text-decoration:none; 
		font-weight:bold;
		color:#ffffff;
	}
</style>
</head>
<body>
<table>
	<tr>
		<td id="tab1" class="tab">
			<a href="javascript:disp_div('minfo','tab1')">공지사항</a>
		</td>
		<c:if test="${user.userId != 'admin'}">
			<td id="tab2" class="tab">
				<a href="javascript:disp_div('oinfo', 'tab2')">QnA</a>
			</td>
		</c:if>
	</tr>
</table>
<%-- QnA --%>
<div id="oinfo" class="info" style="display: none; width:100%;">
	<table>
		<tr><td colspan="5">
			<form action="list.jeju" method="post" name="searchform">
				<input type="hidden" name="pageNum" value="1">
				<select name="searchtype">
					<option value="">선택하세요</option>
					<option value="subject">제목</option>
					<option value="name">이름</option>
					<option value="content">내용</option>
				</select>
				<script type="text/javascript">
					document.searchform.searchtype.value="${param.searchtype}"
				</script>
				<input type="text" name="searchcontent" value="${param.searchcontent}">
				<input type="submit" value="검색">
			</form>
			</td>
		</tr>
			<tr><td colspan="4">QnA</td><td>글개수 : ${listcount}</td></tr>
			<tr><th>번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th></tr>
			<c:forEach items="${boardlist}" var="board">
				<tr><td>${boardno}</td>
					<c:set var="boardno" value="${boardno - 1}"/>
					<td style="text-align:left">
					<c:if test="${!empty board.fileurl}">
						<a href="file/${board.fileurl}">@</a>
					</c:if>
					<c:if test="${empty board.fileurl}">&nbsp;</c:if>
					<c:forEach begin="1" end="${board.reflevel}">&nbsp;&nbsp;&nbsp;</c:forEach>
					<c:if test="${board.reflevel > 0}">└</c:if>
					<a href="detail.jeju?num=${board.num}">${board.subject}</a></td>
					
					<td>${board.name}</td>
					<td><fmt:formatDate var="rdate" value="${board.regdate}" pattern="yyyyMMdd" />
		                 <c:if test="${today == rdate}">
		                 	<fmt:formatDate value="${board.regdate}" pattern="HH:mm:ss"/>
		                 </c:if>
		                 <c:if test="${today != rdate}">
		                 	<fmt:formatDate value="${board.regdate}" pattern="yy-MM-dd HH:mm"/>
		                 </c:if></td>
					<td>${board.readcnt}</td>
				</tr>
			</c:forEach>
			<tr><td colspan="5">
				<c:if test="${pageNum > 1}">
					<a href="javascript:listcall(${pageNum - 1})">[이전]</a>
				</c:if>
				<c:if test="${pageNum <= 1}">[이전]</c:if>
				<c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == pageNum}">[${a}]</c:if>
					<c:if test="${a != pageNum}">
						<a href="javascript:listcall(${a})">[${a}]</a>
					</c:if>
				</c:forEach>
				<c:if test="${pageNum < maxpage}">
					<a href="javascript:listcall(${pageNum + 1})">[다음]</a>
				</c:if>
				<c:if test="${pageNum >= maxpage}">[다음]</c:if>
				</td>
			</tr>
		<tr><td colspan="5" align="right">
			<a href="write.jeju">[글쓰기]</a>
			</td>
		</tr>
	</table>
</div>
<%-- 공지사항 --%>
<div id="minfo" class="info">
	<table>
		<tr><td colspan="5">
			<form action="list.jeju" method="post" name="searchform">
				<input type="hidden" name="pageNum" value="1">
				<select name="searchtype">
					<option value="">선택하세요</option>
					<option value="subject">제목</option>
					<option value="name">이름</option>
					<option value="content">내용</option>
				</select>
				<script type="text/javascript">
					document.searchform.searchtype.value="${param.searchtype}"
				</script>
				<input type="text" name="searchcontent" value="${param.searchcontent}">
				<input type="submit" value="검색">
			</form>
			</td>
		</tr>
			<tr><td colspan="4">공지사항</td><td>글개수 : ${listcount}</td></tr>
			<tr><th>번호</th><th>제목</th><th>작성자</th><th>날짜</th><th>조회수</th></tr>
			<c:forEach items="${boardlist}" var="board">
				<tr><td>${boardno}</td>
					<c:set var="boardno" value="${boardno - 1}"/>
					<td style="text-align:left">
					<c:if test="${!empty board.fileurl}">
						<a href="file/${board.fileurl}">@</a>
					</c:if>
					<c:if test="${empty board.fileurl}">&nbsp;</c:if>
					<c:forEach begin="1" end="${board.reflevel}">&nbsp;&nbsp;&nbsp;</c:forEach>
					<c:if test="${board.reflevel > 0}">└</c:if>
					<a href="detail.jeju?num=${board.num}">${board.subject}</a></td>
					
					<td>${board.name}</td>
					<td><fmt:formatDate var="rdate" value="${board.regdate}" pattern="yyyyMMdd" />
		                 <c:if test="${today == rdate}">
		                 	<fmt:formatDate value="${board.regdate}" pattern="HH:mm:ss"/>
		                 </c:if>
		                 <c:if test="${today != rdate}">
		                 	<fmt:formatDate value="${board.regdate}" pattern="yy-MM-dd HH:mm"/>
		                 </c:if></td>
					<td>${board.readcnt}</td>
				</tr>
			</c:forEach>
			<tr><td colspan="5">
				<c:if test="${pageNum > 1}">
					<a href="javascript:listcall(${pageNum - 1})">[이전]</a>
				</c:if>
				<c:if test="${pageNum <= 1}">[이전]</c:if>
				<c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == pageNum}">[${a}]</c:if>
					<c:if test="${a != pageNum}">
						<a href="javascript:listcall(${a})">[${a}]</a>
					</c:if>
				</c:forEach>
				<c:if test="${pageNum < maxpage}">
					<a href="javascript:listcall(${pageNum + 1})">[다음]</a>
				</c:if>
				<c:if test="${pageNum >= maxpage}">[다음]</c:if>
				</td>
			</tr>
		<tr><td colspan="5" align="right">
			<a href="write.jeju">[글쓰기]</a>
			</td>
		</tr>
	</table>
</div><br>
</body>
</html>