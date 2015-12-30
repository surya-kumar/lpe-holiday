package flipkart.com.day;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URLEncoder;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;

import org.apache.http.client.methods.*;
import org.apache.http.entity.FileEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;
import org.json.JSONArray;

/**
 * Created by surya.kumar on 24/10/15.
 */
public class client {



    public static String UrlGet(String url)
    {
        try
        {

            HttpClient httpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(url);
            HttpResponse response = httpClient.execute(httpGet);
            ByteArrayOutputStream outstream = new ByteArrayOutputStream();
            response.getEntity().writeTo(outstream);
            byte[] responseBody = outstream.toByteArray();
            String sResponse = new String(responseBody);
            System.out.println("RESPONSE="+sResponse.trim());
            return sResponse;

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return "error";
        }


    }


    public static String UrlPost(String url, JSONObject json)
    {
        try
        {

            HttpClient httpClient = new DefaultHttpClient();
            HttpPost httpPost = new HttpPost(url);
            StringEntity params = new StringEntity(json.toString());
            httpPost.setHeader("Content-Type", "application/json");
            httpPost.setEntity(params);
            HttpResponse response = httpClient.execute(httpPost);
            ByteArrayOutputStream outstream = new ByteArrayOutputStream();
            response.getEntity().writeTo(outstream);
            byte[] responseBody = outstream.toByteArray();
            String sResponse = new String(responseBody);
            System.out.println("RESPONSE="+sResponse.trim());
            return sResponse;

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return "error";
        }


    }

    public static String UrlDelete(String url)
    {
        try
        {

            HttpClient httpClient = new DefaultHttpClient();
            HttpDelete httpDelete = new HttpDelete(url);
            HttpResponse response = httpClient.execute(httpDelete);
            ByteArrayOutputStream outstream = new ByteArrayOutputStream();
            response.getEntity().writeTo(outstream);
            byte[] responseBody = outstream.toByteArray();
            String sResponse = new String(responseBody);
            System.out.println("RESPONSE="+sResponse.trim());
            return sResponse;

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return "error";
        }


    }


    public static String view()
    {
        try
        {
            String url="http://10.47.1.61/holidays";

//            client c=new client();
            String sResponse=UrlGet(url);
            return sResponse;

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return "error";
        }

    }

    public static String add(JSONObject json)
    {
        try
        {
            String url="http://10.47.1.61/holidays";


            String sResponse=UrlPost(url, json);
            String url1="http://10.33.65.0:8080/compute/v1/apps/omniscient/instanceGroups/omniscient-app-grp1/instances?view=summary";
            Thread thread = new Thread(new MyRunnable(url1));
            thread.start();
            String url2="http://10.33.65.0:8080/compute/v1/apps/omniscient-transact/instanceGroups/omniscient-transact-group1/instances?view=summary";
            Thread thread2 = new Thread(new MyRunnable(url2));
            thread2.start();
            String url3="http://10.33.65.0:8080/compute/v1/apps/omniscient-nup/instanceGroups/omniscient-nup-grp1/instances?view=summary";
            Thread thread3 = new Thread(new MyRunnable(url3));
            thread3.start();

            return sResponse;

        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            return "error";
        }

    }



}
