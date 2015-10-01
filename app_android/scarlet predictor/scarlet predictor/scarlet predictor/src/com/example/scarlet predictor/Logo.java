package com.example.rustock;

import java.io.IOException;

import com.example.rustock.Download.BasicData;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public class Logo extends Activity {
public Thread startThread;
public Handler mHandler;
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.layout_logo);
	    mHandler = new Handler() {	
		    public void handleMessage(Message msg) {
		    	switch(msg.what){
		    	case 0:
		    		Intent intent = new Intent();                 
			    	intent.setClass(Logo.this, MainMenu.class);                 
			    	startActivity(intent);                
			    	Logo.this.finish();
		   
		    		
		    		break;
		    	}
		    }
		    };
	    
	    startThread=new Thread(new Runnable(){

			@SuppressWarnings("static-access")
			@Override
			
			public void run() {
				
						try {
							Log.v("updateThread","inThread!");
							Thread.currentThread().sleep(1000);
							Message msg=new Message();
							msg.what=0;
							mHandler.sendMessage(msg);
							
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
					
						
				}
				// TODO Auto-generated method stub
				
			}
	    });
	    startThread.start();
	
	    // TODO Auto-generated method stub
	}

}
