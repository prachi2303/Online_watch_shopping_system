/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PRACHI
 */
public class admin_address extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
         PrintWriter out= resp.getWriter();

        String id = req.getParameter("id");
        String user_name = req.getParameter("user_name");
        String lane_no_1 = req.getParameter("lane_no_1");
        String lane_no_2 = req.getParameter("lane_no_2");
        String pincode = req.getParameter("pincode");
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        
        String event = req.getParameter("submit");
        
       
        
        
        out.println(id);
        out.println(user_name);
        out.println(lane_no_1);
        out.println(lane_no_2);
        out.println(pincode);
        out.println(city);
        out.println(state);
        
        
        
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);

        if(event.equals("submit"))
        {
            if(id.equals("")||user_name.equals("")||lane_no_1.equals("")||lane_no_2.equals("")||pincode.equals("")||city.equals("")||state.equals(""))
            {
                out.println("some fieldsare empty");
            }
            else
            {
                try
                {
                    String sql = "insert into Admin address(id,user_name, lane_no_1,  lane_no_2, pincode,city,state)values('"+id+"','"+user_name+"','"+lane_no_1+"','"+lane_no_2+"','"+pincode+"','"+city+"','"+state+"')";
                      String Insert = db.Insert(sql);
                        out.println(Insert);
                        
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }

         
    }
    }

    
      