package Assignment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Data
 */
@WebServlet("/Data")
public class Data extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Fname=request.getParameter("Fname");
		String Lname=request.getParameter("Lname");
		String  Email=request.getParameter("email");
		String Number=request.getParameter("mobile");
		String Gender=request.getParameter("Gender");
		String Password=request.getParameter("password");

		PrintWriter out=response.getWriter();

		HttpSession session = request.getSession();
		session.setAttribute("Fname", Fname);
		session.setAttribute("Lname", Lname);
		session.setAttribute("Email", Email);
		session.setAttribute("Number", Number);
		session.setAttribute("Gender", Gender);
		session.setAttribute("Password", Password);
		
		  response.setContentType("text/html");
		out.println("First Name:" +Fname);
		out.println("Last Name :" +Lname);
		out.println("Email :" +Email);
		out.println( "Phone :" + Number);
		out.println("Gender :" +Gender);
		out.println("Password :" +Password);
		
	
		out.println("<a href='Assignment4jsp.jsp'> assignment</a>");
		}

}
