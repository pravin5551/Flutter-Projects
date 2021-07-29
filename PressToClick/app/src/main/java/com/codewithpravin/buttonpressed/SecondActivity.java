package com.codewithpravin.buttonpressed;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class SecondActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        Log.d("Pravin" , "OnCreate");
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Pravin" , "Onstart");
    }



    @Override
    protected void onResume() {
        super.onResume();
        Log.d("Pravin" , "OnResume");
    }



    @Override
    protected void onPause() {
        super.onPause();
        Log.d("Pravin" , "OnPause");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Pravin" , "OnDestroyed");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d("Pravin" , "OnStop");
    }
}