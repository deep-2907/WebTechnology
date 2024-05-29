package Assignment;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Crud")
public class Crud extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = res.getWriter();
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String email=req.getParameter("email");
		String contact=req.getParameter("mobile");
		String gender=req.getParameter("gender");
		String pwd=req.getParameter("password");
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");		
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crm","root","123456");

	PreparedStatement pt=con.prepareStatement("insert into reg values (?,?,?,?,?,?)");
		pt.setString(1, fname);
		pt.setString(2, lname);
		pt.setString(3, email);
		pt.setString(4, contact);
		pt.setString(5, gender);
		pt.setString(6, pwd);

		
	int	 count =  pt.executeUpdate();
	if(count>0) {
	   HttpSession  s= req.getSession();
	   s.setAttribute("msg","Register successfully");
	   Thread t1 = new Thread();
	   t1.sleep(3000);
	   RequestDispatcher rd=req.getRequestDispatcher("/Login.jsp");
		rd.forward(req, res);
	   
	}else {
//		HttpSession  s= req.getSession();
		   
		   RequestDispatcher rd=req.getRequestDispatcher("/Ragistration.jsp");
			rd.include(req, res);
	}
	/*
	 * Statement st=con.createStatement(); PreparedStatement
	 * p=con.prepareStatement("select * from customers");
	 */

	  


		
    } catch ( Exception e) {
	res.setContentType("text/html");
	out.print("<h2> Exception occured:"+e.getMessage() +"<h2/>");
	
	RequestDispatcher rd=req.getRequestDispatcher("/Ragistration.jsp");
	rd.include(req, res);		
	
    }
		
		
		
	}
	

}
