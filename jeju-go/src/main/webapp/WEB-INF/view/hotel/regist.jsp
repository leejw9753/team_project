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
	<div class="container">
    <div class="row">
        <div class="recent">
          <button class="btn-primarys"><h3>Hotel Regist</h3></button>
        </div>
        <div id="sendmessage">Your message has been sent. Thank you!</div>
        <div id="errormessage"></div>
        <form name="registerform" method="post" action="register.jeju" enctype="multipart/form-data" onsubmit="return inputchk(this)">
          <div class="form-group">
           <!--  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" /> -->
            <input type="text" name="hname" class="form-control" placeholder="���� ��"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
           <!--  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" /> -->
	            <input type="text" class="form-control" name="tel1" placeholder="��ȭ��ȣ ���ڸ�">-<input type="text" class="form-control" name="tel2" placeholder="��ȭ��ȣ ����ڸ�"/>-<input type="text" class="form-control" name="tel3" placeholder="��ȭ��ȣ ���ڸ�"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
<!--             <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" /> -->
           	<input type="text" name="location1" class="form-control" placeholder="����"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
<!--             <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" /> -->
           	<input type="text" class="form-control" name="location2" placeholder="�浵"/>
            <div class="validation"></div>
          </div>
          <br>
          <div class="form-group">
          	<h5 class="widgetheading">���� �Ұ�</h5>
            <textarea class="form-control" name="contents" rows="5" placeholder="���� �Ұ�"></textarea><script>CKEDITOR.replace("contents")</script>
            <div class="validation"></div>
          </div>
          <br>
          <div class="form-group">
          <h5 class="widgetheading">����</h5><input multiple="multiple" type="file" name="photoname">
          <div class="validation"></div>
          </div>
          <br>
          <button type="submit" class="btn btn-default" style="align-content: center;">���ҵ��</button>
        </form>
      </div>
	</div>

	<!-- <form name="registerform" method="post" action="register.jeju" enctype="multipart/form-data" onsubmit="return inputchk(this)">
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
	</form> -->
</body>
</html> 