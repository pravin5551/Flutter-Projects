package com.codewithpravin.signuppage;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private Button btnNext;
    private EditText metusername;
    private EditText metemail;
    private EditText metpass;
    private EditText metphone;
    private EditText metConfirmpass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initilizationAndListnener();
    }

    private void initilizationAndListnener() {
        btnNext = findViewById(R.id.Btn);
        metemail = findViewById(R.id.email);
        metphone = findViewById(R.id.PhoneNumber);
        metpass = findViewById(R.id.Password);
        metConfirmpass = findViewById(R.id.confirmpass);
        btnNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isCredentialValid()) {
                    Intent intent = new Intent(MainActivity.this, HomePage.class);
                    intent.putExtra("data", metemail.getText().toString());
                    startActivity(intent);
                }
            }
        });
    }

    private boolean isCredentialValid() {
        boolean isDataValid = true;
        if (!metemail.getText().toString().contains("@gmail.com"))
        {
            metemail.setError("Invalid Email");
        }

        if (metemail.getText().toString().isEmpty())
        {
            metemail.setError("Email can't be empty");
            isDataValid = false;
        }
        if (metphone.getText().toString().length() >=10)
        {
            metphone.setError("Phone number should be of 10 digits");
            isDataValid = false;
        }
        if (metpass.getText().toString().length() >7)
        {
            metpass.setError("Password should be minimum 7 characters in length");
            isDataValid = false;
        }
        if (!metpass.getText().toString().equals(metConfirmpass.getText().toString()))
        {
            metConfirmpass.setError("not matching");
        }
        if (metemail.getText().toString().contains("@gmail.com")
        && metphone.getText().toString().length() >=10
        && metpass.getText().toString().length() >=7
        && metpass.equals(metConfirmpass) )
        {
            isDataValid = true;
        }

        return isDataValid;
    }

}