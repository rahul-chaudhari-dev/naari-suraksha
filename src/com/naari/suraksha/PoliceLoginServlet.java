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

/**
 * Servlet implementation class PoliceLoginServlet
 */
public class PoliceLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoliceLoginServlet() {
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
			PreparedStatement pstm = con.prepareStatement("select * from police where pemail = ? and ppassword = ?");
			pstm.setString(1,Email );
			pstm.setString(2,Password );
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()){
				response.sendRedirect("Police.jsp");
			}
			else {
				response.sendRedirect("Error.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	
	}

}
