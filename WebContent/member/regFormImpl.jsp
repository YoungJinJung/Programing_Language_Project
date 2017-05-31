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
  alert("개인정보 약관에 동의하셔야 합니다.");
 }
}
function nochk(){
 alert("동의하지 않으면 가입하실 수 없습니다");
location.href="../index.jsp";}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 창</title>
</head>
<body>
<form action="regFormImpl2.jsp" name="form" method="post">
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%"><span style="padding-left: 160px"></span>&nbsp; <b>회원가입</b>
    <br><br>
    <hr>
   </td>
  </tr>
  <tr>
   <td width="100%" height="30%" align="center">
   <p align="left">
   <span style="padding-left: 170px"><b>약관동의</b></span>
   </p>
   <br>
   <textarea
     rows="6" cols="150">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보

   </textarea>
   <br>
   <input type="checkbox" name="req"> 개인정보 수집 및 이용에 동의합니다. 
   </td>
  </tr>
  <tr>
   <td align="center" valign="top">
    <input type="button" value="동의" onclick="chk()"/>&nbsp;&nbsp;&nbsp;
    <input type="button" value="동의하지 않습니다" onclick="nochk()"/>
   </td>
  </tr>
 </table>
</form>
</body>
</html>
