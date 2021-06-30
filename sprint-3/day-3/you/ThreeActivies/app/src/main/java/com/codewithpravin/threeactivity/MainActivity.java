package com.codewithpravin.threeactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button mButtonActivity;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mButtonActivity = findViewById(R.id.btnLaunchactivity1);
        Log.d("Tag", "onCreate");
        mButtonActivity.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
               Intent intent = new Intent(MainActivity.this , secondactivity.class);
               startActivity(intent);
           }
        });

    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Tag", "onStart A");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d("Tag", "onPause A");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("Tag", "onStop A");

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Tag", "onDestroy A");
    }
}