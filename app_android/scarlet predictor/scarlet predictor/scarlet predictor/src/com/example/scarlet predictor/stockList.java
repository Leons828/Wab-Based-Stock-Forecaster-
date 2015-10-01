package com.example.rustock;
import java.util.ArrayList;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;


public class stockList extends ListActivity {

	public final ArrayList<String> SymbolList=new ArrayList<String>();

	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.layout_symbollist);  
	    SymbolList.add("AAPL");
		SymbolList.add("AMZN");
		SymbolList.add("BIDU");
		SymbolList.add("COST");
		SymbolList.add("CSCO");
		SymbolList.add("CTRX");
		SymbolList.add("DTV");
		SymbolList.add("EBAY");
		SymbolList.add("FB");
		SymbolList.add("FISV");
		SymbolList.add("GOOG");
		SymbolList.add("GRMN");
		SymbolList.add("INTC");
		SymbolList.add("MAR");
		SymbolList.add("MSFT");
		SymbolList.add("MYL");
		SymbolList.add("PCAR");
		SymbolList.add("SIRI");
		SymbolList.add("SYMC");
		SymbolList.add("WFM");
		SymbolList.add("YHOO");
		
		setListAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,SymbolList));
	}

	protected void onListItemClick(ListView l, View v, int position, long id) {  
		BasicAna.Symbol=SymbolList.get(position);
		Intent intent = new Intent();                 
    	intent.setClass(stockList.this, BasicAna.class);                 
    	startActivity(intent);                
    	stockList.this.finish();
	}
}
