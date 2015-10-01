package com.example.rustock;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Aboutus extends Activity {
	
	private Button back;

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.aboutus);
	    
	    back=(Button)findViewById(R.id.back);
	    back.setOnClickListener(Listener);
	
	    // TODO Auto-generated method stub
	}



private OnClickListener Listener=new OnClickListener(){
	public void onClick (View v){
		if(v.equals(back)){
			Intent intent = new Intent();                 
	    	intent.setClass(Aboutus.this, MainMenu.class);                 
	    	startActivity(intent);                
	    	Aboutus.this.finish();
		}
	}

};
}
