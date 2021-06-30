package com.codewithpravin.intentfilters;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class SignUpActivity extends AppCompatActivity {
    private TextView mTvEmail;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up);
        initilization();
        getDataFromIntent();
    }
    private void initilization()
    {
        mTvEmail = findViewById(R.id.tvEmailid);
    }

    private void getDataFromIntent()
    {
        String data = getIntent().getStringExtra("data");
        mTvEmail.setText(data);
    }


}