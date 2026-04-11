package com.example.lab6_application_recettesdepizza.view;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.lab6_application_recettesdepizza.R;
import com.example.lab6_application_recettesdepizza.model.Pizza999;
import com.example.lab6_application_recettesdepizza.renderer.SliceRenderer999;
import com.example.lab6_application_recettesdepizza.storage.PizzaVault999;
import java.util.List;

public class CatalogScreen999 extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        setContentView(R.layout.activity_catalog999);

        ListView listView999 = findViewById(R.id.pizzaCatalog999);
        List<Pizza999> items = PizzaVault999.getVault999().fetchAll999();

        listView999.setAdapter(new SliceRenderer999(this, items));

        listView999.setOnItemClickListener((parent, view, pos, uid) -> {
            Intent go = new Intent(this, RecipeScreen999.class);
            go.putExtra("uid999", uid);
            startActivity(go);
        });
    }
}
