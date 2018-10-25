package com.bean;

import java.util.Date;

public class Books {
    private Integer bookid;

    private String bookname;

    private Integer issuedcount;

    private Date issueddate;

    private String bookstate;

    private String bookremark;

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public Integer getIssuedcount() {
        return issuedcount;
    }

    public void setIssuedcount(Integer issuedcount) {
        this.issuedcount = issuedcount;
    }

    public Date getIssueddate() {
        return issueddate;
    }

    public void setIssueddate(Date issueddate) {
        this.issueddate = issueddate;
    }

    public String getBookstate() {
        return bookstate;
    }

    public void setBookstate(String bookstate) {
        this.bookstate = bookstate == null ? null : bookstate.trim();
    }

    public String getBookremark() {
        return bookremark;
    }

    public void setBookremark(String bookremark) {
        this.bookremark = bookremark == null ? null : bookremark.trim();
    }
}