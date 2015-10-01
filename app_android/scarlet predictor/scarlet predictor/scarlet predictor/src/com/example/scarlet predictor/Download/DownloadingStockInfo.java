package com.example.rustock.Download;
import java.util.*;
import java.net.*;
import java.io.*;
import java.text.*;
import javax.net.ssl.HttpsURLConnection;
public class DownloadingStockInfo {
	String urlName;
	 URL urlFile;
	 public String currentPrice;
	
	public String readingCurrentUrl(String url) throws IOException{
		urlFile =new URL(url);
		URLConnection urlCon= urlFile.openConnection();
		BufferedReader reader=new BufferedReader(new InputStreamReader(urlCon.getInputStream()));
		String line;
		line=reader.readLine();
		reader.close();
		return line;
	}
	public void readHistoryUrl(String url,ArrayList<String> date,ArrayList<Double>price,ArrayList<Integer>volume) throws IOException{
		urlFile =new URL(url);
		URLConnection urlCon= urlFile.openConnection();
		BufferedReader reader=new BufferedReader(new InputStreamReader(urlCon.getInputStream()));
		String line;
		
		try{
			line=reader.readLine();
			while((line=reader.readLine())!=null){
				
				StringTokenizer str=new StringTokenizer(line,",");
				String time=str.nextToken();
				String open=str.nextToken();
				String high=str.nextToken();
				String low=str.nextToken();
				String close=str.nextToken();
				String Volume=str.nextToken();
				date.add(time);
				price.add(Double.parseDouble(close));//Add the close price to 
				volume.add(Integer.valueOf(Volume));
				
			}
		reader.close();
		Collections.reverse(date);
		Collections.reverse(price);//reverse the array because the closest data should at the end of the array
		Collections.reverse(volume);
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}
		
	}
	public String getHistory(String symbol,String startYear,String startMonth,String startDay,String endYear,String endMonth, String endDay,String form){
		return "http://ichart.yahoo.com/table.csv?s="+symbol+"&a="+startMonth+"&b="+startDay+"&c="+startYear+"&d="+endMonth+"&e="+endDay+"&f="+endYear+"&g="+form+"&ignore=.csv";
	}
	public String getCurrentPrice(String symbol){
		return "http://finance.yahoo.com/d/quotes.csv?s="+symbol+"&f=ab2b3opv";
	}
	public String getCurrentAskPrice(String symbol){
		return "http://finance.yahoo.com/d/quotes.csv?s="+symbol+"&f=b2";
	}


}
