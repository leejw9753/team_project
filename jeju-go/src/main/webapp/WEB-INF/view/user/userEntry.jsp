<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>제주Go 회원가입</title>
<script>
	function passchk(f){
		if(f.password.value != f.checkpassword.value){
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<h2>제주Go 회원 가입</h2>
<form:form modelAttribute="user" method="post" action="userEntry.jeju" onsubmit="return passchk(this)">
	<spring:hasBindErrors name="user">
	<font color = "red">
		<c:forEach items="${errors.globalErrors}" var="error">
			<spring:message code="${error.code}" />
			</c:forEach>
		</font>
	</spring:hasBindErrors>
	 <div class="form-group input-group">
                <span class="input-group-addon"><i class="userid"></i></span>
                    <form:input type="text" class="form-control" placeholder="이메일을 입력하세요" path="userid"/>
                   <font color="red"><form:errors path="userid"/></font>
                </div>
                
				<div class="form-group input-group">
                    <span class="input-group-addon"><i class="username"></i></span>
                    <form:input type="text" class="form-control" placeholder="이름을입력하세요" path="username"/>
                    <font color="red"><form:errors path="username"/></font>
                </div>

	 			 <div class="form-group input-group">
                    <span class="input-group-addon"><i class="password"></i></span>
                    <form:password class="form-control"  placeholder="비밀번호를 입력하세요" path="password"/>
                      <font color="red"><form:errors path="password"/></font>
                </div>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="password"></i></span>
                    <input type="password" name="checkpassword"class="form-control"  placeholder="비밀번호를 입력하세요" />
                                     </div>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="phone"></i></span>
                    <form:input type="text" class="form-control" placeholder="휴대폰번호를입력하세요" path="phone"/>
                    <font color="red"><form:errors path="phone"/></font>
                </div>
                
				<button type="submit" class="btn btn-default">회원가입</button>
                <button type="reset" class="btn btn-default">취소하기</button>
            </form:form>
</body>
</html>