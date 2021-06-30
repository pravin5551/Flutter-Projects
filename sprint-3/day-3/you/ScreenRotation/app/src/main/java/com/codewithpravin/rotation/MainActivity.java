package com.codewithpravin.rotation;

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
        mTvSaveSTate = findViewById(R.id.hesmasai);
        mTvSaveSTate.setText("Hey masai");
        Log.d("Pravin" , "OnCreate");
    }

    @Override
    protected void onRestoreInstanceState(@NonNull Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
//        Log.d("Pravin" , "OnRestore");
        if(savedInstanceState != null)
        {
            String data = savedInstanceState.getString("data");
            mTvSaveSTate.setText(data);

        }
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle outState, @NonNull PersistableBundle outPersistentState) {
        super.onSaveInstanceState(outState, outPersistentState);
        outState.putString("Pravin" , "Screen Roteded");

    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d("Pravin" , "ONstart");
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
}