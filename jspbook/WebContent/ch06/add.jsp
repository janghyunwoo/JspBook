<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>add.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String productname = request.getParameter("product");
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null){
		list = new ArrayList();
	}
	list.add(productname);
	session.setAttribute("productlist", list);
%>
	<script>
		alert("<%=productname%>이(가) 추가되었습니다!!");
		history.go(-1);
	</script>
</body>
</html>
