package com.codewithpravin.openmasaiwebsite;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private Button btnMasai;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initilization();
    }

    private void initilization() {
        btnMasai = findViewById(R.id.button);
        btnMasai.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent viewintent = new Intent();
                viewintent.setAction(Intent.ACTION_VIEW);
                viewintent.setData(Uri.parse("https://www.masaischool.com/"));


                if (viewintent.resolveActivity(getPackageManager()) != null)
                {
                    startActivity(viewintent);
                }else{
                    Toast.makeText(MainActivity.this, "", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}