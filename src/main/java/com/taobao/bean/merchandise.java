package com.taobao.bean;

public class merchandise {

    private int id;

    private String dis_img_source;

    private String m_dis;

    private float price;

    private int purchased_num;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDis_img_source() {
        return dis_img_source;
    }

    public void setDis_img_source(String dis_img_source) {
        this.dis_img_source = dis_img_source;
    }

    public String getM_dis() {
        return m_dis;
    }

    public void setM_dis(String m_dis) {
        this.m_dis = m_dis;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getPurchased_num() {
        return purchased_num;
    }

    public void setPurchased_num(int purchased_num) {
        this.purchased_num = purchased_num;
    }
}
