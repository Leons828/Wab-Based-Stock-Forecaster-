package com.example.rustock;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Calendar;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

import com.example.rustock.Download.BasicData;
import com.example.rustock.Download.DownloadingStockInfo;
import com.example.rustock.user.Infor;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.GraphViewSeries;
import com.jjoe64.graphview.LineGraphView;
import com.jjoe64.graphview.GraphView.GraphViewData;
import com.jjoe64.graphview.GraphViewSeries.GraphViewSeriesStyle;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Prediction extends Activity {
private Button back=null;
private Button update=null;
private Button select=null;
private TextView nextDay=null;
private TextView nextMonthLow=null;
private TextView nextMonthHigh=null;
private TextView confidenceLowText=null;
private TextView confidenceHighText=null;
private TextView symbol=null;
public static String Symbol="KONE";
private LinearLayout dailyGraph=null;
private LinearLayout monthGraph=null;
private GraphView Daily=null;
private GraphView Monthly=null;
private ArrayList<Double> monthly=new ArrayList<Double>();
private ArrayList<Double> daily=new ArrayList<Double>();
private ArrayList<String> date=new ArrayList<String>();
private ArrayList<Integer> volume=new ArrayList<Integer>();
private String startYear;
private String startYearDaily;
private String startMonth;
private String startMonthDaily;
private String startDay;
private String endYear;
private String endMonth;
private String endDay;
private Handler mHandler;
private Thread updateThread;
private double tomorrow;
private double low;
private double high;
private double confidenceLow;
private double confidenceHigh;


	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.layout_prediction);
	    
	    back=(Button)findViewById(R.id.back);
	   
	    select=(Button)findViewById(R.id.selectpredict);
	   
	    select.setOnClickListener(Listener);
	    back.setOnClickListener(Listener);
	    nextDay=(TextView)findViewById(R.id.tomorrowprice1);
	    nextMonthLow=(TextView)findViewById(R.id.nextmonthlow);
	    nextMonthHigh=(TextView)findViewById(R.id.nextmonthhigh);
	    confidenceLowText=(TextView)findViewById(R.id.confidencelow);
	    confidenceHighText=(TextView)findViewById(R.id.confidencehigh);
	    
	    symbol=(TextView)findViewById(R.id.predictsymbol);
	    symbol.setText(Symbol);
	    dailyGraph=(LinearLayout)findViewById(R.id.dailygraph);
	    monthGraph=(LinearLayout)findViewById(R.id.monthlygraph);
	    Daily=new LineGraphView(this,"Last Month");
	    Monthly=new LineGraphView(this,"Last Year");
	    dailyGraph.addView(Daily);
	    monthGraph.addView(Monthly);
	    initialDate();
	    mHandler = new Handler() {	
		    public void handleMessage(Message msg) {
		    	switch(msg.what){
		    	case 0:
		    		setUpUI();
		    		Log.v("DataUpdate","Draw UI");
		    		break;
		    	}
		    }
		    };
	    updateThread=new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			
			public void run() {
				try {
					updatePriceMonthly();
					updatePriceDaily();
					Log.v("DataUpdate","API");
					updateData(Symbol);
					Log.v("DataUpdate","Server");
					Message msg=new Message();
					msg.what=0;
					mHandler.sendMessage(msg);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				// TODO Auto-generated method stub
				
			}
	    	
	    });
	    
	    updateThread.start();
	    
	    // TODO Auto-generated method stub
	}
	public void updatePriceMonthly() throws IOException{
		DownloadingStockInfo his=new DownloadingStockInfo();
    	his.readHistoryUrl(his.getHistory(Symbol, startYear, startMonth, startDay, endYear, endMonth, endDay, "m"), date, monthly,volume);
	}
	public void updatePriceDaily() throws IOException{
		DownloadingStockInfo his=new DownloadingStockInfo();
    	his.readHistoryUrl(his.getHistory(Symbol, startYearDaily, startMonthDaily, startDay, endYear, endMonth, endDay, "d"), date, daily,volume);
	}
	public void initialDate(){
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int date = c.get(Calendar.DATE); 
		if(month==0){
			startYearDaily=String.valueOf(year-1);
			startMonthDaily=String.valueOf(11);
			startDay=String.valueOf(date);
		}
		else{
			startYearDaily=String.valueOf(year);
			startMonthDaily=String.valueOf(month-1);
			startDay=String.valueOf(date);
		}
		startMonth=String.valueOf(month);
		startYear=String.valueOf(year-1);
		endYear=String.valueOf(year);
		endMonth=String.valueOf(month);
		endDay=String.valueOf(date);
		
	}
	public void setUpUI(){
		
		GraphViewData[] graphDataDaily=new GraphViewData[daily.size()];
		GraphViewSeriesStyle seriesStyle = new GraphViewSeriesStyle();
    	seriesStyle.color=Color.RED;
    	for(int i=0;i<daily.size();i++){
    		Log.v("setChart",String.valueOf(daily.get(i)));
    		graphDataDaily[i]=new GraphViewData(i,daily.get(i));
    	}
    	
    	GraphViewSeries dataSeries=new GraphViewSeries("1",seriesStyle,graphDataDaily); 
    	
    	Daily.getGraphViewStyle().setNumHorizontalLabels(0);
    	Daily.getGraphViewStyle().setTextSize(20);
    	Daily.getGraphViewStyle().setVerticalLabelsWidth(85);
    	Daily.removeAllSeries();
    	Daily.addSeries(dataSeries);
    	Log.v("setChartMid","Mid");
   
    	GraphViewData[] graphDataMonthly=new GraphViewData[monthly.size()];
     
    	for(int i=0;i<monthly.size();i++){ 
    		Log.v("setChart",String.valueOf(monthly.get(i)));
    		graphDataMonthly[i]=new GraphViewData(i,monthly.get(i));
    	}
    	
    	GraphViewSeries dataSeries2=new GraphViewSeries("1",seriesStyle,graphDataMonthly); 
    	Monthly.getGraphViewStyle().setNumHorizontalLabels(0);
    	Monthly.getGraphViewStyle().setTextSize(20);
    	Monthly.getGraphViewStyle().setVerticalLabelsWidth(85);
    	Monthly.removeAllSeries();
    	Monthly.addSeries(dataSeries2);
    	symbol.setText(Symbol);
    	nextMonthLow.setText(String.valueOf(low));
    	nextMonthHigh.setText(String.valueOf(high));
    	nextDay.setText(String.valueOf(tomorrow));
    	confidenceLowText.setText(String.valueOf(confidenceLow*100)+"%");
    	confidenceHighText.setText(String.valueOf(confidenceHigh*100)+"%");
    	
	}
	private OnClickListener Listener=new OnClickListener(){
		public void onClick (View v){
			if(v.equals(back)){
				Intent intent = new Intent();                 
		    	intent.setClass(Prediction.this, MainMenu.class);                 
		    	startActivity(intent);                
		    	Prediction.this.finish();
			}
			
			else if(v.equals(select)){
				Intent intent = new Intent();                 
		    	intent.setClass(Prediction.this, predictionSymbol.class);                 
		    	startActivity(intent);                
		    	Prediction.this.finish();
			}
		}
	};
	private void updateData(String sby){
		InputStream in=null;
		StringBuilder sb=null;
		String result=null;
		try{
            HttpClient httpclient = new DefaultHttpClient();
            HttpGet httpget = new HttpGet("http://"+MainMenu.ipAddress+"/getpredict.php/?symbol="+sby);
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
				
	
				JSONObject jsonData=new JSONObject(result);
				String nd=jsonData.getString("predict");
				String nml=jsonData.getString("pre_close");
				String nmh=jsonData.getString("pre_up");
				String conlow=jsonData.getString("down_accuracy");
				String conhigh=jsonData.getString("up_accuracy");
				tomorrow=getDouble(nd);
				low=getDouble(nml);
				high=getDouble(nmh);
				confidenceLow=getDouble(conlow);
				confidenceHigh=getDouble(conhigh);
				
				
			
		}catch(Exception e){
            Log.e("log_tag", "Error converting result "+e.toString());
        }
	
	}
	private double getDouble(String sb){
		if(sb.equals("null")){
			return 0;
		}
		else return Double.valueOf(sb);
	}

}
