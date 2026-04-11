package com.example.lab6_application_recettesdepizza.view;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.lab6_application_recettesdepizza.R;
import com.example.lab6_application_recettesdepizza.model.Pizza999;
import com.example.lab6_application_recettesdepizza.storage.PizzaVault999;

public class RecipeScreen999 extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        setContentView(R.layout.activity_recipe999);

        long uid = getIntent().getLongExtra("uid999", -1);
        Pizza999 p = PizzaVault999.getVault999().fetchById999(uid);

        ImageView heroImg999   = findViewById(R.id.heroImg999);
        TextView heroTitle999  = findViewById(R.id.heroTitle999);
        TextView heroMeta999   = findViewById(R.id.heroMeta999);
        TextView ingBody999    = findViewById(R.id.ingBody999);
        TextView aboutBody999  = findViewById(R.id.aboutBody999);
        TextView stepsBody999  = findViewById(R.id.stepsBody999);

        if (p != null) {
            heroImg999.setImageResource(p.getCover999());
            heroTitle999.setText(p.getTitle999());
            heroMeta999.setText("⏱ " + p.getPrepTime999() + "   |   💰 " + p.getCost999() + " €");
            ingBody999.setText(p.getIngList999());
            aboutBody999.setText(p.getAbout999());
            stepsBody999.setText(p.getHowTo999());
        } else {
            heroTitle999.setText("Pizza not found!");
        }
    }
}
