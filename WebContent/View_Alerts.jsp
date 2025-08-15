<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Registered Alerts</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    body {
      margin: 0;
      padding: 40px 0;
      background: linear-gradient(to bottom right, #ffd1dc, #f8bbd0);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      min-height: 100vh;
    }

    .table-container {
      background-color: #ffe6ec;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(240, 98, 146, 0.2);
      padding: 30px 40px;
      width: 95%;
      max-width: 1100px;
      overflow-x: auto;
    }

    h2 {
      text-align: center;
      color: #ad1457;
      margin-bottom: 30px;
      font-size: 28px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 14px 16px;
      text-align: left;
      border-bottom: 1px solid #e0b2c1;
      font-size: 15px;
    }

    th {
      background-color: #f8bbd0;
      color: #880e4f;
      font-size: 16px;
    }

    tr:hover {
      background-color: #fce4ec;
    }

    td {
      color: #4a0033;
    }
  </style>
</head>
<body>

<div class="table-container">
  <h2>Registered Alerts</h2>

  <%
    Connection con = DBConnect.Connect();
    PreparedStatement pstm = con.prepareStatement("SELECT * FROM alerts");
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
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getInt(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><%= rs.getString(7) %></td>
        <td><%= rs.getString(8) %></td>
      </tr>
    <% } %>
  </table>
</div>

</body>
</html>
