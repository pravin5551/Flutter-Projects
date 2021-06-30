package com.codewithpravin.intentfilters;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private EditText metEmail;
    private EditText metPassword;
    private EditText metConfirmPassword;
    private  EditText mPhoneNum;
    private Button mBtnSignUp;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        inlitilizationAndListner();
    }

    private void inlitilizationAndListner()
    {
        metEmail = findViewById(R.id.mailid);
        metPassword = findViewById(R.id.password);
        metConfirmPassword = findViewById(R.id.cfmpassword);
        mPhoneNum = findViewById(R.id.phonenum);
        mBtnSignUp = findViewById(R.id.btnid);
        mBtnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isCredntialsValid())
                {
                    Intent intent = new Intent(MainActivity.this , SignUpActivity.class);
                    intent.putExtra("data", metEmail.getText().toString());
                    startActivity(intent);
                }

            }
        });
    }
    private boolean isCredntialsValid()
    {
        boolean isDataValid = true;

        if (metEmail.getText().toString().isEmpty())
        {
            metEmail.setError("MailId cant be empty");
            isDataValid = false;
        }
        if (!metEmail.getText().toString().contains("@gmail.com"))
        {
            metEmail.setError("Invalid email id");
            isDataValid = false;

        }
        if (metPassword.getText().toString().length() < 6)
        {
            metPassword.setError("Password is less than 6 charectors");
        }
        if (mPhoneNum.getText().toString().length() != 10)
        {
            mPhoneNum.setError("Phone num is not of 10 digit");
        }
        if (!metPassword.getText().toString().equals(metConfirmPassword.getText().toString())){
            metConfirmPassword.setError("Your password is not maching with above password");
            isDataValid = false;
        }
        if (metEmail.getText().toString().contains("@gmail.com")
                && metPassword.getText().toString().length() >= 6
                && mPhoneNum.getText().toString().length() == 10
                && metPassword.equals(metConfirmPassword))
        {
            isDataValid = true;
        }

        return isDataValid;
    }
}