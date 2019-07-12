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
		$(".saleLine").each(function() { // �ֹ���ǰ ��� ����.
			$(this).hide();
		})
		$("#tab1").addClass("select"); // class �Ӽ��� select�� �߰�
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
			<a href="javascript:disp_div('minfo','tab1')">��������</a>
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
					<option value="">�����ϼ���</option>
					<option value="subject">����</option>
					<option value="name">�̸�</option>
					<option value="content">����</option>
				</select>
				<script type="text/javascript">
					document.searchform.searchtype.value="${param.searchtype}"
				</script>
				<input type="text" name="searchcontent" value="${param.searchcontent}">
				<input type="submit" value="�˻�">
			</form>
			</td>
		</tr>
			<tr><td colspan="4">QnA</td><td>�۰��� : ${listcount}</td></tr>
			<tr><th>��ȣ</th><th>����</th><th>�ۼ���</th><th>��¥</th><th>��ȸ��</th></tr>
			<c:forEach items="${boardlist}" var="board">
				<tr><td>${boardno}</td>
					<c:set var="boardno" value="${boardno - 1}"/>
					<td style="text-align:left">
					<c:if test="${!empty board.fileurl}">
						<a href="file/${board.fileurl}">@</a>
					</c:if>
					<c:if test="${empty board.fileurl}">&nbsp;</c:if>
					<c:forEach begin="1" end="${board.reflevel}">&nbsp;&nbsp;&nbsp;</c:forEach>
					<c:if test="${board.reflevel > 0}">��</c:if>
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
					<a href="javascript:listcall(${pageNum - 1})">[����]</a>
				</c:if>
				<c:if test="${pageNum <= 1}">[����]</c:if>
				<c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == pageNum}">[${a}]</c:if>
					<c:if test="${a != pageNum}">
						<a href="javascript:listcall(${a})">[${a}]</a>
					</c:if>
				</c:forEach>
				<c:if test="${pageNum < maxpage}">
					<a href="javascript:listcall(${pageNum + 1})">[����]</a>
				</c:if>
				<c:if test="${pageNum >= maxpage}">[����]</c:if>
				</td>
			</tr>
		<tr><td colspan="5" align="right">
			<a href="write.jeju">[�۾���]</a>
			</td>
		</tr>
	</table>
</div>
<%-- �������� --%>
<div id="minfo" class="info">
	<table>
		<tr><td colspan="5">
			<form action="list.jeju" method="post" name="searchform">
				<input type="hidden" name="pageNum" value="1">
				<select name="searchtype">
					<option value="">�����ϼ���</option>
					<option value="subject">����</option>
					<option value="name">�̸�</option>
					<option value="content">����</option>
				</select>
				<script type="text/javascript">
					document.searchform.searchtype.value="${param.searchtype}"
				</script>
				<input type="text" name="searchcontent" value="${param.searchcontent}">
				<input type="submit" value="�˻�">
			</form>
			</td>
		</tr>
			<tr><td colspan="4">��������</td><td>�۰��� : ${listcount}</td></tr>
			<tr><th>��ȣ</th><th>����</th><th>�ۼ���</th><th>��¥</th><th>��ȸ��</th></tr>
			<c:forEach items="${boardlist}" var="board">
				<tr><td>${boardno}</td>
					<c:set var="boardno" value="${boardno - 1}"/>
					<td style="text-align:left">
					<c:if test="${!empty board.fileurl}">
						<a href="file/${board.fileurl}">@</a>
					</c:if>
					<c:if test="${empty board.fileurl}">&nbsp;</c:if>
					<c:forEach begin="1" end="${board.reflevel}">&nbsp;&nbsp;&nbsp;</c:forEach>
					<c:if test="${board.reflevel > 0}">��</c:if>
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
					<a href="javascript:listcall(${pageNum - 1})">[����]</a>
				</c:if>
				<c:if test="${pageNum <= 1}">[����]</c:if>
				<c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == pageNum}">[${a}]</c:if>
					<c:if test="${a != pageNum}">
						<a href="javascript:listcall(${a})">[${a}]</a>
					</c:if>
				</c:forEach>
				<c:if test="${pageNum < maxpage}">
					<a href="javascript:listcall(${pageNum + 1})">[����]</a>
				</c:if>
				<c:if test="${pageNum >= maxpage}">[����]</c:if>
				</td>
			</tr>
		<tr><td colspan="5" align="right">
			<a href="write.jeju">[�۾���]</a>
			</td>
		</tr>
	</table>
</div><br>
</body>
</html>