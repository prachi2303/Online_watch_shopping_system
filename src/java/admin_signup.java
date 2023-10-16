/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PRACHI
 */
public class admin_signup extends HttpServlet {

     Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out= resp.getWriter();
        
        String admin_name = req.getParameter("admin_name");
        String mobile_no = req.getParameter("mobile_no");
        String city = req.getParameter("city");
        String email_id = req.getParameter("email_id");
        String user_name = req.getParameter("user_name");
        String password = req.getParameter("password");
        String conform_password = req.getParameter("conform_password");
        String event = req.getParameter("submit");
         
        
        out.println(admin_name);
        out.println(mobile_no);
        out.println(city);
        out.println(email_id);
        out.println(user_name);
        out.println(password);
        out.println(conform_password);
        out.println(event);
        
       
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        
        
         if(event.equals("SIGNUP"))
        {
            if(admin_name.equals("")||mobile_no.equals("")||city.equals("")||email_id.equals("")||user_name.equals("")||password.equals("")||conform_password.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='user_address.jsp';  ");
                    out.println("   </script>               ");
            }
            else
            {
                try
                {
                    String sql = "insert into admin_signup(admin_name,mobile_no,city,email_id,user_name,password,conform_password)values('"+admin_name+"','"+mobile_no+"','"+city+"','"+email_id+"','"+user_name+"','"+password+"','"+conform_password+"')";
                      String Insert = db.Insert(sql);
                        out.println(Insert);
                        resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Record inserted successfully');     ");
                   out.println("   location='admin_login.jsp';  ");
                   out.println("   </script>               ");
     
                        
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }

        
    }

}
       
     
    

    
    
    
    
