package com.example.rustock;

import java.util.ArrayList;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
public class predictionSymbol extends ListActivity {

	public final ArrayList<String> SymbolList=new ArrayList<String>();

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
		    setContentView(R.layout.layout_predictsymbol);  
			
		    SymbolList.add("ACWX");
			SymbolList.add("ALQA");
			SymbolList.add("ADP");
			SymbolList.add("ADRD");
			SymbolList.add("ADSK");
			SymbolList.add("AIRT");
			SymbolList.add("ALGN");
			SymbolList.add("AMZN");
			SymbolList.add("ARNA");
			SymbolList.add("ASRV");
			SymbolList.add("BBEP");
			SymbolList.add("BDMS");
			SymbolList.add("BWLD");
			SymbolList.add("CACC");
			SymbolList.add("KONE");
			SymbolList.add("CEMI");
			SymbolList.add("CGNX");
			SymbolList.add("CHXF");
			SymbolList.add("CKEC");
			SymbolList.add("CRUS");
			SymbolList.add("CTXS");
			
			setListAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1,SymbolList));
	}

	protected void onListItemClick(ListView l, View v, int position, long id) {  
		Prediction.Symbol=SymbolList.get(position);
		Intent intent = new Intent();                 
    	intent.setClass(predictionSymbol.this, Prediction.class);                 
    	startActivity(intent);                
    	predictionSymbol.this.finish();
	}

}
