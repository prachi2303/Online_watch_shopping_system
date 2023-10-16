





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
public class admin_assistant extends HttpServlet {
    
     Connection cn = null;
     Statement st = null;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out= resp.getWriter();
        
        String watch_name = req.getParameter("watch_name");
        String features = req.getParameter("features"); 
        String select_image = req.getParameter("select_image");
        String color = req.getParameter("color");
        String price = req.getParameter("price");
        String date= req.getParameter("date");
        String event = req.getParameter("submit");
       
        
        
        out.println(watch_name);
        out.println(features); 
        out.println(select_image);
        out.println(price);
        out.println(color);
        out.println(date);
        out.println(event);

        
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
       
        
        if(event.equals("Add Watches"))
        {
            if(watch_name.equals("")||features.equals("")||select_image.equals("")||color.equals("")||price.equals("")||date.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='admin_assistant.jsp';  ");
                   out.println("   </script>               ");
            }
            else
            {
                try
                {
                    String sql = "insert into admin_assistant(watch_name, features,launch_date, select_image, price, color, date)values('"+watch_name+"','"+date+"','"+features+"','"+select_image+"','"+price +"','"+color+"','"+date+"')";
                    String Insert = db.Insert(sql);
                    out.println(Insert);
                   
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Watch inserted successfully');     ");
                   out.println("   location='home_page.jsp';  ");
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
              resp.sendRedirect("admin_home.jsp");
          }
          
    }

}
        
        
        
        
        
        
        
        
   

    
    
    
