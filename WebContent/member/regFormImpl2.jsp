<%@ page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
var right = 0;
function regChk(){
 var id = document.form.id.value;
 var regx = /^[a-zA-Z0-9]*$/;
 var chk1 = /\d/;
 var chk2 = /[a-z]/i;
 if(id.length==0 || id==null){
  alert("���̵� �Է��Ͻʽÿ�");
  return false;
 }
 if (!regx.test(id)){
  alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
  document.form.id.focus();
  return false;
 }
 var pass = document.form.pass.value;
 if(pass.length<6 || pass==null){
  alert("��й�ȣ�� �Է��Ͻʽÿ�(6�����̻�)");
  return false;
 }
 if (chk1.test(pass) && chk2.test(pass)){
 }else{
  alert("��й�ȣ�� ����, ���� �����Դϴ�.");
  return false;
 }
 if(right == 0){
  alert("��й�ȣ�� �������� Ȯ���Ͻÿ�");
  return false;
 }
 var name = document.form.name.value;
 if(name.length==0 || name==null){
  alert("�̸��� �Է��Ͻʽÿ�");
  return false;
 }
 var email1 = document.form.email1.value;
 var email2 = document.form.email1.value;
 if(email1.length==0 || email1==null){
  alert("�̸����� �Է��Ͻʽÿ�");
  return false;
 }
 if (!regx.test(email1)){
  alert("�̸����� ����, ���ڸ� �Է°����մϴ�.");
  document.form.email1.focus();
  return false;
 }
 if(email2.length==0 || email2==null){
  alert("�̸����� �Է��Ͻʽÿ�");
  return false;
 }
 if (!regx.test(email2)){
  alert("�̸����� ����, ���ڸ� �Է°����մϴ�.");
  document.form.email2.focus();
  return false;
 }
 var num_regx = /^[0-9]*$/;
 var ph2 = document.form.ph2.value;
 if(ph2.length==0 || ph2==null){
  alert("�ڵ�����ȣ�� �Է��Ͻʽÿ�");
  return false;
 }
 var ph3 = document.form.ph3.value;
 if(ph3.length==0 || ph3==null){
  alert("�ڵ�����ȣ�� �Է��Ͻʽÿ�");
  return false;
 }
 if (!num_regx.test(ph2) || !num_regx.test(ph3)){
  alert("�ڵ�����ȣ�� ���ڸ� �Է°����մϴ�");
  return false;
 }
 var address = document.form.address.value;
 if(address.length==0 || address==null){
  alert("�ּҸ� �Է��Ͻʽÿ�");
  return false;
 }
 document.form.submit();
}
function regCancel(){
 location.href="../index.jsp"; 
}
function passchk(){
 var pass = document.form.pass.value;
 var pass2 = document.form.pass2.value;
 if (pass2.length == 0 || pass2 == null) {
  document.form.chk.value = "��й�ȣ�� �Է��ϼ���";
  right = 0;
 } else if (pass != pass2) {
  document.form.chk.value = "��й�ȣ�� �ٸ��ϴ�.";
  right = 0;
 } else {   
  document.form.chk.value = "��й�ȣ�� �����մϴ�.";
  right = 1;
 }
 return;
}
function idcheck(){
	 var id = document.form.id.value;
	 if(id.length<1 || id==null){
	  alert("�ߺ�üũ�� ���̵� �Է��Ͻʽÿ�");
	  return false;
	 }
	 var url = "idCheck.jsp?id=" + id;
	 window.open(url, "get", "height = 180, width = 300");
	}
	</script>
<link href="style/memberStyle.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ â</title>
</head>
<body>
<form action="regFormProc.jsp" name="form" method="post">
 <table width="900" height="650">
  <tr>
   <td width="100%" height="10%"><span style="padding-left: 160px"></span>&nbsp;ȸ������
   </td>
  </tr>
  <tr>
   <td height="60%" align="center" valign="top">
   <hr><br>
   <p align="left" style="padding-left:160px">
   <b>���������Է�</b>
   <br><br>
   ID : <input type="text" size="10" maxlength="15" name="id">&nbsp;<input type="button" onclick="idcheck()" align="middle">
   <br><br>
   ��й�ȣ : <input type="password" size="15" maxlength="20" name="pass"><br><br>
   ��й�ȣ Ȯ�� : <input type="password" size="15" maxlength="20" name="pass2" onblur="passchk()">&nbsp;
   <input type="text" style="border-width: 0px" size="20" name="chk" value="��й�ȣ�� �Է��ϼ���" readonly="readonly" class="danger1">
   <br><br>
   �̸� : <input type="text" size="13" maxlength="12" name="name"><br><br>
   �̸��� : <input type="text" size="15" name="email1">@<input type="text" size="15" name="email2"><br><br>
   �̸��� ���ſ��� : <input type="radio" name="sent" value="ok" checked="checked"> ������&nbsp;&nbsp;
   <input type="radio" name="sent" value="no"> ���Ű���<br><br>
   �޴��� : <span class="selectph1"><select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select></span>
     - <input type="text" name="ph2" size="5" maxlength="4"> - <input type="text" name="ph3" size="5" maxlength="4"><br><br>
   ���� : <input type="radio" name="gender" value="����" checked="checked"> ����&nbsp;&nbsp;
   <input type="radio" name="gender" value="����"> ����<br><br>
   ������� : <select name="birth1">
       <%for(int i=2013; i>=1900; i--){ %>
       <option value="<%=i %>"><%=i %></option>
       <%} %>
     </select>��&nbsp;
     <select name="birth2">
       <%for(int i=1; i<=12; i++){ %>
       <option value="<%=i %>"><%=i %></option>
       <%} %>
     </select>
     <select name="birth3">
       <%for(int i=1; i<=31; i++){ %>
       <option value="<%=i %>"><%=i %></option>
       <%} %>
     </select>��<br><br>
   �ּ� : <input type="text" name="address" size="15" maxlength="15">
   <p align="left">
   <span class="danger2">
   *�ּҴ� (��/��)�� �Է����ּ��� (��: ��⵵, ����Ư����, ��󳲵� ��)
   </span>
   </p>
  </td>
  </tr>
  <tr>
   <td align="center">
   <hr><br>
    <input type="button" value="���Խ�û" onclick="regChk()">&nbsp;
    <input type="reset" value="�ٽ��Է�" onclick="javascript:location.href='regFormImpl2.jsp'">&nbsp;
    	<input type="button" value="���" onclick="regCancel()">
   </td>
  </tr>
 </table>
</form>
</body>
</html>
