<%@page import="jspbook.ch04.HelloWorldServlet"%>
<%@page import="jspbook.ch04.CalcServlet"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- id�� CalcBean Ŭ������ ���������� �ȴ�. -->
<jsp:useBean id="calc" scope="page" class="jspbook.ch03.CalcBean"  ></jsp:useBean>

<jsp:setProperty property="*" name="calc" />
<%calc.calculate();  %>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>����</title>
</head>
<body>

<h3>����</h3>
<Hr>
<form method="post">
<input type="text" name ="num1" width=200 size="5">
<!-- selected : �ʱ� ���ڸ� +�� ���� -->
<select name="operator">
	<option selected>+</option>
	<option >-</option>
	<option >/</option>
	<option >*</option>
</select>
<input type="text" name ="num2" width=200 size="5">
<input type="submit" value="���"> <input type="reset" value="�ٽ� �Է�"> 
</form>
<hr>
����� : <jsp:getProperty property="result" name="calc"/>

</body>
</html>

