<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>login.jsp</title>
</head>
<body>
<% Connection conn = null;
            String driverName = "oracle.jdbc.OracleDriver";
            Class.forName(driverName);
            String serverName = "localhost";
            String serverPort = "1521";
            String sid = "orcl";
            String url = "jdbc:oracle:thin:@" + serverName + ":" + serverPort + ":" + sid;
            String username = "scott";
            String password = "tiger";
            conn = DriverManager.getConnection(url, username, password);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select �̸� from ���� where �̸� = '�籤��'");
            while (rs.next()) {%>

              ������ȣ: <%= rs.getString(1)%><br/>

        <%  }
            rs.close();%>
	<center>
		<h2>�α���</h2>
		<form name="form1" method="post" action="selProduct.jsp">
			<input type="text" name="username"/>
			<input type="submit" value="�α���"/>
		</form>
	</center>
</body>
</html>