/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PRACHI
 */
public class user_listadmin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out= resp.getWriter();
        HttpSession session=req.getSession();
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String email_id = req.getParameter("email_id");
        String user_name = req.getParameter("user_name");
        String event = req.getParameter("submit");
        
        
        out.println(id);
        out.println(name);
        out.println(address);
        out.println(email_id);
        out.println(user_name);
        out.println(event);
        
        Database db = new Database();
        String result = db.Connectdb();
        ResultSet rs=null;
        out.println(result);
        
        
          if(event.equals("Remove User"))
        {
            if(id.equals("")||name.equals("")||address.equals("")||email_id.equals("")||user_name.equals(""))
            {
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('Some Fields Are Empty');     ");
                   out.println("   location='user_listadmin.jsp';  ");
                   out.println("   </script>               ");
            }
            else
            {
                try
                {     
                    String delete=db.delete("delete from user_signup where id='"+id+"'");
                    out.println(delete);
                    
                   //resp.setContentType("text/html");
                   //out.println("   <script type=\"text/javascript\">");
                   //out.println("   alert('Record inserted successfully');     ");
                   //out.println("   location='user_signup.jsp';  ");
                   //out.println("   </script>               ");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
    
    }
}