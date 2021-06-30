package com.codewithpravin.threeactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

public class MainActivity3 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        Log.d("Tag", "onCreat C");
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Tag", "onStart C");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d("Tag", "onResume C");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d("Tag", "onPause C");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("Tag", "onStop C");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Tag", "onDestroy C");
    }
}