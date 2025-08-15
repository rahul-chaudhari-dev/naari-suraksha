<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.naari.suraksha.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Police Dashboard</title>

<!-- Font Awesome -->
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #ffffff;
}

/* Top banner */
.header {
    background-color: #21257F;
    color: white;
    text-align: center;
    padding: 40px 20px;
}

.header i {
    font-size: 50px;
    display: block;
    margin-bottom: 10px;
}

.main-content {
    padding: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
}

th, td {
    padding: 12px;
    text-align: center;
    border: 1px solid #f2f2f2;
}

th {
    background-color: #c62828;
    color: white;
}

tr:nth-child(even) {
    background-color: #ffeaea;
}

.button {
    padding: 8px 14px;
    border-radius: 6px;
    text-decoration: none;
    font-weight: bold;
    display: inline-block;
}

.approve {
    background-color: #2e7d32;
    color: white;
}

.reject {
    background-color: #c62828;
    color: white;
    margin-top: 5px;
}

/* Styled input inside table */
input[type="text"] {
    padding: 6px 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 18px;
    width: 150px;
}

input[type="text"]:focus {
    outline: none;
    border-color: #21257F;
    box-shadow: 0 0 5px rgba(33, 37, 127, 0.5);
}

input[type="submit"] {
    background-color: #c62828;
    color: white;
    border: none;
    padding: 6px 12px;
    border-radius: 5px;
    cursor: pointer;
}
</style>
</head>
<body>

    <!-- Top Header -->
    <div class="header">
        <i class="fas fa-user-shield"></i>
        <h2>Monitoring Public Safety</h2>
    </div>

    <!-- Main content -->
    <div class="main-content">
    <h2 style="color: #c62828; text-align: center;">Submitted Alerts</h2>

        <table>
            <tr>
                <th>UID</th>
                <th>Location</th>
                <th>Type</th>
                <th>Description</th>
                <th>Date</th>
                <th>Status</th>
                <th>Response</th>
                <th>Reply</th>
            </tr>

            <%
                Connection con = DBConnect.Connect();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM alerts");
                ResultSet rs = pstm.executeQuery();
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td>
                    <a href="Approve.jsp?aid=<%=rs.getInt(1)%>" class="button approve">Approve</a>
                    <br>
                    <a href="Reject.jsp?aid=<%=rs.getInt(1)%>" class="button reject">Reject</a>
                </td>
                <td>
                    <form action="Message" method="post" onsubmit="removeRow(this)">
                        <input type="hidden" name="aid" value="<%=rs.getInt(1)%>">
                        <input type="text" name="remarks<%=rs.getInt(1)%>">
                        <input type="submit" value="Submit">
                    </form>
                </td>
                
            </tr>
            <%
                }
            %>
        
        </table>
    </div>

  
</body>
</html>
