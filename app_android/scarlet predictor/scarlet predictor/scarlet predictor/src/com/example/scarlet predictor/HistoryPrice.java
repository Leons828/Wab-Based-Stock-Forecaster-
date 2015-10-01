package com.example.rustock;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;

import java.util.Date;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;

import com.example.rustock.Download.DownloadingStockInfo;
import com.jjoe64.graphview.BarGraphView;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.GraphViewSeries;
import com.jjoe64.graphview.GraphViewSeries.GraphViewSeriesStyle;
import com.jjoe64.graphview.LineGraphView;
import com.jjoe64.graphview.GraphView.GraphViewData;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Paint.Align;


import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
@SuppressLint("NewApi")
public class HistoryPrice extends Activity {
	private Button update=null;
	private Button back=null;
	private Button select=null;
	private TextView symbol=null;
	private TextView price=null;
	private DatePicker startdate=null;
	private DatePicker enddate=null;
	private TextView priceView=null;
	public static String Symbol="GOOG";
	private ArrayList<String> date;
	private ArrayList<Integer> historyVolume;
	private ArrayList<Double> historyPrice;
	private String startYear;
	private String startMonth;
	private String startDay;
	private String endYear;
	private String endMonth;
	private String endDay;
	private GraphView priceGraph=null;
	private GraphView volumeGraph=null;
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
	    setContentView(R.layout.layout_history);
	    update=(Button)findViewById(R.id.updatehistory);
	    back=(Button)findViewById(R.id.backhistory);
	    select=(Button)findViewById(R.id.select);
	 
	    symbol=(TextView)findViewById(R.id.historysymbol);
	    symbol.setText(Symbol);
	    price=(TextView)findViewById(R.id.historypricecurrent);
	    startdate=(DatePicker)findViewById(R.id.startdate);
	    enddate=(DatePicker)findViewById(R.id.enddate);
	    priceView=(TextView)findViewById(R.id.historytext);
	    priceView.setMovementMethod(ScrollingMovementMethod.getInstance());
	    priceView.setGravity(Gravity.CENTER);
	    priceView.setTextColor(Color.WHITE);
	    update.setOnClickListener(Listener);
	    back.setOnClickListener(Listener);
	    select.setOnClickListener(Listener);
	    priceGraph=new LineGraphView(this,"HISTORY CHART");
	    volumeGraph=new LineGraphView(this,"HISTORY VOLUME");
	    volumeGraph.getGraphViewStyle().setNumHorizontalLabels(5);
	    priceGraph.getGraphViewStyle().setNumHorizontalLabels(5);
	    LinearLayout layout = (LinearLayout) findViewById(R.id.historychart);
		layout.addView(priceGraph);
		LinearLayout layoutvolume = (LinearLayout) findViewById(R.id.volumechart);
		layoutvolume.addView(volumeGraph);
	}
	    private OnClickListener Listener=new OnClickListener(){
			public void onClick (View v){
				if(v.equals(update)){
					startYear=String.valueOf(startdate.getYear());
					startMonth=String.valueOf(startdate.getMonth());
					startDay=String.valueOf(startdate.getDayOfMonth());
					endYear=String.valueOf(enddate.getYear());
					endMonth=String.valueOf(enddate.getMonth());
					endDay=String.valueOf(enddate.getDayOfMonth());
					try {
						setUpdate(Symbol);
						readHistory(Symbol);
						setChart();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
				else if(v.equals(back)){
					Intent intent = new Intent();                 
			    	intent.setClass(HistoryPrice.this, MainMenu.class);                 
			    	startActivity(intent);                
			    	HistoryPrice.this.finish();
				}
				else if(v.equals(select)){
					Intent intent = new Intent();                 
			    	intent.setClass(HistoryPrice.this, historySymbolList.class);                 
			    	startActivity(intent);                
			    	HistoryPrice.this.finish();
				}
		
			}
	    };
	    public void setUpdate(String sb) throws IOException{
	    	DownloadingStockInfo current=new DownloadingStockInfo();
	    	String line=current.readingCurrentUrl(current.getCurrentPrice(sb));
	    	StringTokenizer str=new StringTokenizer(line,",");
	    	String Price=str.nextToken();
	    	String Ask=str.nextToken();
	    	String Bid=str.nextToken();
	    	String Open=str.nextToken();
	    	String Close=str.nextToken();
	    	String Volume=str.nextToken();
	    	price.setText(Price);

	    }
	    public void readHistory(String sb) throws IOException{
	    	date=new ArrayList<String>();
	    	historyPrice=new ArrayList<Double>();
	    	historyVolume=new ArrayList<Integer>();
	    	DownloadingStockInfo his=new DownloadingStockInfo();
	    	his.readHistoryUrl(his.getHistory(sb, startYear, startMonth, startDay, endYear, endMonth, endDay, "d"), date, historyPrice,historyVolume);
	    	String historyText = "";
	    	for(int i=0;i<date.size();i++){
	    		BigDecimal bg = new BigDecimal(historyPrice.get(i));
	    		historyText+=date.get(i)+"     "+String.valueOf(bg.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue())+"\n";
	    	}
	    	priceView.setText(historyText);
	    }
	    public void setChart(){
	    	GraphViewData[] graphData=new GraphViewData[historyPrice.size()];
	    	GraphViewSeriesStyle seriesStyle = new GraphViewSeriesStyle();
	    	seriesStyle.color=Color.RED;

	    	for(int i=0;i<historyPrice.size();i++){
	    		Log.v("setChart",String.valueOf(historyPrice.get(i)));
	    		graphData[i]=new GraphViewData(i,historyPrice.get(i));
	    	}
	    	
	    	GraphViewSeries dataSeries=new GraphViewSeries("1",seriesStyle,graphData); 
	    	priceGraph.getGraphViewStyle().setNumHorizontalLabels(5);
	    	priceGraph.getGraphViewStyle().setTextSize(20);
	    	priceGraph.getGraphViewStyle().setVerticalLabelsWidth(150);
	    	priceGraph.removeAllSeries();
	    	priceGraph.addSeries(dataSeries);
	    	Log.v("setChart","chartUpdate");
	    	GraphViewData[] volumeData=new GraphViewData[historyVolume.size()];
	    	for(int i=0;i<historyVolume.size();i++){
	    		Log.v("setChart",String.valueOf(historyPrice.get(i)));
	    		volumeData[i]=new GraphViewData(i,historyVolume.get(i));
	    	}
	    	
	    	GraphViewSeries dataSeriesVolume=new GraphViewSeries("1",seriesStyle,volumeData); 
	    	volumeGraph.getGraphViewStyle().setNumHorizontalLabels(5);
	    	volumeGraph.getGraphViewStyle().setTextSize(20);
	    	volumeGraph.getGraphViewStyle().setVerticalLabelsWidth(150);
	    	volumeGraph.removeAllSeries();
	    	volumeGraph.addSeries(dataSeriesVolume);
	    	
	    	Log.v("setChart","chartUpdate");
	    	
	    }
	    
	    
	

}
