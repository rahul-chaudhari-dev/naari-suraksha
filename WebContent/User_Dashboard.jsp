<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>User Dashboard</title>

  <!-- Font Awesome CDN -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    integrity="sha512-yHcMeYemLQhWm4HGuFgLbrM8YuHkEYqO7+uKwD6nE9Wh6IPAZUqK6Z2cDGRbUNyoLZ5BoYpUnb7KkCgkF+0z1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(135deg, #ffe3ec, #f8bbd0);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .dashboard {
      background: rgba(255, 255, 255, 0.15);
      padding: 40px 50px;
      border-radius: 18px;
      box-shadow: 0 8px 25px rgba(183, 28, 28, 0.2);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      width: 100%;
      max-width: 500px;
      text-align: center;
      border: 2px solid rgba(248, 187, 208, 0.6);
    }

    .dashboard img {
      width: 80px;
      height: 80px;
      margin-bottom: 20px;
    }

    h1 {
      color: #b71c1c;
      margin-bottom: 30px;
    }

    a {
      display: block;
      background-color: #d32f2f;
      color: white;
      text-decoration: none;
      padding: 12px;
      margin: 10px 0;
      border-radius: 10px;
      font-size: 16px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #b71c1c;
    }

    i {
      margin-right: 8px;
    }
  </style>
</head>
<body>
	<%
    String name = request.getParameter("uname");
	
    %>
  <div class="dashboard">
    <!-- Optional user icon -->
    <img src="https://cdn-icons-png.flaticon.com/512/847/847969.png" alt="User Icon">
    
    <h1>Welcome, <%=name %>!!</h1>

    <a href="Send_Alert.html"><i class="fas fa-exclamation-triangle"></i>Submit New Alert</a>
    <a href="View_Response.jsp"><i class="fas fa-bell"></i>View My Alerts</a>
    <a href="Change_Password.html"><i class="fas fa-user-edit"></i>Change Password</a>
    
  </div>

</body>
</html>
