<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
</head>
<body>
<%-- enctype="multipart/form-data" : (����������)�޼ҵ� ����� ������ POST --%>
<form:form modelAttribute="board" action="write.jeju" enctype="multipart/form-data" name="f">
	<table>
		<tr><td>�ۼ���</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr><td>����</td><td><input type="text" name="subject"></td></tr>
		<tr><td>����</td><td><textarea name="content"></textarea></td></tr>
		<tr><td>÷������</td><td><input type="file" name="file1"></td></tr>
		<tr><td colspan="2">
			<a href="javascript:document.f.submit()">[�Խñ� ���]</a>
			<a href="notice.jeju">[�Խñ� ���]</a></td>
		</tr>
	</table>
</form:form>
</body>
</html>