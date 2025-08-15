package com.naari.suraksha;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;
import com.naari.suraksha.DBConnect;

/**
 * Servlet implementation class Message
 */
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Message() {
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
		
		String aid = request.getParameter("aid");
		String remarks = request.getParameter("remarks"+aid);
		System.out.println(aid);
		System.out.println(remarks);
		
		try {
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement("update alerts set message = ? where aid = ?");
			pstm.setString(1, remarks);          // set message
		    pstm.setInt(2, Integer.parseInt(aid));
		    
		    int rowsUpdated = pstm.executeUpdate(); // returns number of rows affected

		    if (rowsUpdated > 0) {
		        System.out.println("Reply submitted successfully for AID: " + aid);
		        response.sendRedirect("Police.jsp");
		    } else {
		        System.out.println(" No record found for AID: " + aid);
		    }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
