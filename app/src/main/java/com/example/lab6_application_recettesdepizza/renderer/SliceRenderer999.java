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
