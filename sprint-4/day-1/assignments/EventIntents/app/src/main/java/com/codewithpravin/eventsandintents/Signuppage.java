package com.codewithpravin.eventsandintents;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Signuppage extends AppCompatActivity {
    private EditText mtvEmail;
    private EditText mtvPassword;
    private Button mBtn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signuppage);
        inlitilizationAndListner();
    }

    private void inlitilizationAndListner()
    {
        mtvEmail= findViewById(R.id.mailid);
        mtvPassword = findViewById(R.id.password);
        mBtn = findViewById(R.id.mBtn);
        mBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isCredntialsValid())
                {
                    Intent intent = new Intent(Signuppage.this, HomePage.class);
                    intent.putExtra("data", mtvEmail.getText().toString());
                    startActivity(intent);
                }
            }
        });
    }
    private boolean isCredntialsValid()
    {
        boolean isDataValid = true;
        if (mtvEmail.getText().toString().isEmpty())
        {
            mtvEmail.setError("MailId cant be empty");
            isDataValid = false;
        }
        if (!mtvEmail.getText().toString().contains("@gmail.com"))
        {
            mtvEmail.setError("Invalid email id");
            isDataValid = false;
        }
        if (mtvPassword.getText().toString().length() < 6)
        {
            mtvPassword.setError("Password is less than 6 charectors");
        }
        if (mtvEmail.getText().toString().contains("@gmail.com")
                && mtvPassword.getText().toString().length() >= 6)
        {
            isDataValid = true;
        }
        return isDataValid;
    }
}