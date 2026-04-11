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
