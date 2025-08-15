<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
<style>
  body {
    margin: 0;
    padding: 0;
    background: #fff0f5; /* lavender blush */
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  .message-box {
    background-color: #fce4ec; /* soft pink */
    border: 2px solid #f8bbd0; /* light rose */
    border-radius: 12px;
    width: 60%;
    margin: 100px auto;
    padding: 40px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    text-align: center;
  }

  .message-box p {
    font-size: 20px;
    color: #880e4f; /* dark pink */
    margin-bottom: 30px;
  }

  .message-box a {
    padding: 12px 25px;
    background-color: #d81b60; /* deep pink */
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-weight: bold;
    transition: background-color 0.3s ease;
  }

  .message-box a:hover {
    background-color: #ad1457; /* darker on hover */
  }
</style>
</head>
<body>

<%
	Connection con = DBConnect.Connect();
	int uid = GetSet.getUid();
	PreparedStatement pstm = con.prepareStatement("select * from users where uid = ? ");
	pstm.setInt(1, uid);
	ResultSet Rs = pstm.executeQuery();

	String Name = "";
	if (Rs.next()) {
		Name = Rs.getString(2);
	}
%>

<div class="message-box">
    <p>Thank you <strong><%= Name %></strong> for submitting your alert. Our police team will reach out to you shortly.</p>
    <a href="User_Dashboard.jsp?uname=<%=Name%>">Back to Dashboard</a>
</div>

</body>
</html>
