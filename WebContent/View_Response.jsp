<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Alert Responses</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #ffd6de, #ffe6eb);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        padding: 20px;
    }

    .container {
        background: #ffd6de;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.15);
        width: 90%;
        max-width: 1000px;
        overflow-x: auto;
    }

    h2 {
        color: #c21807;
        font-size: 28px;
        text-align: center;
        margin-bottom: 25px;
        font-weight: bold;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        font-size: 16px;
        text-align: left;
    }

    th, td {
        padding: 12px;
        border: 1px solid #ff5c8a;
    }

    th {
        background-color: #c21807;
        color: white;
        font-size: 18px;
    }

    tr:nth-child(even) {
        background-color: #ffe6eb;
    }

    tr:hover {
        background-color: #ffccd5;
    }
</style>
</head>
<body>

<div class="container">
    <h2>My Alert Responses</h2>

    <%
        Connection con = DBConnect.Connect();
        int uid = GetSet.getUid();  // This must be previously set after login
        PreparedStatement pstm = con.prepareStatement("SELECT * FROM alerts WHERE uid = ?");
        pstm.setInt(1, uid);
        ResultSet rs = pstm.executeQuery();
    %>

    <table>
        <tr>
            <th>AID</th>
            <th>UID</th>
            <th>Location</th>
            <th>Type</th>
            <th>Description</th>
            <th>Date</th>
            <th>Status</th>
            <th>Reply</th>
        </tr>

        <% while(rs.next()) { %>
        <tr>
            <td><%= rs.getInt("aid") %></td>
            <td><%= rs.getInt("uid") %></td>
            <td><%= rs.getString("location") %></td>
            <td><%= rs.getString("alertType") %></td>
            <td><%= rs.getString("description") %></td>
            <td><%= rs.getString("date") %></td>
            <td><%= rs.getString("status") %></td>
            <td><%= rs.getString("message") %></td>
        </tr>
        <% } %>
    </table>
</div>

</body>
</html>
