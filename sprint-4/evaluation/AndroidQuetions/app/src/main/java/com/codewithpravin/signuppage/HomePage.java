package com.codewithpravin.signuppage;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class HomePage extends AppCompatActivity {
    private TextView mTvEmail;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_page);
        initilizationAndListner();
        getDatafromIntent();
    }

    private void initilizationAndListner() {
        mTvEmail = findViewById(R.id.tvEmailid);
    }
    private void getDatafromIntent() {
        String data = getIntent().getStringExtra("data");
        mTvEmail.setText(data);
    }
}