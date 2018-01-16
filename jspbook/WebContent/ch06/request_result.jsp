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
<h2>request 테스트 결과 - 1</h2>
<hr>

<table border=1 cellspacing=1 cellpadding=5>
<tr>
<td>이름</td>
<td><%=request.getParameter("username") %></td>
<tr>
<td>직업</td>
<td><%=request.getParameter("job") %></td>
<tr>
<td>관심분야</td>
<td>
<%
	//getparameterValues 메소드를 이용해서 "favorite"로 설정된 폼의 체크 박스 값을 모두 읽는다.
	String[] favorites = request.getParameterValues("favorite");
	
	//배열의 크기만큼 루프를 돌면서 값을 출력함.
/* 	for(int i=0; i<favorites.length;i++){
		out.print(favorites[i]+"<br>");
	} */
	for(String str:favorites){
		out.print(str+"<br>");
	}

%>
</table>
<h2>request 테스트 결과 - 2</h2>
<table border="0">
<tr><td>
1. 클라이언트 ip 주소 : <%= request.getRemoteAddr() %>
2. 요청 메소드 : <%= request.getMethod() %>
<%
	Cookie[] cookie = request.getCookies(); // <- 모든 쿠키 값을 가지고 오는거니 배열로 받아야한다.
%>
3. <%=cookie[0].getName()%>에 설정된 쿠키 값:
<%= cookie[0].getValue() %><br>
4. 프로토콜:<%= request.getProtocol() %>
</td></tr>
</table>
</center>
</body>
</html>
