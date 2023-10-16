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
public class watch_list extends HttpServlet {

   Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out= resp.getWriter();
        HttpSession session=req.getSession();
        String id = req.getParameter("id"); 
       String event = req.getParameter("submit");
        
        
        out.println(id); 
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        ResultSet rs=null;
        out.println(result);
                
        
        if(event.equals("Delete"))
        {
            if(id.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("<script type=\"text/javascript\">");
                   out.println("alert('Some Fields Are Empty');     ");
                   out.println("location='user_signup.jsp';  ");
                   out.println("</script>               ");
            }
            else
            {
                try
                {     
                    String sql = "delete from admin_assistant where id = '"+id+"' ";
                    String delete = db.delete(sql);
                    out.println(delete);
                    
                   resp.setContentType("text/html");
                   out.println("<script type=\"text/javascript\">");
                   out.println("alert('Product Deleted successfully');     ");
                   out.println("location='watch_list.jsp';  ");
                   out.println("</script>               ");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
        
        if(event.equals("Bookings"))
        {
            session.setAttribute("id",id);
            resp.sendRedirect("bookings_admin2.jsp");
        }
        
    }
    

}