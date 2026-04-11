package com.example.lab6_application_recettesdepizza.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.lab6_application_recettesdepizza.R;

public class BootScreen999 extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        setContentView(R.layout.activity_boot999);

        ImageView logo = findViewById(R.id.bootLogo999);
        TextView tagline = findViewById(R.id.bootTagline999);

        Animation fadeIn = AnimationUtils.loadAnimation(this, R.anim.fade_in999);
        Animation slideUp = AnimationUtils.loadAnimation(this, R.anim.slide_up999);

        logo.startAnimation(fadeIn);
        tagline.startAnimation(slideUp);

        new Thread(() -> {
            try { Thread.sleep(2500); } catch (InterruptedException ignored) {}
            startActivity(new Intent(BootScreen999.this, CatalogScreen999.class));
            finish();
        }).start();
    }
}
