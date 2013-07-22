<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.javis.database.ConnectDatabase" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query Search</title>
</head>
<body>
	<%
		String query = request.getParameter("query");
		ResultSet rs = ConnectDatabase.search(query);
		while (rs.next()) {
			String s1 = rs.getString(1);  //id
			String s2 = rs.getString(2);  //description
			String s3 = rs.getString(3);  //optional description
			String s4 = rs.getString(4);  //datetime
			String s5 = rs.getString(5);  //top answer id
			String s6 = rs.getString(6);  //email
			String s7 = rs.getString(7);  //no of answers
			String s8 = ConnectDatabase.getCategory(rs.getString(8));  //category id ==> categoryName
			out.println(s1 + "," + s2 + "," + s3 + "," + s4 + "," + s5 + "," + s6 + "," + s7 + ","+ s8 + "<br />");
		}
		ConnectDatabase.close();
	%>
</body>
</html>