package com.bean;

import java.util.Date;

public class LeaveBill {
    private int id;
    private int days;
    private String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public UserTb getUserTb() {
        return userTb;
    }

    public void setUserTb(UserTb userTb) {
        this.userTb = userTb;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    private Date date;
    private String remark;
    private UserTb userTb;
    private int state;
}
