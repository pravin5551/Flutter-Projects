package com.codewithpravin.savedinstance;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Log;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView mTvSaveSTate;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mTvSaveSTate = findViewById(R.id.savedstep);
        mTvSaveSTate.setText("Welcome to Masai");
        Log.d("Loyd" , "OnCreate");


    }

    @Override
    protected void onRestoreInstanceState(@NonNull Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        Log.d("Loyd" , "OnRestore");
        if(savedInstanceState != null)
        {
            String data = savedInstanceState.getString("data");
            mTvSaveSTate.setText(data);
        }
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle outState, @NonNull PersistableBundle outPersistentState) {
        super.onSaveInstanceState(outState, outPersistentState);
        outState.putString("data" , "Screen Roteded");
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Loyd" , "ONstart");
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
}