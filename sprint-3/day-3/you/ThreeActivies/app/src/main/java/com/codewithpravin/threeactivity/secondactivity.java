package com.codewithpravin.threeactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class secondactivity extends AppCompatActivity {

    private Button mButtonActivitySecond;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_secondactivity);
        mButtonActivitySecond = findViewById(R.id.btnLaunchactivity2);
        Log.d("Tag", "onCreat B");
        mButtonActivitySecond.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(secondactivity.this , MainActivity3.class);
                startActivity(intent);
            }
        });
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Tag", "onStart B");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d("Tag", "onResume B");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d("Tag", "onPause B");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("Tag", "onStop B");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Tag", "onDestroy B");
    }
}