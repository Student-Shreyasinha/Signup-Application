package backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import backend.ConnectionDB;

@WebServlet("/OpenForumServlet")
public class OpenForumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ConnectionDB confi = new ConnectionDB();
		HttpSession session = request.getSession();
		int userid = (int)session.getAttribute("userid");
		System.out.println("connection establish");
		Connection conn=null;
		String query="insert into comments(userid,comments) values(?,?)";
		
		PreparedStatement stmt=null;
		RequestDispatcher dispatcher=null;
		String post=request.getParameter("post");
		int status;
		try {
			conn = confi.Connect();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1,userid);
			stmt.setString(2, post);
			status=stmt.executeUpdate();
			if(status>0)
			{
				dispatcher= request.getRequestDispatcher("OpenForum.jsp");
				request.setAttribute("status", "success");
				dispatcher.forward(request, response);
			}	
		}
		catch (Exception e) {
			out.print(e);		
		}
		finally {
			try 
			{
				if(stmt!=null)
					stmt.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		
		
		
	}
	
	
	}

