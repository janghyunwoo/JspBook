<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<%
	//변수 설정
	int result=0;

	if(request.getMethod().equals("POST")){
		
		String op = request.getParameter("operator");
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		if(op.equals("+")){
			result = num1+num2;
		}else if(op.equals("-")){
			result = num1-num2;
		}else if(op.equals("*")){
			result = num1*num2;
		}else if(op.equals("/")){
			result = num1/num2;
		}
		
	}

%>
<title>계산기</title>
</head>
<body>
<h3>계산기</h3>
<Hr>
<form name="form1" method="post">
<input type="text" name ="num1" width=200 size="5">
<select name="operator">
	<option selected>+</option>
	<option >-</option>
	<option >/</option>
	<option >*</option>
</select>
<input type="text" name ="num2" width=200 size="5">
<input type="submit" value="계산"> <input type="reset" value="다시 입력"> 
</form>
<hr>

계산결과 : <%=result %>
</body>
</html>