/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class user_signup extends HttpServlet {

     Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out= resp.getWriter();
        HttpSession session=req.getSession();
        String first_name = req.getParameter("first_name");
        String last_name = req.getParameter("last_name");
        String address = req.getParameter("address");
        String email_id = req.getParameter("email_id");
        String contact = req.getParameter("contact");
        String user_name = req.getParameter("user_name");
        String password = req.getParameter("password");
        String conform_password = req.getParameter("conform_password");
       String event = req.getParameter("submit");
        
        
        out.println(first_name);
        out.println(last_name);
        out.println(address);
        out.println(email_id);
        out.println(contact);
        out.println(user_name);
        out.println(password);
        out.println(conform_password);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        ResultSet rs=null;
        out.println(result);
                
        
        if(event.equals("SIGNUP"))
        {
            if(first_name.equals("")||last_name.equals("")||address.equals("")||email_id.equals("")||contact.equals("")||user_name.equals("")||password.equals("")||conform_password.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='user_signup.jsp';  ");
                   out.println("   </script>               ");
            }
            else
            {
                try
                {     
                    String sql = "insert into user_signup(first_name,last_name,address,email_id,contact,user_name,password,conform_password)values('"+first_name+"','"+last_name+"','"+address+"','"+email_id+"','"+contact+"','"+user_name+"','"+password+"','"+conform_password+"')";
                    String Insert = db.Insert(sql);
                    out.println(Insert);
                    
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Record inserted successfully');     ");
                   out.println("   location='user_login.jsp';  ");
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