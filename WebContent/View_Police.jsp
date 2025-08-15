<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Police</title>
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #0f0c29, #302b63, #2575fc);
	background-size: cover;
	background-attachment: fixed;
	position: relative;
	/* Removed vertical centering, only horizontal center */
	display: flex;
	justify-content: center;
	align-items: flex-start; /* Align to top */
	min-height: 100vh;
	padding-top: 40px; /* Space from top */
}

body::before {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: inherit;
	filter: blur(2px);
	z-index: -2;
}

body::after {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(255, 255, 255, 0.01);
	background-image:
		url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8Xw8AAocB9WEpA7IAAAAASUVORK5CYII=');
	z-index: -1;
}

.table-container {
	background: #f9f9ff;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
	width: 90%;
	max-width: 1000px;
	margin: 0 auto; /* Horizontal center */
}

h2 {
	text-align: center;
	color: #2a2a8f;
	margin-bottom: 20px;
	font-size: 28px;
}

table {
	width: 100%;
	border-collapse: collapse;
	font-size: 18px;
}

th, td {
	padding: 14px 18px;
	text-align: center;
}

th {
	background-color: #2a2a8f;
	color: white;
	text-transform: uppercase;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
	transition: background 0.3s ease;
}

a {
	color: #2575fc;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="table-container">
		<h2>Registered Police</h2>

		<%
			Connection con = DBConnect.Connect();
			PreparedStatement pstm = con.prepareStatement("select * from police");
			ResultSet rs = pstm.executeQuery();
		%>

		<table>
			<tr>
				<th>PID</th>
				<th>Name</th>
				<th>Station</th>
				<th>Contact</th>
				<th>Email</th>
				<th>Password</th>
				<th>Delete</th>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><a href="Delete_Police.jsp?pid=<%=rs.getInt(1)%>">Delete</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>
