package com.codewithpravin.lifecyclemethod;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private TextView mTvSaveSTate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mTvSaveSTate = findViewById(R.id.lifecycle);
        mTvSaveSTate.setText("Hey Masai");
        Log.d("Pravin" , "OnCreate");
//        finish();
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Loyd" , "Onstart");
    }



    @Override
    protected void onResume() {
        super.onResume();
        Log.d("Loyd" , "OnResume");
    }



    @Override
    protected void onPause() {
        super.onPause();
        Log.d("Loyd" , "OnPause");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Loyd" , "OnDestroyed");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("Loyd" , "OnStop");
    }
}