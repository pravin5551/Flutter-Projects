package com.codewithpravin.filltheform;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    private Button mBtnstart;
    private  EditText mtvfirst;
    private  EditText mtvsecond;
    private  EditText mtvthird;
    private  EditText mtvfourth;
    private  EditText mtvfifth;
    private  EditText mtvsixth;
    private  EditText mtvseventh;
    private  EditText mtveigth;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        inlitilizationAndListner();
    }

    private void inlitilizationAndListner() {
        mtvfirst = findViewById(R.id.first);
        mtvsecond = findViewById(R.id.second);
        mtvthird = findViewById(R.id.third);
        mtvfourth = findViewById(R.id.fourth);
        mtvfifth = findViewById(R.id.fifth);
        mtvsixth = findViewById(R.id.sixth);
        mtvseventh = findViewById(R.id.seventh);
        mtveigth = findViewById(R.id.eigth);
        mBtnstart = findViewById(R.id.start);
        mBtnstart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                    Intent intent = new Intent(MainActivity.this , infopage.class);
                    intent.putExtra("data1" , mtvfirst.getText().toString());
                    intent.putExtra("data2" , mtvsecond.getText().toString());
                    intent.putExtra("data3" , mtvthird.getText().toString());
                    intent.putExtra("data4" , mtvfourth.getText().toString());
                    intent.putExtra("data5" , mtvfifth.getText().toString());
                    intent.putExtra("data6" , mtvsixth.getText().toString());
                    intent.putExtra("data7" , mtvseventh.getText().toString());
                    intent.putExtra("data8" , mtveigth.getText().toString());
                    startActivity(intent);
            }
        });
    }
}