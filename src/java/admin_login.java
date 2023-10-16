/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PRACHI
 */
public class admin_login extends HttpServlet {

      Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out= resp.getWriter();
        HttpSession session=req.getSession();
        String username = req.getParameter("username");
       
        String password = req.getParameter("password");
         String event = req.getParameter("submit");
       
       
        
        
        out.println(username);
        
        out.println(password);
       
        
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
         if(event.equals("LOGIN"))
        {
            if( username.equals("")||password.equals(""))
            {
                out.println("something is empty");
            }
            else
            {
                
                try
                {
                     Class.forName("com.mysql.jdbc.Driver");
                     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_watch_shopping_system","root","root");
                     Statement st = cn.createStatement(); 
                     String sql="select * from  admin_signup where user_name= '"+username+"' && password='"+password+"' ";
                     ResultSet rs= st.executeQuery(sql);
                        
                      if(rs.next())
                      {
                          
                          session.setAttribute("user_name", rs.getString("user_name"));
                          session.setAttribute("password", rs.getString("password"));
                          session.setAttribute("user_id", rs.getString("id"));
                          
                          
                          resp.sendRedirect("admin_home.jsp");
                      }
                      else
                      {
                          out.print("Login Failed");
                      }
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }

        
        
    }

    
    
    
}