package backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import backend.ConnectionDB;

@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String email=request.getParameter("username");
			String password=request.getParameter("password");
			PrintWriter out = response.getWriter();
			ConnectionDB confi = new ConnectionDB();
			String Query=" select * from studentInfo where email=? and password=?";
			PreparedStatement pst;
			ResultSet rs;
			try {
				pst=confi.Connect().prepareStatement(Query);
				pst.setString(1, email);
				pst.setString(2, password);
				rs=pst.executeQuery();
				if(rs.next())
				{
					confi.userid=rs.getString(2);
					ConnectionDB.name=rs.getString(1);
					int userid =  rs.getInt(2);
					String fullname= rs.getString(1);
					int age=rs.getInt(5);
					String gender= rs.getString(6);
					String branch= rs.getString(7);
					String skill= rs.getString(8);
					response.sendRedirect("success.jsp");
					HttpSession session = request.getSession();
					session.setAttribute("userid", userid);
					session.setAttribute("email", email);
					session.setAttribute("fullname", fullname);
					session.setAttribute("age", age);
					session.setAttribute("gender", gender);
					session.setAttribute("branch", branch);
					session.setAttribute("skill", skill);
					
					
				}
				else
				{
					out.print("try again");
				}
			}
			catch(Exception e)
			{
				out.print(e);	
			}
	}

}
