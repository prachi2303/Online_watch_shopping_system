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
import javax.servlet.http.HttpSession;

/**
 *
 * @author PRACHI
 */
public class booking_page extends HttpServlet {

    
    Connection cn = null;
     Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        
        PrintWriter out= resp.getWriter();
        HttpSession session=req.getSession();
        String id = req.getParameter("id");
        String watch_name = req.getParameter("watch_name");
        String color = req.getParameter("color");
        String price = req.getParameter("price");
        String features = req.getParameter("features");
        String date = req.getParameter("date");
        String select_image = req.getParameter("select_image");
        String quantity = req.getParameter("quantity");
        String total = req.getParameter("total");
        String event = req.getParameter("submit");
        
       
        
        
        out.println(watch_name);
        out.println(color);
        out.println(price);
        out.println(features);
        out.println(event);
        
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);

        if(event.equals("Add To Cart"))
        {
            if(watch_name.equals("")||color.equals("")||price.equals("")||features.equals(""))
            {
                out.println("some fieldsare empty");
            }
            else
            {
                try
                {
                    String sql = "insert into add_to_cart(user_id, watch_id, watch_name, features, select_image, price, color, date)values('"+session.getAttribute("user_id")+"','"+id+"','"+watch_name+"','"+features+"','"+select_image+"','"+price+"','"+color+"','"+date+"')";
                    String Insert = db.Insert(sql);
                    out.println(Insert);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">");
                    out.println("   alert('record inserted successfully');     ");
                    out.println("   location='add_to_cart.jsp';  ");
                    out.println("   </script>               ");
                        
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">");
                    out.println("   alert('"+ex.toString()+"');     ");
                    out.println("   location='add_to_cart.jsp';  ");
                    out.println("   </script>               ");
                }
            }
        }
        
        
        if(event.equals("Buy Now"))
        {
            try
            {
  
                session.setAttribute("id", id);
                session.setAttribute("watch_name", watch_name);
                session.setAttribute("color", color);
                session.setAttribute("price", price);
                session.setAttribute("features", features);
                session.setAttribute("date", date);
                session.setAttribute("select_image", select_image);
                session.setAttribute("quantity", quantity);
                session.setAttribute("total", total);
                
                resp.sendRedirect("user_address.jsp");
                
            }
            catch(Exception ex)
            {
                out.println(ex.toString());
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('"+ex.toString()+"');     ");
                out.println("   location='add_to_cart.jsp';  ");
                out.println("   </script>               ");
            }
        }

        
         
    }
    }

    
