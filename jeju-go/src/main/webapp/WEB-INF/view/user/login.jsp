<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
<h2>����Go �α��� </h2>
<script>
	function passchk(f){
		if(f.password.value != f.checkpassword.value){
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
			return false;
		}
		return true;
	}
</script>
<form:form modelAttribute="user" method="post" action="login.jeju">
	<input type="hidden" name="userName" value="��ȿ�� ������ ���� �ǹ� ���� �̸�" />
	<spring:hasBindErrors name="user">
		<font color="red">
			<c:forEach items="${errors.globalErrors}" var="error">
				<spring:message code="${error.code }" />
			</c:forEach>
		</font>
	</spring:hasBindErrors>
          <div class="form-group input-group">
                <span class="input-group-addon"><i class="userid"></i></span>
                    <form:input type="text" class="form-control" placeholder="�̸����� �Է��ϼ���" path="userid"/>
                   <font color="red"><form:errors path="userid"/></font>
                </div>
                
				<div class="form-group input-group">
                    <span class="input-group-addon"><i class="username"></i></span>
                    <form:input type="text" class="form-control" placeholder="�̸����Է��ϼ���" path="username"/>
                    <font color="red"><form:errors path="username"/></font>
                </div>

	 			 <div class="form-group input-group">
                    <span class="input-group-addon"><i class="password"></i></span>
                    <form:password class="form-control"  placeholder="��й�ȣ�� �Է��ϼ���" path="password"/>
                      <font color="red"><form:errors path="password"/></font>
                </div>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="password"></i></span>
                    <input type="password" name="checkpassword"class="form-control"  placeholder="��й�ȣ�� �Է��ϼ���" />
                                     </div>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="phone"></i></span>
                    <form:input type="text" class="form-control" placeholder="�޴�����ȣ���Է��ϼ���" path="phone"/>
                    <font color="red"><form:errors path="phone"/></font>
                </div>
                
				<button type="submit" class="btn btn-default">ȸ������</button>
                <button type="reset" class="btn btn-default">����ϱ�</button>
            </form:form>
</body>
</html>