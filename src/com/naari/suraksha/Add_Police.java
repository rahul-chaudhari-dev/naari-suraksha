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
 * Servlet implementation class Add_Police
 */
public class Add_Police extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Police() {
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
		String Name = request.getParameter("pusername");
		String Station = request.getParameter("pstation");
		String Contact = request.getParameter("pcontact");
		String Email = request.getParameter("pemail");
		String password = request.getParameter("ppassword");
		
		try {
			PreparedStatement pstm =con.prepareStatement("insert into police values(?,?,?,?,?,?)");
			pstm.setInt(1, id);
			pstm.setString(2, Name);
			pstm.setString(3, Station);
			pstm.setString(4, Contact);
			pstm.setString(5, Email);
			pstm.setString(6, password);
			int i = pstm.executeUpdate();
			if (i > 0)
			{
				System.out.println("Police Inserted Successfully");
				response.sendRedirect("Admin_Dashboard.html");
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		doGet(request, response);
	}

}
