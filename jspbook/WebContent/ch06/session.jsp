<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>session.jsp</title>
</head>
<body>
<center>
<h2>session ����</h2>
<hr>
<%
	if(session.isNew()){
		out.println("<script> alert('������ �����Ǿ� �ٽ� ���� �մϴ�.')</script>");
		session.setAttribute("login","������");
	}
	out.clear();
	out.clearBuffer();
%>
#<%= session.getAttribute("login") %> �� ȯ�� �մϴ�. <br>
1. ���� ID : <%= session.getId() %><br>
2. ���� �����ð�: <%= session.getMaxInactiveInterval() %>
</center>

</body>
</html>