<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<center>
<h2>request �׽�Ʈ ��� - 1</h2>
<hr>

<table border=1 cellspacing=1 cellpadding=5>
<tr>
<td>�̸�</td>
<td><%=request.getParameter("username") %></td>
<tr>
<td>����</td>
<td><%=request.getParameter("job") %></td>
<tr>
<td>���ɺо�</td>
<td>
<%
	//getparameterValues �޼ҵ带 �̿��ؼ� "favorite"�� ������ ���� üũ �ڽ� ���� ��� �д´�.
	String[] favorites = request.getParameterValues("favorite");
	
	//�迭�� ũ�⸸ŭ ������ ���鼭 ���� �����.
/* 	for(int i=0; i<favorites.length;i++){
		out.print(favorites[i]+"<br>");
	} */
	for(String str:favorites){
		out.print(str+"<br>");
	}

%>
</table>
<h2>request �׽�Ʈ ��� - 2</h2>
<table border="0">
<tr><td>
1. Ŭ���̾�Ʈ ip �ּ� : <%= request.getRemoteAddr() %>
2. ��û �޼ҵ� : <%= request.getMethod() %>
<%
	Cookie[] cookie = request.getCookies(); // <- ��� ��Ű ���� ������ ���°Ŵ� �迭�� �޾ƾ��Ѵ�.
%>
3. <%=cookie[0].getName()%>�� ������ ��Ű ��:
<%= cookie[0].getValue() %><br>
4. ��������:<%= request.getProtocol() %>
</td></tr>
</table>
</center>
</body>
</html>
