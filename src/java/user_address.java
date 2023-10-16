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
public class user_address extends HttpServlet {

     Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
         PrintWriter out= resp.getWriter();
        
         
        String name = req.getParameter("name"); 
        String contact = req.getParameter("contact");
        String line_no_1 = req.getParameter("lane_no_1");
        String pin_code = req.getParameter("pin_code");
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String event = req.getParameter("submit");
       
        
        
        out.println(name);
        out.println(contact);
        out.println(line_no_1);
        out.println(pin_code);
        out.println(city);
        out.println(state);
        out.println(event);
        
         Database db = new Database();
        String result = db.Connectdb();
        out.println(result);

        if(event.equals("Submit"))
        {
            if(name.equals("")||contact.equals("")||line_no_1.equals("")||pin_code.equals("")||city.equals("")||state.equals(""))
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
                    String sql = "insert into address(name,contact, line_no_1, pincode, city, state)values('"+name+"','"+contact+"','"+line_no_1+"','"+pin_code+"','"+ city+"','"+state+"')";
                    String Insert = db.Insert(sql);
                    out.println(Insert);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">");
                    out.println("   alert('Record inserted successfully');     ");
                    out.println("   location='user_payment.jsp';  ");
                    out.println("   </script>               ");
     
                        
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
                
            }
        }

      else  if(event.equals("Cancel"))
          {
              resp.sendRedirect("booking_page.jsp");
          }
          
      }

    }
        
        
        
        
        
        
        
        
        
        
        
    
    


    
   
    
