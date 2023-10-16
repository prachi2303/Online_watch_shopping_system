/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PRACHI
 */
@WebServlet(name = "user_payment", urlPatterns = {"/user_payment"})
public class user_payment extends HttpServlet {

    Connection cn = null;
     Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out= resp.getWriter();
         HttpSession session = req.getSession();
        
        String name = req.getParameter("name");
        String phone_no = req.getParameter("phone_no");
        String amount = req.getParameter("amount");
        String payment_method = req.getParameter("payment_method");
        String card_no = req.getParameter("card_no");
         String event = req.getParameter("submit");     
        
        out.println(name);
        out.println(phone_no);
        out.println(amount);
        out.println(payment_method);
        out.println(card_no);
        out.println(event);     
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
       
         
         if(event.equals("Pay Now"))
        {
            if(name.equals("")||phone_no.equals("")||amount.equals("")||payment_method.equals("")||card_no.equals(""))
            {
                 out.println("some fields are empty");     
            }
            else
            {
                try
                {
                   String sql = "insert into user_payment(user_id, name, phone_no, amount, payment_method, card_no) values('"+session.getAttribute("user_id")+"','"+name+"','"+phone_no+"','"+amount+"','"+payment_method+"','"+card_no+"')";
                   String Insert = db.Insert(sql);
                   out.println(Insert);
 
                   String sql1 = "insert into my_orders (user_id, watch_id, watch_name, features, select_image, price, color, date, quantity, total, delivery_date, order_status) values ('"+session.getAttribute("user_id")+"', '"+session.getAttribute("id") +"', '"+session.getAttribute("watch_name") +"' ,'"+session.getAttribute("features") +"', '"+session.getAttribute("select_image") +"','"+session.getAttribute("price") +"', '"+session.getAttribute("color") +"',   '"+session.getAttribute("date") +"', '"+session.getAttribute("quantity") +"', '"+session.getAttribute("total") +"', '"+session.getAttribute("date") +"', 'Pending')";
                   String Insert1 = db.Insert(sql1);
                   out.println(Insert1);
                   
                   
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">");
                   out.println("   alert('payment susssesfully');");
                   out.println("   location='my_orders.jsp';  ");
                   out.println("   </script>               ");
                        
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
                if(event.equals("Cancel"))
          {
              resp.sendRedirect("user_address.jsp");
          }
            }
        }

         
    }

    
}