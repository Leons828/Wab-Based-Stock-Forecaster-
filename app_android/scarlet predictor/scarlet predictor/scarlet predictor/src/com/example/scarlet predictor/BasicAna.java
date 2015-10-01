package com.example.rustock;

import java.util.Date;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;
import com.jjoe64.graphview.*;
import com.jjoe64.graphview.GraphView.GraphViewData;
import com.jjoe64.graphview.GraphViewSeries.GraphViewSeriesStyle;
import com.example.rustock.Download.BasicData;
import com.example.rustock.Download.DownloadingStockInfo;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Paint.Align;


import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
@SuppressLint("NewApi")
public class BasicAna extends Activity {
	private Button update=null;
	private Button back=null;
	private Button select=null;
	private TextView ask=null;
	private TextView open=null;
	private TextView close=null;
	private TextView volume=null;
	private TextView bid=null;
	private TextView symbol=null;
	private TextView price=null;
	private GraphView priceGraph=null;
	private Thread updateThread;
	private Handler mHandler;
	private String previousPrice=null;

	private String Close;
	private String Open;
	private String Price;
	private int index=0;
	public static String Symbol="GOOG";
	public boolean isRunning=true;
	private ArrayList<Double> askList=new ArrayList<Double>();
	private GraphViewSeries dataSeries;
	

	/** Called when the activity is first created. */
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
	    setContentView(R.layout.layout_basicanalysis);
	    update=(Button)findViewById(R.id.dataupdate);
	    back=(Button)findViewById(R.id.back);
	    select=(Button)findViewById(R.id.select);
	    

	    update.setOnClickListener(Listener);
	    back.setOnClickListener(Listener);
	    select.setOnClickListener(Listener);
	    
	    ask=(TextView)findViewById(R.id.askvalue);
	    close=(TextView)findViewById(R.id.closevalue);
	    open=(TextView)findViewById(R.id.openvalue);
	    volume=(TextView)findViewById(R.id.volumevalue);
	    bid=(TextView)findViewById(R.id.bidvalue);
	    symbol=(TextView)findViewById(R.id.symbol);
	    price=(TextView)findViewById(R.id.price);
	    price.setBackgroundColor(Color.BLACK);
	    priceGraph=new LineGraphView(this," ");
	    LinearLayout layout = (LinearLayout) findViewById(R.id.graphlayout);
		layout.addView(priceGraph);
		
		
		
		
		
		
	    mHandler = new Handler() {	
		    public void handleMessage(Message msg) {
		    	switch(msg.what){
		    	case 0:
		    		Log.v("Handler","ReceiveMessage!");
		    		setUpdateUI((BasicData) msg.obj);
		    		setChart();
		   
		    		
		    		break;
		    	}
		    }
		    };
	    updateThread=new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			
			public void run() {
				while(isRunning){
						try {
							Log.v("updateThread","inThread!");
							Thread.currentThread().sleep(1000);
							setUpdate(Symbol);
							
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				}
				// TODO Auto-generated method stub
				
			}
	    	
	    });
	    
	    updateThread.start();
	    Log.v("Thread","Thread start");
	   
	    
	    // TODO Auto-generated method stub
	}
	private OnClickListener Listener=new OnClickListener(){
		public void onClick (View v){
			if(v.equals(back)){
				Intent intent = new Intent();                 
		    	intent.setClass(BasicAna.this, MainMenu.class);                 
		    	startActivity(intent);                
		    	BasicAna.this.finish();
			}
			
			else if(v.equals(select)){
				Intent intent = new Intent();                 
		    	intent.setClass(BasicAna.this, stockList.class);                 
		    	startActivity(intent);                
		    	BasicAna.this.finish();
			}
		}

};
@Override
protected void onPause() {
super.onPause();
isRunning=false;
 }
public void setUpdate(String sb) throws IOException{
	Log.v("setUpdate","In update!");
	DownloadingStockInfo current=new DownloadingStockInfo();
	String line=current.readingCurrentUrl(current.getCurrentPrice(sb));
	StringTokenizer str=new StringTokenizer(line,",");
	String Ask=str.nextToken();
	Price=str.nextToken();
	//if(Price.equals("N/A")) Price="0";
	String Bid=str.nextToken();
	Close=str.nextToken();
	Open=str.nextToken();
	String Volume=str.nextToken();
	if(Ask.equals("N/A")){
		askList.add(0.0);
		Log.v("CharUpdate",Ask+" "+Close);
	}
	else{
	askList.add(Double.valueOf(Ask));
	Log.v("AskUpdate",Ask+" "+Close);
	}
	if(askList.size()>1000){
		askList.remove(0);
	}
	Log.v("setUpdate",Price);
	BasicData data=new BasicData(Ask,Bid,Price,Open,Close,Volume,sb);
	Message msg=new Message();
	msg.what=0;
	msg.obj=data;
	mHandler.sendMessage(msg);
	
	
}
public void setUpdateUI(BasicData a){
	if(previousPrice==null){
		previousPrice=a.price;
	}
	else if(a.price.equals("N/A")){
		price.setBackgroundColor(Color.BLACK);
	}
	ask.setText(a.ask);
	bid.setText(a.bid);
	price.setText(a.price);
	close.setText(a.close);
	open.setText(a.open);
	volume.setText(a.volume);
	symbol.setText(a.symbol);
	Log.v("setUpdateUI",a.ask);
	if(!a.price.equals("N/A")){
		if(Double.valueOf(previousPrice)>Double.valueOf(a.price)){
			price.setBackgroundColor(Color.RED);
		}
		else if(Double.valueOf(previousPrice)<Double.valueOf(a.price)){
			price.setBackgroundColor(Color.GREEN);
		}
		else price.setBackgroundColor(Color.BLACK);
	}
	previousPrice=a.price;
}
public void setChart(){


	GraphViewData[] graphData=new GraphViewData[askList.size()];
	GraphViewSeries upSeries=new GraphViewSeries(new GraphViewData[]{new GraphViewData(0,Double.valueOf(Open)+1.0)}); 
	GraphViewSeries downSeries=new GraphViewSeries(new GraphViewData[]{new GraphViewData(0,Double.valueOf(Open)-1.0)});
	priceGraph.removeAllSeries();
	GraphViewSeriesStyle seriesStyle = new GraphViewSeriesStyle();
	seriesStyle.color=Color.RED;
	for(int i=0;i<askList.size();i++){
		graphData[i]=new GraphViewData(i+1,Double.valueOf(askList.get(i)));
	}
	dataSeries=new GraphViewSeries("1",seriesStyle,graphData); 
	priceGraph.addSeries(dataSeries);
	priceGraph.addSeries(upSeries);
	priceGraph.addSeries(downSeries);
	priceGraph.setScrollable(true);
	priceGraph.getGraphViewStyle().setNumHorizontalLabels(10);
	priceGraph.setHorizontalLabels(new String[] {});
	priceGraph.getGraphViewStyle().setTextSize(20);
	priceGraph.getGraphViewStyle().setVerticalLabelsWidth(100);
	 ((LineGraphView) priceGraph).setBackgroundColor(0xff003366);
	 ((LineGraphView) priceGraph).setDrawBackground(false);
	Log.v("setChart","chartUpdate");
	}
}


