<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="my.member.MemberDao"/>
<%
 int rst = 0;
 String id = (String)request.getParameter("id");
 rst = dao.idCheck(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���̵� �ߺ� Ȯ��</title>
</head>
<body>
<%
if(rst == 1){
%>
<img src="image/idno.png" width="290" height="166">
<!-- ���̵� �̹� �����Ҷ� �̹��� -->
<%}else{ %>
<img src="image/idok.png" width="290" height="166">
<!-- ���̵� �������� ���� �� �̹��� -->
<%} %>
</body>
</html>
