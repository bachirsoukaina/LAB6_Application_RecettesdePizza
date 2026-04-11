# ============================================================
#  PizzaVault - Setup Script
#  Run from: PS C:\Users\pc\AndroidStudioProjects\LAB6_Application_RecettesdePizza\app\src\main\java\com\example\lab6_application_recettesdepizza>
# ============================================================

$base = "C:\Users\pc\AndroidStudioProjects\LAB6_Application_RecettesdePizza\app\src\main"
$javaPkg = "$base\java\com\example\lab6_application_recettesdepizza"
$res = "$base\res"

# Create directories
New-Item -ItemType Directory -Force -Path "$javaPkg\model"
New-Item -ItemType Directory -Force -Path "$javaPkg\repository"
New-Item -ItemType Directory -Force -Path "$javaPkg\storage"
New-Item -ItemType Directory -Force -Path "$javaPkg\view"
New-Item -ItemType Directory -Force -Path "$javaPkg\renderer"
New-Item -ItemType Directory -Force -Path "$res\layout"
New-Item -ItemType Directory -Force -Path "$res\drawable"
New-Item -ItemType Directory -Force -Path "$res\values"
New-Item -ItemType Directory -Force -Path "$res\anim"

Write-Host "✅ Directories created"

# ── model/Pizza999.java ──────────────────────────────────────
Set-Content "$javaPkg\model\Pizza999.java" @'
package com.example.lab6_application_recettesdepizza.model;

public class Pizza999 {
    private static long NEXT_ID999 = 100;

    private final long uid999;
    private String title999;
    private double cost999;
    private int cover999;
    private String prepTime999;
    private String ingList999;
    private String about999;
    private String howTo999;

    public Pizza999() {
        this.uid999 = NEXT_ID999++;
    }

    public Pizza999(String title999, double cost999, int cover999,
                    String prepTime999, String ingList999,
                    String about999, String howTo999) {
        this.uid999 = NEXT_ID999++;
        this.title999 = title999;
        this.cost999 = cost999;
        this.cover999 = cover999;
        this.prepTime999 = prepTime999;
        this.ingList999 = ingList999;
        this.about999 = about999;
        this.howTo999 = howTo999;
    }

    public long getUid999()              { return uid999; }
    public String getTitle999()          { return title999; }
    public void setTitle999(String v)    { this.title999 = v; }
    public double getCost999()           { return cost999; }
    public void setCost999(double v)     { this.cost999 = v; }
    public int getCover999()             { return cover999; }
    public void setCover999(int v)       { this.cover999 = v; }
    public String getPrepTime999()       { return prepTime999; }
    public void setPrepTime999(String v) { this.prepTime999 = v; }
    public String getIngList999()        { return ingList999; }
    public void setIngList999(String v)  { this.ingList999 = v; }
    public String getAbout999()          { return about999; }
    public void setAbout999(String v)    { this.about999 = v; }
    public String getHowTo999()          { return howTo999; }
    public void setHowTo999(String v)    { this.howTo999 = v; }

    @Override
    public String toString() { return title999 + " | " + cost999 + " €"; }
}
'@

# ── repository/VaultRepo999.java ────────────────────────────
Set-Content "$javaPkg\repository\VaultRepo999.java" @'
package com.example.lab6_application_recettesdepizza.repository;

import java.util.List;

public interface VaultRepo999<T> {
    T insert999(T item);
    T modify999(T item);
    boolean remove999(long uid999);
    T fetchById999(long uid999);
    List<T> fetchAll999();
}
'@

# ── storage/PizzaVault999.java ───────────────────────────────
Set-Content "$javaPkg\storage\PizzaVault999.java" @'
package com.example.lab6_application_recettesdepizza.storage;

import com.example.lab6_application_recettesdepizza.R;
import com.example.lab6_application_recettesdepizza.model.Pizza999;
import com.example.lab6_application_recettesdepizza.repository.VaultRepo999;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PizzaVault999 implements VaultRepo999<Pizza999> {

    private static PizzaVault999 VAULT_INSTANCE999;
    private final List<Pizza999> vault999 = new ArrayList<>();

    private PizzaVault999() { loadDefaults999(); }

    public static PizzaVault999 getVault999() {
        if (VAULT_INSTANCE999 == null) VAULT_INSTANCE999 = new PizzaVault999();
        return VAULT_INSTANCE999;
    }

    private void loadDefaults999() {
        vault999.add(new Pizza999("BARBECUED CHICKEN PIZZA", 3, R.mipmap.pizza1, "35 min",
                "- 2 boneless skinless chicken breast halves (6 ounces each)\n- 1/4 teaspoon pepper\n- 1 cup barbecue sauce, divided\n- 1 tube (13.8 ounces) refrigerated pizza crust\n- 2 teaspoons olive oil\n- 2 cups shredded Gouda cheese\n- 1 small red onion, halved and thinly sliced\n- 1/4 cup minced fresh cilantro",
                "So fast and so easy with refrigerated pizza crust, these saucy, smoky pizzas make quick fans with their hot-off-the-grill, rustic flavor. Perfect for spur-of-the-moment cookouts and summer dinners on the patio. —Alicia Trevithick, Temecula, California",
                "STEP 1:\n\n  Sprinkle chicken with pepper; place on an oiled grill rack over medium heat. Grill, covered, until a thermometer reads 165°, 5-7 minutes per side, basting frequently with 1/2 cup barbecue sauce during the last 4 minutes. Cool slightly. Cut into cubes.\n\nSTEP 2:\n\n  Divide dough in half. On a well-greased large sheet of heavy-duty foil, press each portion of dough into a 10x8-in. rectangle; brush lightly with oil. Invert dough onto grill rack; peel off foil. Grill, covered, over medium heat until bottom is lightly browned, 1-2 minutes.\n\nSTEP 3:\n\n  Remove from grill. Spread grilled sides with remaining barbecue sauce. Top with cheese, chicken and onion. Grill, covered, until bottom is lightly browned and cheese is melted, 2-3 minutes. Sprinkle with cilantro."));

        vault999.add(new Pizza999("BRUSCHETTA PIZZA", 5, R.mipmap.pizza2, "35 min",
                "- 1/2 pound reduced-fat bulk pork sausage\n- 1 prebaked 12-inch pizza crust\n- 1 package (6 ounces) sliced turkey pepperoni\n- 2 cups shredded part-skim mozzarella cheese\n- 1-1/2 cups chopped plum tomatoes\n- 1/2 cup fresh basil leaves, thinly sliced\n- 1 tablespoon olive oil\n- 2 garlic cloves, minced",
                "You might need a knife and fork for this hearty pizza! Loaded with Italian flavor and plenty of fresh tomatoes, it's bound to become a family favorite. —Debra Kell, Owasso, Oklahoma",
                "STEP 1:\n\n  In a small skillet, cook sausage over medium heat until no longer pink; drain. Place crust on an ungreased baking sheet. Top with pepperoni, sausage and cheese. Bake at 450° for 10-12 minutes or until cheese is melted.\n\nSTEP 2:\n\n  In a small bowl, combine the tomatoes, sliced basil, oil, garlic, thyme, vinegar, salt and pepper. Spoon over pizza."));

        vault999.add(new Pizza999("SPINACH PIZZA", 2, R.mipmap.pizza3, "25 min",
                "- 1 package (6-1/2 ounces) pizza crust mix\n- 1/2 cup Alfredo sauce\n- 2 medium tomatoes\n- 4 cups chopped fresh spinach\n- 2 cups shredded Italian cheese blend",
                "This tasty pizza is so easy to prepare. My family, including my young daughter, loves it. —Dawn Bartholomew, Raleigh, North Carolina",
                "STEP 1:\n\n  Prepare pizza dough according to package directions. With floured hands, press dough onto a greased 12-in. pizza pan.\n\nSTEP 2:\n\n  Spread Alfredo sauce over dough to within 1 in. of edges. Top pizza with spinach, tomatoes and cheese.\n\nSTEP 3:\n\n  Bake at 450° for 10-15 minutes or until cheese is melted and crust is golden brown."));

        vault999.add(new Pizza999("DEEP-DISH SAUSAGE PIZZA", 8, R.mipmap.pizza4, "45 min",
                "- 1 package (1/4 ounce) active dry yeast\n- 2/3 cup warm water\n- 1-3/4 to 2 cups all-purpose flour\n- 1/4 cup vegetable oil\n- 1 teaspoon each dried oregano, basil and marjoram\n- 1/2 teaspoon garlic salt",
                "My Grandma made the tastiest snacks for us when we stayed the night at her farm. Her wonderful pizza, hot from the oven, was covered with cheese and fragrant herbs in the crust. —Michele Madden, Washington Court House, Ohio",
                "STEP 1:\n\n  Dissolve yeast in water. Add 1 cup flour, oil and seasonings; beat until smooth. Add enough flour to form soft dough. Knead 6-8 minutes. Let rise 1 hour.\n\nSTEP 2:\n\n  Roll dough into 15-in. circle. Transfer to well-greased skillet. Sprinkle with 1 cup mozzarella. Layer with vegetables, sausage, tomatoes and more cheese. Bake at 400° for 20 min, then add pepperoni and bake 10-15 more minutes."));

        vault999.add(new Pizza999("HOMEMADE PIZZA", 4, R.mipmap.pizza5, "50 min",
                "- 1 package (1/4 ounce) active dry yeast\n- 1 teaspoon sugar\n- 1-1/4 cups warm water\n- 1/4 cup canola oil\n- 1 teaspoon salt\n- 3-1/2 cups all-purpose flour\n- 1/2 pound ground beef\n- 1 small onion, chopped",
                "This recipe is a hearty, zesty main dish with a crisp, golden crust. Feel free to use whatever toppings your family enjoys. —Marianne Edwards, Lake Stevens, Washington",
                "STEP 1:\n\n  Dissolve yeast and sugar in water; let stand 5 minutes. Add oil and salt. Stir in flour until soft dough forms.\n\nSTEP 2:\n\n  Knead until smooth. Let rise 45 minutes. Cook beef and onion.\n\nSTEP 3:\n\n  Press dough into greased pizza pans. Spread tomato sauce, add beef, pepper, cheese.\n\nSTEP 4:\n\n  Bake at 400° for 25-30 minutes."));

        vault999.add(new Pizza999("PESTO CHICKEN PIZZA", 3, R.mipmap.pizza6, "50 min",
                "- 2 teaspoons active dry yeast\n- 1 cup warm water\n- 2-3/4 cups bread flour\n- 1 tablespoon olive oil\n- 1/2 pound boneless skinless chicken breasts\n- 1 small onion, thinly sliced\n- 1/2 each green, red and yellow peppers\n- 1/2 cup sliced fresh mushrooms\n- 3 tablespoons prepared pesto\n- 1-1/2 cups shredded mozzarella",
                "This is the only pizza I make now. Keeping the spices simple helps the flavors of the chicken and vegetables come through. —Heather Thompson, Woodland Hills, California",
                "STEP 1:\n\n  Dissolve yeast in water. Beat in flour, oil, sugar and salt. Knead 6-8 min. Let rise 1 hour.\n\nSTEP 2:\n\n  Cook chicken, onion, peppers and mushrooms in oil until done.\n\nSTEP 3:\n\n  Roll dough. Spread pesto. Top with chicken mixture and cheese.\n\nSTEP 4:\n\n  Bake at 400° for 18-20 minutes."));

        vault999.add(new Pizza999("LOADED MEXICAN PIZZA", 3, R.mipmap.pizza7, "30 min",
                "- 1 can (15 ounces) black beans, rinsed\n- 1 medium red onion, chopped\n- 1 small sweet yellow pepper, chopped\n- 3 teaspoons chili powder\n- 3/4 teaspoon ground cumin\n- 3 medium tomatoes, chopped\n- 1 jalapeno pepper, seeded\n- 1 prebaked 12-inch thin pizza crust\n- 2 cups chopped fresh spinach\n- 1/2 cup shredded cheddar cheese\n- 1/2 cup shredded pepper jack cheese",
                "My husband is a picky eater, but this healthy pizza has lots of flavor, and he actually looks forward to it. —Mary Barker, Knoxville, Tennessee",
                "STEP 1:\n\n  Mash black beans. Stir in onion, yellow pepper, chili powder and cumin. Combine tomatoes, jalapeno and garlic.\n\nSTEP 2:\n\n  Spread bean mixture on crust. Top with tomato mixture and spinach. Sprinkle with cilantro and cheeses.\n\nSTEP 3:\n\n  Bake at 400° for 12-15 minutes."));

        vault999.add(new Pizza999("BACON CHEESEBURGER PIZZA", 2, R.mipmap.pizza8, "20 min",
                "- 1/2 pound ground beef\n- 1 small onion, chopped\n- 1 prebaked Italian bread shell crust\n- 1 can (8 ounces) pizza sauce\n- 6 bacon strips, cooked and crumbled\n- 20 dill pickle coin slices\n- 2 cups shredded mozzarella cheese\n- 2 cups shredded cheddar cheese",
                "Kids of all ages love pizza and cheeseburgers, and this recipe combines them both. My grandchildren love to help assemble it! —Cherie Ackerman, Lakeland, Minnesota",
                "STEP 1:\n\n  Cook beef and onion over medium heat until meat is no longer pink; drain.\n\nSTEP 2:\n\n  Place crust on ungreased pizza pan. Spread with pizza sauce. Top with beef, bacon, pickles and cheeses. Bake at 450° for 8-10 minutes."));

        vault999.add(new Pizza999("PIZZA MARGHERITA", 1, R.mipmap.pizza9, "30 min",
                "- 3 teaspoons active dry yeast\n- 1 cup warm water\n- 2 tablespoons olive oil\n- 1 teaspoon sugar\n- 1 teaspoon salt\n- 3 cups bread flour\n- Fresh basil, mozzarella, plum tomatoes",
                "A classic Pizza Margherita named for Queen Margherita of Italy, showing the colors of the Italian flag. —Loretta Lawrence, Myrtle Beach, South Carolina",
                "STEP 1:\n\n  Dissolve yeast in warm water. Add oil, sugar, salt and 1 cup flour. Beat until smooth.\n\nSTEP 2:\n\n  Knead 6-8 minutes. Let rise 1 hour.\n\nSTEP 3:\n\n  Roll into 13-in. circles. Transfer to pizza pans.\n\nSTEP 4:\n\n  Top with tomatoes, basil, cheese. Bake at 450° for 15-20 minutes."));

        vault999.add(new Pizza999("PEPPERONI STUFFED PIZZA", 5, R.mipmap.pizza10, "45 min",
                "- 1 package (1/4 ounce) active dry yeast\n- 1-1/4 cups warm water\n- 2 tablespoons olive oil\n- 1-1/2 teaspoons salt\n- 3-1/2 cups all-purpose flour\n- Mozzarella, cheddar, sausage, mushrooms, pepperoni",
                "For 30 years, friends have been telling me to open a pizzeria using this recipe. It even freezes well. —Elizabeth Wolff, Carmel, Indiana",
                "STEP 1:\n\n  Dissolve yeast in water. Combine with oil, salt and flour. Knead until smooth. Let rise 1 hour.\n\nSTEP 2:\n\n  Press 2/3 dough into greased 13x9 pan. Top with cheeses, sausage, mushrooms and pepperoni.\n\nSTEP 3:\n\n  Roll remaining dough over top. Crimp edges. Add more cheese. Bake at 425° for 10 minutes.\n\nSTEP 4:\n\n  Reduce to 375°. Spread sauce. Bake 30-35 more minutes."));
    }

    @Override
    public Pizza999 insert999(Pizza999 p) { vault999.add(p); return p; }

    @Override
    public Pizza999 modify999(Pizza999 p) {
        for (int i = 0; i < vault999.size(); i++) {
            if (vault999.get(i).getUid999() == p.getUid999()) {
                vault999.set(i, p); return p;
            }
        }
        return null;
    }

    @Override
    public boolean remove999(long uid999) {
        return vault999.removeIf(x -> x.getUid999() == uid999);
    }

    @Override
    public Pizza999 fetchById999(long uid999) {
        for (Pizza999 p : vault999) if (p.getUid999() == uid999) return p;
        return null;
    }

    @Override
    public List<Pizza999> fetchAll999() { return Collections.unmodifiableList(vault999); }
}
'@

# ── renderer/SliceRenderer999.java ──────────────────────────
Set-Content "$javaPkg\renderer\SliceRenderer999.java" @'
package com.example.lab6_application_recettesdepizza.renderer;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.lab6_application_recettesdepizza.R;
import com.example.lab6_application_recettesdepizza.model.Pizza999;

import java.util.List;

public class SliceRenderer999 extends BaseAdapter {

    private final Context ctx999;
    private final List<Pizza999> slices999;

    public SliceRenderer999(Context ctx999, List<Pizza999> slices999) {
        this.ctx999 = ctx999;
        this.slices999 = slices999;
    }

    @Override public int getCount()          { return slices999.size(); }
    @Override public Object getItem(int i)   { return slices999.get(i); }
    @Override public long getItemId(int i)   { return slices999.get(i).getUid999(); }

    static class Holder999 {
        ImageView coverImg999;
        TextView nameTag999;
        TextView infoTag999;
    }

    @Override
    public View getView(int pos, View recycled, ViewGroup parent) {
        Holder999 holder;
        if (recycled == null) {
            recycled = LayoutInflater.from(ctx999).inflate(R.layout.row_slice999, parent, false);
            holder = new Holder999();
            holder.coverImg999 = recycled.findViewById(R.id.coverImg999);
            holder.nameTag999  = recycled.findViewById(R.id.nameTag999);
            holder.infoTag999  = recycled.findViewById(R.id.infoTag999);
            recycled.setTag(holder);
        } else {
            holder = (Holder999) recycled.getTag();
        }

        Pizza999 p = slices999.get(pos);
        holder.coverImg999.setImageResource(p.getCover999());
        holder.nameTag999.setText(p.getTitle999());
        holder.infoTag999.setText("⏱ " + p.getPrepTime999() + "   💰 " + p.getCost999() + " €");

        return recycled;
    }
}
'@

# ── view/BootScreen999.java ──────────────────────────────────
Set-Content "$javaPkg\view\BootScreen999.java" @'
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
'@

# ── view/CatalogScreen999.java ───────────────────────────────
Set-Content "$javaPkg\view\CatalogScreen999.java" @'
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
'@

# ── view/RecipeScreen999.java ────────────────────────────────
Set-Content "$javaPkg\view\RecipeScreen999.java" @'
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
'@

Write-Host "✅ Java files created"

# ── Layout: activity_boot999.xml ────────────────────────────
Set-Content "$res\layout\activity_boot999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#1A0A00">

    <LinearLayout
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerInParent="true"
        android:orientation="vertical"
        android:gravity="center">

        <ImageView
            android:id="@+id/bootLogo999"
            android:layout_width="160dp"
            android:layout_height="160dp"
            android:src="@mipmap/pizza1"
            android:scaleType="centerCrop"/>

        <TextView
            android:id="@+id/bootTagline999"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginTop="24dp"
            android:text="🍕 PizzaVault"
            android:textColor="#FF6B35"
            android:textSize="32sp"
            android:textStyle="bold"/>

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginTop="8dp"
            android:text="Craft. Bake. Devour."
            android:textColor="#FFAA80"
            android:textSize="16sp"/>

    </LinearLayout>

</RelativeLayout>
'@

# ── Layout: activity_catalog999.xml ─────────────────────────
Set-Content "$res\layout\activity_catalog999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:background="#FFF8F5">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="64dp"
        android:background="#FF6B35"
        android:gravity="center_vertical"
        android:paddingStart="16dp"
        android:paddingEnd="16dp">

        <TextView
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="🍕 PizzaVault"
            android:textColor="#FFFFFF"
            android:textSize="22sp"
            android:textStyle="bold"/>
    </LinearLayout>

    <ListView
        android:id="@+id/pizzaCatalog999"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:divider="#FFE0D0"
        android:dividerHeight="1dp"/>

</LinearLayout>
'@

# ── Layout: row_slice999.xml ─────────────────────────────────
Set-Content "$res\layout\row_slice999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="100dp"
    android:background="#FFFFFF"
    android:padding="10dp">

    <ImageView
        android:id="@+id/coverImg999"
        android:layout_width="90dp"
        android:layout_height="80dp"
        android:layout_centerVertical="true"
        android:scaleType="centerCrop"/>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_toEndOf="@id/coverImg999"
        android:layout_marginStart="14dp"
        android:layout_centerVertical="true"
        android:orientation="vertical">

        <TextView
            android:id="@+id/nameTag999"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textColor="#1A0A00"
            android:textSize="15sp"
            android:textStyle="bold"
            android:maxLines="2"/>

        <TextView
            android:id="@+id/infoTag999"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginTop="6dp"
            android:textColor="#FF6B35"
            android:textSize="13sp"/>

    </LinearLayout>

</RelativeLayout>
'@

# ── Layout: activity_recipe999.xml ──────────────────────────
Set-Content "$res\layout\activity_recipe999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<ScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#FFF8F5">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="vertical">

        <ImageView
            android:id="@+id/heroImg999"
            android:layout_width="match_parent"
            android:layout_height="240dp"
            android:scaleType="centerCrop"/>

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:orientation="vertical"
            android:padding="16dp">

            <TextView
                android:id="@+id/heroTitle999"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:textColor="#1A0A00"
                android:textSize="22sp"
                android:textStyle="bold"/>

            <TextView
                android:id="@+id/heroMeta999"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="6dp"
                android:textColor="#FF6B35"
                android:textSize="14sp"/>

            <View
                android:layout_width="match_parent"
                android:layout_height="1dp"
                android:layout_marginTop="14dp"
                android:layout_marginBottom="14dp"
                android:background="#FFD0B0"/>

            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="📖 Description"
                android:textColor="#CC3300"
                android:textSize="16sp"
                android:textStyle="bold"/>

            <TextView
                android:id="@+id/aboutBody999"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="6dp"
                android:textColor="#333333"
                android:textSize="14sp"
                android:lineSpacingExtra="4dp"/>

            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="16dp"
                android:text="🧂 Ingredients"
                android:textColor="#CC3300"
                android:textSize="16sp"
                android:textStyle="bold"/>

            <TextView
                android:id="@+id/ingBody999"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="6dp"
                android:textColor="#333333"
                android:textSize="14sp"
                android:lineSpacingExtra="4dp"/>

            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="16dp"
                android:text="👨‍🍳 Steps"
                android:textColor="#CC3300"
                android:textSize="16sp"
                android:textStyle="bold"/>

            <TextView
                android:id="@+id/stepsBody999"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_marginTop="6dp"
                android:layout_marginBottom="24dp"
                android:textColor="#333333"
                android:textSize="14sp"
                android:lineSpacingExtra="4dp"/>

        </LinearLayout>
    </LinearLayout>
</ScrollView>
'@

Write-Host "✅ Layout XML files created"

# ── Animations ───────────────────────────────────────────────
Set-Content "$res\anim\fade_in999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<alpha xmlns:android="http://schemas.android.com/apk/res/android"
    android:duration="1200"
    android:fromAlpha="0.0"
    android:toAlpha="1.0"/>
'@

Set-Content "$res\anim\slide_up999.xml" @'
<?xml version="1.0" encoding="utf-8"?>
<translate xmlns:android="http://schemas.android.com/apk/res/android"
    android:duration="900"
    android:fromYDelta="60dp"
    android:toYDelta="0dp"/>
'@

Write-Host "✅ Animation files created"

# ── AndroidManifest.xml PATCH REMINDER ───────────────────────
Write-Host ""
Write-Host "⚠️  IMPORTANT: Update your AndroidManifest.xml manually:"
Write-Host "   Replace the existing <activity> entries with the block below"
Write-Host ""
Write-Host @'
<!-- Paste inside <application> in AndroidManifest.xml -->
<activity android:name=".view.BootScreen999"
    android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.MAIN"/>
        <category android:name="android.intent.category.LAUNCHER"/>
    </intent-filter>
</activity>

<activity android:name=".view.CatalogScreen999" android:exported="false"/>
<activity android:name=".view.RecipeScreen999"  android:exported="false"/>
'@

Write-Host ""
Write-Host "🎉 PizzaVault setup complete! Open the project in Android Studio and Sync Gradle."
