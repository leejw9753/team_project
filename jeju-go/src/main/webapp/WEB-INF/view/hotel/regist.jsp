<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȣ�� ��� ������</title>
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<script>
	function inputchk(f){
		if(f.hname.value==""){
			alert("���Ҹ��� Ȯ�����ּ���.")
			f.hname.focus();
			return false;
		}
		if(f.tel1.value==""||f.tel2.value==""||f.tel3.value==""){
			alert("��ȭ��ȣ�� Ȯ�����ּ���")
			f.tel1.focus();
			return false;
		}
		if(f.location1.value==""||f.location2.value==""){
			alert("����/�浵�� Ȯ�����ּ���")
			f.location1.focus();
			return false;
		}
		if(f.photoname.value==""){
			alert("������ �ʼ��Դϴ�.")
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<form name="registerform" method="post" action="register.jeju" enctype="multipart/form-data" onsubmit="return inputchk(this)">
		<h2>ȣ�� ���</h2>
		<table>
			<tr><td>���� ��</td>
				<td><input type="text" name="hname"/></td>
			</tr>
			<tr><td>��ȭ��ȣ</td>
				<td><input type="text" name="tel1"> - <input type="text" name="tel2"> - <input type="text" name="tel3"></td>
			</tr>
			<tr><td>��ġ</td>
				<td>����: <input type="text" name="location1">&nbsp;�浵: <input type="text" name="location2"></td>
			</tr>
			<tr><td>���һ���</td>
				<td colspan="2"><input multiple="multiple" type="file" name="photoname"></td>
			</tr>
			<tr><td>���� �Ұ�</td>
				<td><textarea name="contents" cols="300" rows="10"></textarea>
 				<script>CKEDITOR.replace("contents")</script></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="���ҵ��"></td>
			</tr>
		</table>	
	</form>
</body>
</html> 