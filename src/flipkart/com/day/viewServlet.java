package flipkart.com.day;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
 import java.text.SimpleDateFormat;
 import java.text.DateFormat;
 import java.io.OutputStream;
 import java.io.FileOutputStream;
 import java.io.File;
 import java.io.InputStream;
import java.io.*;
 import javax.naming.InitialContext;
 import javax.naming.Context;
 import java.util.*;
 import java.util.Map;
 import javax.sql.DataSource;
 import java.sql.* ;
 import org.json.* ;
import javax.servlet.*;
 import org.json.JSONObject;
 import org.json.JSONArray;

/**
 * Created by surya.kumar on 28/10/15.
 */
@WebServlet(name = "httpServlet")
public class viewServlet extends javax.servlet.http.HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {

            Map<String, Object> hash = new HashMap<String, Object>();
            ArrayList<String> al = new ArrayList<String>();
            String s=  request.getParameter("pincode");
            String[] strArray = s.split(",");
            for(int i=0;i<strArray.length;i++){
                al.add("\""+strArray[i]+"\"");
            }
            System.out.println(al);


            hash.put( "pincodes", al);
            hash.put( "name",  request.getParameter("reason"));
            hash.put( "type",  request.getParameter("htype"));
            hash.put("date", request.getParameter("date"));
            hash.put("user_name", "surya.kumar");
//            hash.put("user_name", request.getRemoteUser());
            JSONObject json=new JSONObject(hash);


            client c=new client();

            String chkmsg=c.add(json);
            request.setAttribute("fres", chkmsg);
            RequestDispatcher view = request.getRequestDispatcher("view.jsp");
            view.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
            JSONObject jstat = new JSONObject();
            JSONObject jres = new JSONObject();
            JSONObject jout = new JSONObject();
            jstat.put("statusCode", "1");
            jstat.put("errorCode",APPERROR.APP_UNKNOW_ERROR);
            jstat.put("errorMessage",APPERROR.APP_UNKNOW_ERROR_DESC);
            jres.put("status", jstat);
            jout.put("result", jres);
            out.println( jout.toString());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try {

            client c=new client();

            String chkmsg=c.view();
            request.setAttribute("fres", chkmsg);
            RequestDispatcher view = request.getRequestDispatcher("view.jsp");
            view.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
            JSONObject jstat = new JSONObject();
            JSONObject jres = new JSONObject();
            JSONObject jout = new JSONObject();
            jstat.put("statusCode", "1");
            jstat.put("errorCode",APPERROR.APP_UNKNOW_ERROR);
            jstat.put("errorMessage",APPERROR.APP_UNKNOW_ERROR_DESC);
            jres.put("status", jstat);
            jout.put("result", jres);
            out.println( jout.toString());
        }


    }
}
