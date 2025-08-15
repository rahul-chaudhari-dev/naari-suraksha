package com.naari.suraksha;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naari.suraksha.DBConnect;

/**
 * Servlet implementation class User_Registration
 */
public class User_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Registration() {
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
		int id = 0;
		String name = request.getParameter("username");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			PreparedStatement pstm = con.prepareStatement("insert into users values (?,?,?,?,?,?)");
			pstm.setInt(1, id);
			pstm.setString(2, name);
			pstm.setString(3, contact);
			pstm.setString(4, address);
			pstm.setString(5, email);
			pstm.setString(6, password);
			int i = pstm.executeUpdate();
			
			if (i > 0) 
			{
				System.out.println("Data Inserted Successfully");
				response.sendRedirect("User.html");
			}
					
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
