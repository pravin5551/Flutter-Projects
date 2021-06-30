package com.codewithpravin.login;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private EditText ofUsername;
    private EditText metpassword;
    private EditText mEtEmailID;
    private Button mBtnLogin;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initilizationAndListner();

    }

    private  void initilizationAndListner()
    {
        ofUsername = findViewById(R.id.username);
        metpassword = findViewById(R.id.edpass);
        mEtEmailID = findViewById(R.id.etuserid);
        mBtnLogin = findViewById(R.id.btnid);
        mBtnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isCredentialsValid())
                {
                    Intent intent = new Intent(MainActivity.this , Login.class);
                    intent.putExtra("data" , ofUsername.getText().toString());
                    startActivity(intent);
                }
            }
        });
    }
    private boolean isCredentialsValid(){
        boolean isDataValid = true;
        if (ofUsername.getText().toString().isEmpty())
        {
            mEtEmailID.setError("Username cant be empty");
            isDataValid = false;
        }
        if (!mEtEmailID.getText().toString().contains("@gmail.com"))
        {
            mEtEmailID.setError("Invalid email id");
            isDataValid = false;
        }
        if (metpassword.getText().toString().length() < 6)
        {
            metpassword.setError("Password is less than 6 charectors");
        }
        if (mEtEmailID.getText().toString().contains("@gmail.com") && metpassword.getText().toString().length() >= 6) {
            isDataValid = true;
        }
        return  isDataValid;

    }
}