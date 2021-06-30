package com.codewithpravin.eventsandintents;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.google.android.material.badge.BadgeUtils;
public class MainActivity extends AppCompatActivity {
private Button mBtnstart;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        inlitilizationAndListner();
    }

    private void inlitilizationAndListner() {
        mBtnstart = findViewById(R.id.start);
        mBtnstart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this , Signuppage.class);
                startActivity(intent);
            }
        });
    }
}