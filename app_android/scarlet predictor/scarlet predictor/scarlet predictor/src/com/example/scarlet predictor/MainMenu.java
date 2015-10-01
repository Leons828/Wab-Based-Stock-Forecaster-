package com.example.rustock;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.example.rustock.user.Infor;
import com.example.rustock.user.User;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.net.ParseException;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

@SuppressLint("NewApi")
@TargetApi(Build.VERSION_CODES.HONEYCOMB)
public class MainMenu extends Activity {
	private Button basicAna=null;
	private Button historyPrice=null;
	private Button predict=null;
	private Button us=null;
	private ImageButton next=null;
	private ImageButton previous=null;
	private ImageView gallery=null;
	private ImageButton userButton=null;
	private ImageButton regButton=null;
	private ImageButton ipButton=null;
	private ImageButton simulator=null;
	private RelativeLayout userLayout=null;
	@SuppressWarnings("deprecation")
	private RelativeLayout regLayout=null;
	public static int i=0;
	private static boolean isVisible=false;
	private static boolean regVisible=false;
	private static boolean ipVisible=false;
	private static boolean isLogin=false;
	private Button login=null;
	private String loginResult;
	private RelativeLayout userpanel=null;
	private RelativeLayout ipLayout=null;
	private Button ipConfirm=null;
	private EditText ipInput=null;
	private TextView userid=null;
	private EditText idInput=null;
	private EditText passwordInput=null;
	private static String id;
	public static String ipAddress="172.31.235.79";
	public static String password;
	private TextView loginStatus=null;
	ArrayList<Integer> imageResource;
	public static User user=new User();
	/** Called when the activity is first created. */
	@TargetApi(Build.VERSION_CODES.GINGERBREAD)
	@SuppressLint("NewApi")
	@SuppressWarnings("deprecation")
	@Override
	public void onCreate(Bundle savedInstanceState) {
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
	    imageResource=new ArrayList<Integer>();
	    imageResource.add(R.drawable.tu1);
	    imageResource.add(R.drawable.tu1);
	    imageResource.add(R.drawable.tu1);
	    setContentView(R.layout.layout_mainmenu);
	    loginStatus=(TextView)findViewById(R.id.loginstatus);
	    loginStatus.setText("User Id or Password Error");
	    loginStatus.setTextColor(Color.RED);
	    loginStatus.setVisibility(View.INVISIBLE);
	    login=(Button)findViewById(R.id.login);
	    login.setOnClickListener(Listener);
	    basicAna=(Button)findViewById(R.id.basicana);
	    basicAna.setOnClickListener(Listener);
	    basicAna.setGravity(Gravity.CENTER);
	    basicAna.setTextColor(Color.WHITE);
	    previous=(ImageButton)findViewById(R.id.previous);
	    next=(ImageButton)findViewById(R.id.next);
	    next.setOnClickListener(Listener);
	    userButton=(ImageButton)findViewById(R.id.userbutton);
	    userButton.setOnClickListener(Listener);
	   regButton=(ImageButton)findViewById(R.id.regbutton);
	   regButton.setOnClickListener(Listener);
	   regButton.getBackground().setAlpha(0);
	    userButton.getBackground().setAlpha(0);
	   userpanel=(RelativeLayout)findViewById(R.id.userpanel);
	   simulator=(ImageButton)findViewById(R.id.simulatorbutton);
	    simulator.setOnClickListener(Listener);
	   
	    regLayout=(RelativeLayout)findViewById(R.id.reglayout);
	   regLayout.setVisibility(View.INVISIBLE);
	   regLayout.getBackground().setAlpha(255);
	    previous.setOnClickListener(Listener);
	    next.getBackground().setAlpha(0);
	    previous.getBackground().setAlpha(0);
	    next.getDrawable().setAlpha(100);
	    previous.getDrawable().setAlpha(100);
	    gallery=(ImageView)findViewById(R.id.gallery);
	    historyPrice=(Button)findViewById(R.id.history);
	    historyPrice.setOnClickListener(Listener);
	    historyPrice.setGravity(Gravity.CENTER);
	    historyPrice.setTextColor(Color.WHITE);
	    userLayout=(RelativeLayout)findViewById(R.id.userlayout);
	    userLayout.setVisibility(View.INVISIBLE);
	    predict=(Button)findViewById(R.id.predict);
	    predict.setOnClickListener(Listener);
	    predict.setGravity(Gravity.CENTER);
	    predict.setTextColor(Color.WHITE);
	    us=(Button)findViewById(R.id.aboutus);
	    us.setOnClickListener(Listener);
	   
	    userid=(TextView)findViewById(R.id.username);
	    idInput=(EditText)findViewById(R.id.usernameinput);
	    passwordInput=(EditText)findViewById(R.id.passwordinput);
	    ipButton=(ImageButton)findViewById(R.id.ipbutton);
	    ipButton.setOnClickListener(Listener);
	    ipButton.getBackground().setAlpha(0);
	    
	    ipLayout=(RelativeLayout)findViewById(R.id.iplayout);
	    ipLayout.setVisibility(View.INVISIBLE);
	    ipConfirm=(Button)findViewById(R.id.ipaddress);
	    ipConfirm.setOnClickListener(Listener);
	    ipInput=(EditText)findViewById(R.id.ipaddressinput);
	    
	    
	    gallery.setImageResource(imageResource.get(i));
	    if(isLogin){
			   userpanel.setVisibility(View.VISIBLE);
			   //userpanel.getBackground().setAlpha(0);
			   simulator.setVisibility(View.VISIBLE);
			   simulator.getBackground().setAlpha(0);
			   userid.setText(id);
		   }
		   else{
			  
		   userpanel.setVisibility(View.INVISIBLE);
		   //userpanel.getBackground().setAlpha(0);
		   simulator.setVisibility(View.INVISIBLE);
		   
		   }
	    // TODO Auto-generated method stub
	}
	private OnClickListener Listener=new OnClickListener(){
		public void onClick (View v){
			if(v.equals(basicAna)){
				Intent intent = new Intent();                 
		    	intent.setClass(MainMenu.this, BasicAna.class);                 
		    	startActivity(intent);                
		    	MainMenu.this.finish();
			}
			else if(v.equals(historyPrice)){
				Intent intent = new Intent();                 
		    	intent.setClass(MainMenu.this, HistoryPrice.class);                 
		    	startActivity(intent);                
		    	MainMenu.this.finish();
			}
			else if(v.equals(predict)){
				Intent intent = new Intent();                 
		    	intent.setClass(MainMenu.this, Prediction.class);                 
		    	startActivity(intent);                
		    	MainMenu.this.finish();
			}
			
			else if(v.equals(us)){
				Intent intent = new Intent();                 
		    	intent.setClass(MainMenu.this, Aboutus.class);                 
		    	startActivity(intent);                
		    	MainMenu.this.finish();
			}
			else if(v.equals(simulator)){
				Intent intent = new Intent();                 
		//    	intent.setClass(MainMenu.this, Simulator.class);                 
		    	startActivity(intent);                
		    	MainMenu.this.finish();
			}
			else if(v.equals(next)){
				if((i+1)>=imageResource.size()){
					i=0;
					gallery.setImageResource(imageResource.get(i));
				}
				else{
					i++;
					gallery.setImageResource(imageResource.get(i));
				}
			}
			
			else if(v.equals(previous)){
				if(i==0){
					i=imageResource.size()-1;
					gallery.setImageResource(imageResource.get(i));
				}
				else{
					i--;
					gallery.setImageResource(imageResource.get(i));
				}
			}
			else if(v.equals(userButton)){
				loginStatus.setVisibility(View.INVISIBLE);
				regVisible=false;
				regLayout.setVisibility(View.INVISIBLE);
				if(isVisible){
				userLayout.setVisibility(View.INVISIBLE);
				isVisible=false;
				Log.v("Visible",String.valueOf(userLayout.VISIBLE));
				}
				else {
					userLayout.setVisibility(View.VISIBLE);
					isVisible=true;
				Log.v("Invisible",String.valueOf(userLayout.VISIBLE));
				}
				
			}
			else if(v.equals(regButton)){
				isVisible=false;
				userLayout.setVisibility(View.INVISIBLE);
				if(regVisible){
				regLayout.setVisibility(View.INVISIBLE);
				regVisible=false;
				Log.v("Visible",String.valueOf(userLayout.VISIBLE));
				}
				else {
					regLayout.setVisibility(View.VISIBLE);
					regVisible=true;
				Log.v("Invisible",String.valueOf(userLayout.VISIBLE));
				}
				
			}
			else if(v.equals(login)){
				id=idInput.getText().toString();
				password=passwordInput.getText().toString();
				userLogin(id,password);
				
			}
			else if(v.equals(ipButton)){
				if(ipVisible){
					ipLayout.setVisibility(View.INVISIBLE);
					ipVisible=false;
				}
				else{
					ipLayout.setVisibility(View.VISIBLE);
					ipVisible=true;
				}
			}
			else if(v.equals(ipConfirm)){
				ipAddress=ipInput.getText().toString();
			}
		}
		};
		private void userLogin(String username,String password){
			InputStream in=null;
			StringBuilder sb=null;
			String result=null;
			try{
	            HttpClient httpclient = new DefaultHttpClient();
	            HttpGet httpget = new HttpGet("http://"+ipAddress+"/App/login.php/?username="+username+"&password="+password);
	            HttpResponse response = httpclient.execute(httpget);
	            HttpEntity entity = response.getEntity();
	            in = entity.getContent();
	        }catch(Exception e){
	            Log.e("log_tag", "Error in http connection"+e.toString());
	        }
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

             try {
                 //jArray = new JSONArray(result);
            	 Log.v("mainmenu_login", result);
                 JSONObject json_data = new JSONObject(result);
                 loginResult=json_data.getString("Islog");
                 if(loginResult.equals("true")){
                	 isLogin=true;
                	 userpanel.setVisibility(View.VISIBLE);
                	 userLayout.setVisibility(View.INVISIBLE);
                	 loginStatus.setVisibility(View.INVISIBLE);
                	 userid.setText(id);
                	 readUserData(username,password);
                	 simulator.setVisibility(View.VISIBLE);
                	 simulator.getBackground().setAlpha(0);
                	 
                	 
                 }
                 else{
                	 loginStatus.setVisibility(View.VISIBLE);
                	 
                	
                 }
                 
             } catch (JSONException e1) {
                 // Toast.makeText(getBaseContext(), "No City Found"
                 // ,Toast.LENGTH_LONG).show();
             } catch (ParseException e1) {
                 e1.printStackTrace();
             }

		}
		
		public static void readUserData(String username, String password) {
			user=new User();
			InputStream in=null;
			StringBuilder sb=null;
			String result=null;
			try{
	            HttpClient httpclient = new DefaultHttpClient();
	            HttpGet httpget = new HttpGet("http://"+ipAddress+"/App/getholdstock.php/?username="+username+"&password="+password);
	            HttpResponse response = httpclient.execute(httpget);
	            HttpEntity entity = response.getEntity();
	            in = entity.getContent();
	        }catch(Exception e){
	            Log.e("log_tag", "Error in http connection"+e.toString());
	        }
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
			try{
				Log.v("JsonString",result);
				if(!result.equals("{\"Isempty\":\"true\"}")){
					JSONArray jArray=new JSONArray(result);
					
					JSONObject jsonData=null;
					Log.v("JsonString",String.valueOf(jArray.length()));
					user.stock=new ArrayList<Infor>();
					for(int i=0;i<jArray.length();i++){
						jsonData=jArray.getJSONObject(i);
						user.id=username;
						user.balance=jsonData.getDouble("money");
		
						Log.v("JsonStringRe" +
								"sult",String.valueOf(jsonData.getInt("shares"))+String.valueOf(jsonData.getString("symbol")));
						if(jsonData.getInt("sell_buy")==1){
							user.stock.add(new Infor(jsonData.getString("symbol"),jsonData.getInt("shares"),jsonData.getDouble("price"),jsonData.getInt("ID")));
						}
						
					}
				}
			}catch(Exception e){
	            Log.e("log_tag", "Error converting result "+e.toString());
	        }
		}

}
