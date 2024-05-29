package Assignment;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Assignment_1 implements Servlet {

	 private ServletConfig config;

    public void init(ServletConfig config){
        this.config=config;
    }
 
    public void service(ServletRequest request, ServletResponse response){
   
        String username=config.getInitParameter("username"); 
        String password=config.getInitParameter("password"); 
        System.out.println(username);
        System.out.println(password);
 
    }
 
    public void destroy(){
 
    }
 
    public ServletConfig getServletConfig(){
        return config;
    }
 
    public String getServletInfo(){
        return this.getClass().getName();
    }
}
