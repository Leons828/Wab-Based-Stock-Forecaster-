package com.example.rustock;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Color;
import android.net.ParseException;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
@SuppressLint("NewApi")
public class TestPHP extends Activity {
	private Button button=null;
	private TextView text=null;
	private List nameValuePairs;
	private StringBuilder sb=null;
	private String result=null;
	private JSONArray jArray;

	/** Called when the activity is first created. */

	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder()  
        .detectDiskReads()  
        .detectDiskWrites()  
        .detectNetwork()   // or .detectAll() for all detectable problems  
        .penaltyLog()  
        .build());  
StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder()  
        .detectLeakedSqlLiteObjects()  
        .detectLeakedClosableObjects()  
        .penaltyLog()  
        .penaltyDeath()  
        .build());  
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.layout_testphp);
	    button=(Button)findViewById(R.id.testbutton);
	    text=(TextView)findViewById(R.id.testText);
	    text.setText("Main");
	    text.setTextColor(Color.WHITE);
	    button.setOnClickListener(Listener);
	    
	    // TODO Auto-generated method stub
	}
	private OnClickListener Listener=new OnClickListener(){
		public void onClick (View v){
			if(v.equals(button)){
				text.setText("Start!");
				InputStream in=null;
				try{
		            HttpClient httpclient = new DefaultHttpClient();
		            HttpGet httpget = new HttpGet("http://172.31.235.123/shouji.php");
		            HttpResponse response = httpclient.execute(httpget);
		            HttpEntity entity = response.getEntity();
		            in = entity.getContent();
		        }catch(Exception e){
		            Log.e("log_tag", "Error in http connection"+e.toString());
		        }
				text.setText("http");
				try{
		            BufferedReader reader = new BufferedReader(new InputStreamReader(in,"iso-8859-1"),8);
		            sb = new StringBuilder();
		            sb.append(reader.readLine() + "\n");
		            String line="0";
		          
		            while ((line = reader.readLine()) != null) {
		                sb.append(line + "\n");
		            }
		             
		            in.close();
		            result=sb.toString();
		             
		        }catch(Exception e){
		            Log.e("log_tag", "Error converting result "+e.toString());
		        }
				 text.setText(result);

	             try {
	                 //jArray = new JSONArray(result);
	                 JSONObject json_data = new JSONObject(result);
	                 text.setText("json");
	                 String index=json_data.getString("Index");
	                 
	                 String TradeTime=json_data.getString("Trade_Date(d2)");
	                 text.setText(index+"+"+TradeTime);
	             } catch (JSONException e1) {
	                 // Toast.makeText(getBaseContext(), "No City Found"
	                 // ,Toast.LENGTH_LONG).show();
	             } catch (ParseException e1) {
	                 e1.printStackTrace();
	             }
				}
			}
		};

}
