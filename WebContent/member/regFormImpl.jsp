<%@ page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function chk(){
 var req = document.form.req.checked;
 var num = 0;
 if(req == true){
  num = 1;
 }
 if(num==1){
  document.form.submit();
 }else{
  alert("�������� ����� �����ϼž� �մϴ�.");
 }
}
function nochk(){
 alert("�������� ������ �����Ͻ� �� �����ϴ�");
location.href="../index.jsp";}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ â</title>
</head>
<body>
<form action="regFormImpl2.jsp" name="form" method="post">
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%"><span style="padding-left: 160px"></span>&nbsp; <b>ȸ������</b>
    <br><br>
    <hr>
   </td>
  </tr>
  <tr>
   <td width="100%" height="30%" align="center">
   <p align="left">
   <span style="padding-left: 170px"><b>�������</b></span>
   </p>
   <br>
   <textarea
     rows="6" cols="150">��. �����ϴ� ���������� �׸�ù°, ȸ��� ȸ���� ��, ��Ȱ�� �����, ���� ������ ������ ���� ���� ȸ������ ��� �Ʒ��� ���� �ּ����� ���������� �ʼ��׸����� �����ϰ� �ֽ��ϴ�.
ȸ������
- �̸�, �������, ����, ���̵�, ��й�ȣ, ����, ����ó(�����ּ�, �޴��� ��ȣ �� ����), ������������
��14�� �̸� �Ƶ� ȸ������ 
- �̸�, �������, ����, �����븮�� ����, ���̵�, ��й�ȣ, ����ó (�����ּ�, �޴��� ��ȣ �� ����), ������������

   </textarea>
   <br>
   <input type="checkbox" name="req"> �������� ���� �� �̿뿡 �����մϴ�. 
   </td>
  </tr>
  <tr>
   <td align="center" valign="top">
    <input type="button" value="����" onclick="chk()"/>&nbsp;&nbsp;&nbsp;
    <input type="button" value="�������� �ʽ��ϴ�" onclick="nochk()"/>
   </td>
  </tr>
 </table>
</form>
</body>
</html>
