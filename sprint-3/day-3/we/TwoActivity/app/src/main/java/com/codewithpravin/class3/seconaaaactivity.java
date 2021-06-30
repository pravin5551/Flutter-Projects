package com.codewithpravin.class3;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

public class seconaaaactivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_seconaaaactivity);
        Log.d("Tag", "onCreat B");
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