package flipkart.com.day;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;

/**
 * Created by surya.kumar on 28/10/15.
 */
public class MyRunnable implements Runnable {

    public String url1;
    public MyRunnable(String url1) {
        this.url1 = url1;

    }




    public void run(){

        try {


//            String url = "http://10.33.65.0:8080/compute/v1/apps/omniscient/instanceGroups/omniscient-app-grp1/instances?view=summary";

            client c = new client();


            String ips = c.UrlGet(url1);



            JSONArray ipJArray = new JSONArray(ips);

            for (int i = 0; i < ipJArray.length(); i++) {
                String s = ipJArray.getString(i);
                JSONObject reader = new JSONObject(s);
                String primary_ip = reader.getString("primary_ip");
                System.out.println("" + primary_ip);

                String uri = "http://" + primary_ip + ":27750/holidays?from=2014-01-01";
                String Cacheres = c.UrlDelete(uri);



                System.out.println("" + Cacheres);
            }
        }     catch (Exception ex1){
            ex1.printStackTrace();
        }
    }
}
