<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��� ������</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
  <div class="w3-content">
    <form:form modelAttribute="room" action="register2.jeju" enctype="multipart/form-data">
      <input type="hidden" value="${no}" name="hno">
              �������&nbsp;&nbsp;<input type="file" multiple="multiple" name="photoname">
      <br><br>
              �� ����&nbsp;&nbsp;<input type="radio" name="name" value="�����">�����
      &nbsp;<input type="radio" name="name" value="�𷰽�">�𷰽�
      &nbsp;<input type="radio" name="name" value="Ʈ����">Ʈ����
      &nbsp;<input type="radio" name="name" value="����Ʈ">����Ʈ
      <br><br>
             ȣ��&nbsp;<input type="text" name="roomnum">
      <br><br>
             ����&nbsp;<input type="text" name="price">
      <br><br>
             ���� �ο� ��&nbsp;
        <select name="max">
          <c:forEach begin="1" end="10" var="i">
            <option value="${i}">${i}��</option>
          </c:forEach>
        </select>
      <br><br>
             ħ�� ���� / ����&nbsp;
        <select name="bed">
          <option value="�̱�">�̱�</option>
          <option value="Ʈ��">Ʈ��</option>
          <option value="����">����</option>
        </select>&nbsp;
      <select name="bedcount">
        <c:forEach begin="1" end="10" var="i">
          <option value="${i}">${i}��</option>
        </c:forEach>
      </select>
      <br><br>
             �� ����&nbsp;&nbsp;<input type="checkbox" name="convenient" value="����������">����������
      <input type="checkbox" name="convenient" value="wi-fi">wi-fi
      <input type="checkbox" name="convenient" value="�ֹ�ü�">�ֹ�ü�
      <input type="checkbox" name="convenient" value="������">������
      <input type="checkbox" name="convenient" value="��Ź��">��Ź��
      <input type="checkbox" name="convenient" value="��ǰ��">��ǰ��
      <input type="checkbox" name="convenient" value="TV">TV
      <input type="checkbox" name="convenient" value="������">������
      <input type="checkbox" name="convenient" value="�����">�����
      <input type="checkbox" name="convenient" value="����">����
      <br><br>
      <input type="submit" value="���">
    </form:form>
  </div>
</body>
</html>