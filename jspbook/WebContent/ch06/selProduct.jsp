<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("euc-kr");

	session.setAttribute("username", request.getParameter("username"));
%>
<body>
<center>
	<h2>��ǰ����</h2>
	<hr>
	<%= session.getAttribute("username") %>���� �α����� �����Դϴ�.
	<hr>
	<form name="form1" method="post" action="add.jsp">
		<select name="product">
			<option>���</option>
			<option>��</option>
			<option>���ξ���</option>
			<option>�ڸ�</option>
			<option>����</option>
		</select>
		<input type="submit" value="�߰�"/>
	</form>
	<a href="checkOut.jsp">���</a>
</center>
</body>
</html>