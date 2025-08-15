<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.naari.suraksha.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


		<%
			Connection con = DBConnect.Connect();
			int uid = Integer.parseInt(request.getParameter("uid"));
			PreparedStatement pstm = con.prepareStatement("delete from users where uid = ?");
			pstm.setInt(1,uid);
			
			int i = pstm.executeUpdate();
	        if (i > 0) 
	        {
	        	response.sendRedirect("View_Users.jsp");
	        }
	       
			
		%>


</body>
</html>