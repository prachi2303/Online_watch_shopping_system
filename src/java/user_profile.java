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
public class user_profile extends HttpServlet {

    
     Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out= resp.getWriter();
        
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String contact = req.getParameter("contact");
        String email_id = req.getParameter("email_id");
        String address = req.getParameter("address");
        String pincode = req.getParameter("pincode");
        String event = req.getParameter("submit");
        
        
        out.println(name);
        out.println(surname);
        out.println(contact);
        out.println(email_id);
        out.println(address);
        out.println(pincode);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
       
        
         if(event.equals("Save Profile"))
        {
            if(name.equals("")||surname.equals("")||contact.equals("")||email_id.equals("")||address.equals("")||pincode.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='user_profile.jsp';  ");
                   out.println("   </script>               ");
            }
            else
            {
                try
                {
                    String sql = "insert into user_profile(name,surname,contact,email_id,address,pincode)values('"+name+"','"+surname+"','"+contact+"','"+email_id+"','"+address+"','"+pincode+"')";
                      String Insert = db.Insert(sql);
                        out.println(Insert);
                        resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Record Inserted Successfully');     ");
                   out.println("   location='home_page.jsp';  ");
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