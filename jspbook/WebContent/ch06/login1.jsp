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
            ResultSet rs = st.executeQuery("select 이름 from 교수 where 이름 = '양광식'");
            while (rs.next()) {%>

              교수번호: <%= rs.getString(1)%><br/>

        <%  }
            rs.close();%>
	<center>
		<h2>로그인</h2>
		<form name="form1" method="post" action="selProduct.jsp">
			<input type="text" name="username"/>
			<input type="submit" value="로그인"/>
		</form>
	</center>
</body>
</html>