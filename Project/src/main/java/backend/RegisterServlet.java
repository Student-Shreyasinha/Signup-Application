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
import backend.ConnectionDB;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ConnectionDB confi = new ConnectionDB();
		System.out.println("connection establish");
		Connection conn=null;
		
		String userid=request.getParameter("userid");
		String fullname=request.getParameter("fullname");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String branch=request.getParameter("branch");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String java=request.getParameter("java");
		String python=request.getParameter("python");
		String c=request.getParameter("c");
		String jsp=request.getParameter("jsp");
		String skill = java+ "," + python+ "," + c + "," +jsp;
		String query="insert into studentInfo(userid,Name,age,gender,branch,email,password,skill) values(?,?,?,?,?,?,?,?)";
		PreparedStatement stmt=null;
		RequestDispatcher dispatcher=null;
		int status;
		try {
			conn = confi.Connect();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1,Integer.parseInt(userid));
			stmt.setString(2, fullname);
			stmt.setInt(3, Integer.parseInt(age));
			stmt.setString(4, gender);
			stmt.setString(5, branch);
			stmt.setString(6, email);
			stmt.setString(7, password);
			stmt.setString(8, skill);
			status=stmt.executeUpdate();
			if(status>0)
			{
				dispatcher= request.getRequestDispatcher("Signin.jsp");
				request.setAttribute("status", "success");
				dispatcher.forward(request, response);
			}
			else 
			{
				dispatcher= request.getRequestDispatcher("Signup.jsp");
				request.setAttribute("status", "failed");
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
