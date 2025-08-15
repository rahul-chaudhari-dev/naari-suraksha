package com.naari.suraksha;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naari.suraksha.DBConnect;
import com.naari.suraksha.GetSet;

/**
 * Servlet implementation class User_Login
 */
public class User_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con = DBConnect.Connect();
		
		
		String Email =request.getParameter("email");
		String Password =request.getParameter("password");
		
		try {
			PreparedStatement pstm = con.prepareStatement("select * from users where uemail = ? and upassword = ?");
			pstm.setString(1,Email);
			pstm.setString(2,Password);
			ResultSet rs = pstm.executeQuery();
			
			if (rs.next()){
				int uid = rs.getInt(1);
				GetSet.setUid(uid);
				String Name = rs.getString(2);
				response.sendRedirect("User_Dashboard.jsp?uname="+Name);
			} else {
				response.sendRedirect("Error.html");
			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
