package backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class replyServlet
 */
@WebServlet("/replyServlet")
public class replyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ConnectionDB confi = new ConnectionDB();
		HttpSession session = request.getSession();
		int userid = (int)session.getAttribute("userid");
		String post_no=request.getParameter("pid");
		String reply=request.getParameter("reply");
		System.out.println("connection establish");
		Connection conn=null;
		String query="insert into reply(userid,post_no,reply) values(?,?,?)";
		PreparedStatement stmt=null;
		RequestDispatcher dispatcher=null;
		int status;
		try {
			conn = confi.Connect();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1,userid);
			stmt.setString(2, post_no);
			stmt.setString(3, reply);
			status=stmt.executeUpdate();
			if(status>0)
			{
				dispatcher= request.getRequestDispatcher("post.jsp");
				request.setAttribute("status", "success");
				dispatcher.forward(request, response);
			}
			else 
			{
				dispatcher= request.getRequestDispatcher("post.jsp");
				request.setAttribute("status", "failed");
				dispatcher.forward(request, response);
			}
			
			
			
		}catch (Exception e) {
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
