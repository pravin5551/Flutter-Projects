package com.codewithpravin.filltheform;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;

import org.w3c.dom.Text;

public class infopage extends AppCompatActivity {
    private TextView mTvfirst;
    private TextView mtTsecond;
    private  TextView mTvthird;
    private  TextView mTvfourth;
    private  TextView mTvfifth;
    private  TextView mTvsixth;
    private  TextView mTvseventh;
    private  TextView mTveigth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_infopage);
        initilizeView();
        getDataFroIntent();
    }
    private void initilizeView()
    {
        mTvfirst = findViewById(R.id.first1);
        mtTsecond = findViewById(R.id.second2);
        mTvthird = findViewById(R.id.third3);
        mTvfourth = findViewById(R.id.fourth4);
        mTvfifth = findViewById(R.id.fifth5);
        mTvsixth = findViewById(R.id.sixth6);
        mTvseventh = findViewById(R.id.seventh7);
        mTveigth = findViewById(R.id.eigth8);
    }
    private void getDataFroIntent()
    {
        if (getIntent() != null && getIntent().getExtras() != null)
        {
            String data1 = getIntent().getStringExtra("data1");
            mTvfirst.setText(data1);
            String data2 = getIntent().getStringExtra("data2");
            mTvfirst.setText(data2);
            String data3 = getIntent().getStringExtra("data3");
            mTvfirst.setText(data3);
            String data4 = getIntent().getStringExtra("data4");
            mTvfirst.setText(data4);
            String data5 = getIntent().getStringExtra("data5");
            mTvfirst.setText(data5);
            String data6 = getIntent().getStringExtra("data6");
            mTvfirst.setText(data6);
            String data7 = getIntent().getStringExtra("data7");
            mTvfirst.setText(data7);
            String data8 = getIntent().getStringExtra("data8");
            mTvfirst.setText(data8);
        }

    }
}