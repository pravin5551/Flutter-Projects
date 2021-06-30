package com.codewithpravin.login;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class Login extends AppCompatActivity {
    private TextView mTvUsername;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login2);
        initilizeView();
        getDataFroIntent();
    }

    private void initilizeView()
    {
        mTvUsername = findViewById(R.id.tvUsername);
    }
    private void getDataFroIntent()
    {
        if (getIntent() != null && getIntent().getExtras() != null)
        {
            String data = getIntent().getStringExtra("data");
            mTvUsername.setText(data);
        }
    }


}