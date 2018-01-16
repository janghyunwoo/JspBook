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
<h2>session 예제</h2>
<hr>
<%
	if(session.isNew()){
		out.println("<script> alert('세션이 해제되어 다시 설정 합니다.')</script>");
		session.setAttribute("login","장현우");
	}
	out.clear();
	out.clearBuffer();
%>
#<%= session.getAttribute("login") %> 님 환영 합니다. <br>
1. 세션 ID : <%= session.getId() %><br>
2. 세션 유지시간: <%= session.getMaxInactiveInterval() %>
</center>

</body>
</html>