<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>checkOut.jsp</title>
</head>
<body>
<center>
<h2>���</h2>
������ ��ǰ ���
<hr>
<%
	ArrayList<Object> list = (ArrayList)session.getAttribute("productlist");
	if(list==null){
		out.print("������ ��ǰ�� �����ϴ�.");
	}else{
		for(Object productname:list){
			out.println(productname+"<br>");
		}
	}
%>
</center>

</body>
</html>