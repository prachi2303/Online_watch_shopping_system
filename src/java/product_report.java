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
public class product_report extends HttpServlet
{
  Connection cn=null;
  Statement  st=null;
 @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        PrintWriter out =resp.getWriter(); 
        HttpSession session = req.getSession();
        String feedback = req.getParameter("feedback");
        String event = req.getParameter("submit");
        
        out.println(feedback);       
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Submit"))
        {
            if(feedback.equals(""))
             {
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">");
                out.println("   alert('Some Fields Are Empty');     ");
                out.println("   location='product_report.jsp';  ");
                out.println("   </script>  ");
             } 
            else
             {
                try
                {
                   String sql= "insert into product_report(id, user_name, feedback)values('"+session.getAttribute("user_id")+"','"+session.getAttribute("user_name")+"','"+feedback+"')";
                   String Insert=db.Insert(sql);
                   out.println(Insert);
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Record Inserted Successfully');     ");
                   out.println("   location='home_page.jsp';  ");
                   out.println("   </script>  ");

                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }                 
           }    
        }
       
        
        
        if(event.equals("Cancel"))
          {
              resp.sendRedirect("home_page.jsp");
          }      
    }
}