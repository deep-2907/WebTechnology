package com.tcs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Home() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			PrintWriter out = response.getWriter();
		    String pn =request.getParameter("productName");
			String pc =request.getParameter("productCategory");
			String pm =request.getParameter("productModel");
			String pr =request.getParameter("price");
			String pd =request.getParameter("productDescription");
	

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epm","root","123456");
		PreparedStatement pt=con.prepareStatement("insert into product values (?,?,?,?,?)");
			pt.setString(1, pn);
			pt.setString(2, pc);
			pt.setString(3, pm);
			pt.setString(4, pr);
			pt.setString(5, pd);

		int	 count =  pt.executeUpdate();
		if(count>0) {
			
			   RequestDispatcher rd=request.getRequestDispatcher("/AddProduct.jsp");
	                          	 rd.include(request, response);
	                          	 out.println("Data Added");
		}
		
			}catch ( Exception e) {
			
				out.println(e);
			
	
		    }
			
	}
	
}

