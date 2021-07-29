package com.codewithpravin.buttonpressed;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private Button mTvSaveSTate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mTvSaveSTate = findViewById(R.id.lol1);
        mTvSaveSTate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this ,SecondActivity.class );
                startActivity(intent);
                Toast.makeText(MainActivity.this, "Button One Clicked" , Toast.LENGTH_LONG).show();
            }
        });
        Log.d("Pravin" , "OnCreate");
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