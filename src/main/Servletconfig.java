package com.tcs;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Servletconfig extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	 String message;

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        message = config.getInitParameter("message");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");       
      

        
        PrintWriter out = response.getWriter();
        out.println("<h1>" + message + "</h1>");
    }

  
}
