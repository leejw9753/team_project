<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>호텔 등록 페이지</title>
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<script>
	function inputchk(f){
		if(f.hname.value==""){
			alert("숙소명을 확인해주세요.")
			f.hname.focus();
			return false;
		}
		if(f.tel1.value==""||f.tel2.value==""||f.tel3.value==""){
			alert("전화번호를 확인해주세요")
			f.tel1.focus();
			return false;
		}
		if(f.location1.value==""||f.location2.value==""){
			alert("위도/경도를 확인해주세요")
			f.location1.focus();
			return false;
		}
		if(f.photoname.value==""){
			alert("사진은 필수입니다.")
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
            <input type="text" name="hname" class="form-control" placeholder="숙소 명"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
           <!--  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" /> -->
	            <input type="text" class="form-control" name="tel1" placeholder="전화번호 앞자리">-<input type="text" class="form-control" name="tel2" placeholder="전화번호 가운데자리"/>-<input type="text" class="form-control" name="tel3" placeholder="전화번호 뒷자리"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
<!--             <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" /> -->
           	<input type="text" name="location1" class="form-control" placeholder="위도"/>
            <div class="validation"></div>
          </div>
          <div class="form-group">
<!--             <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" /> -->
           	<input type="text" class="form-control" name="location2" placeholder="경도"/>
            <div class="validation"></div>
          </div>
          <br>
          <div class="form-group">
          	<h5 class="widgetheading">숙소 소개</h5>
            <textarea class="form-control" name="contents" rows="5" placeholder="숙소 소개"></textarea><script>CKEDITOR.replace("contents")</script>
            <div class="validation"></div>
          </div>
          <br>
          <div class="form-group">
          <h5 class="widgetheading">사진</h5><input multiple="multiple" type="file" name="photoname">
          <div class="validation"></div>
          </div>
          <br>
          <button type="submit" class="btn btn-default" style="align-content: center;">숙소등록</button>
        </form>
      </div>
	</div>

	<!-- <form name="registerform" method="post" action="register.jeju" enctype="multipart/form-data" onsubmit="return inputchk(this)">
		<h2>호텔 등록</h2>
		<table>
			<tr><td>숙소 명</td>
				<td><input type="text" name="hname"/></td>
			</tr>
			<tr><td>전화번호</td>
				<td><input type="text" name="tel1"> - <input type="text" name="tel2"> - <input type="text" name="tel3"></td>
			</tr>
			<tr><td>위치</td>
				<td>위도: <input type="text" name="location1">&nbsp;경도: <input type="text" name="location2"></td>
			</tr>
			<tr><td>숙소사진</td>
				<td colspan="2"><input multiple="multiple" type="file" name="photoname"></td>
			</tr>
			<tr><td>숙소 소개</td>
				<td><textarea name="contents" cols="300" rows="10"></textarea>
 				<script>CKEDITOR.replace("contents")</script></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="숙소등록"></td>
			</tr>
		</table>	
	</form> -->
</body>
</html> 