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
import com.naari.suraksha.GetSet;

/**
 * Servlet implementation class Send_Alert
 */
public class Send_Alert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Send_Alert() {
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
		int uid = GetSet.getUid();
		String location = request.getParameter("location");
		String alert_type = request.getParameter("alert_type");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		String status = "Pending";
		String Message = "Yet To Reply";
		
	
		
     		try {
				PreparedStatement pstm = con.prepareStatement("insert into alerts values(?,?,?,?,?,?,?,?)");
				pstm.setInt(1, id);
				pstm.setInt(2, uid);
				pstm.setString(3, location);
				pstm.setString(4, alert_type);
				pstm.setString(5, description);
			    pstm.setString(6, date);
			    pstm.setString(7, status);
			    pstm.setString(8, Message);
			    int i = pstm.executeUpdate();
				
				if (i > 0)
				{
//					response.sendRedirect("User_Dashboard.jsp");
					response.sendRedirect("Message.jsp");
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		doGet(request, response);
	}

}
