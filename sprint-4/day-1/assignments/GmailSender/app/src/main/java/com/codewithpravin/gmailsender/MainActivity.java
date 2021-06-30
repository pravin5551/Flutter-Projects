package com.codewithpravin.gmailsender;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button mBtnLaunch;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initilizationAndListener();
    }


    private void initilizationAndListener() {

        mBtnLaunch = findViewById(R.id.btnGmail);
        mBtnLaunch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent sendIntent = new Intent();
                sendIntent.setAction(Intent.ACTION_SEND);
                sendIntent.putExtra(Intent.EXTRA_TEXT, "Hi Sir,\n" +
                        "This mail is regarding my leaves as I won’t be able\n" +
                        "to attend the team meetings due to health issues.\n" +
                        "Kindly excuse my absence");
                sendIntent.putExtra(Intent.EXTRA_EMAIL, new String[]{"foo@bar.com"});
                sendIntent.putExtra(Intent.EXTRA_SUBJECT, "Testing subject");
                sendIntent.putExtra(Intent.EXTRA_CC, new String[]{"Pravin@gmail.com"});
                sendIntent.setType("messege/rfc822");
                startActivity(sendIntent);
            }
        });

    }


}