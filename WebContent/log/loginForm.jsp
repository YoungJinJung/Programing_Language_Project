<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
function loginchk(){
 var regx = /^[a-zA-Z0-9]*$/;
 var id = document.form.id.value;
 var pass = document.form.pass.value;
 if (id.length == 0 || id == null) {
  alert("���̵� �Է��Ͻÿ�");
  document.form.id.focus();
  return;
 }
 if (!regx.test(id)){
  alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
  document.form.id.focus();
  return false;
 }
 if (pass.length < 6 || pass == null) {
  alert("��й�ȣ�� 6�����̻��Դϴ�^^");
  document.form.pass.focus();
  return;
 }
 if (!regx.test(pass)){
  alert("��й�ȣ�� ����, ���ڸ� �Է°����մϴ�.");
  document.form.pass.focus();
  return false;
 }
 document.form.submit();
}
</script>
<style type="text/css">
b{
 font-size:13px;
 font-family: ����;
 color:#000000;
}
.inputid{
 font-size:13px;
 width:80px;
 height:15px;
 border-color: green;
 border-width: 5px;
}
.inputpass{
 font-size:13px;
 width:120px;
 height:15px;
 border-color: green;
 border-width: 5px;
}
hr{
 border-color: green;
 border-width: 5px;
}
</style>
<title>�α��� â</title>
</head>
<body>
<p align="right">
<form action="log/loginProc.jsp" method="post" name="form">
<b>���̵� : </b><input type="text" size="10" maxlength="15" name="id" class="inputid">&nbsp;
<b>��й�ȣ : </b><input type="password" size="10" maxlength="15" name="pass" class="inputpass">&nbsp;&nbsp;
<input type="button" value="�α���" height="30" align="middle" onclick="loginchk()">
|&nbsp;<a href="member/regFormImpl.jsp">
<b>ȸ������</b>
</a>
&nbsp;&nbsp;&nbsp;
</form>
<hr width="100%">
</body>
</html>