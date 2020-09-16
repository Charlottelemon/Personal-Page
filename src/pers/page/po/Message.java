package pers.page.po;

public class Message {
    private int mno;
    private String mvalue;
    private String mtime;
    private int vid;

    public void setMno(int mno) {
        this.mno = mno;
    }

    public void setMvalue(String mvalue) {
        this.mvalue = mvalue;
    }

    public void setMtime(String mtime) {
        this.mtime = mtime;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public int getMno() {
        return mno;
    }

    public String getMvalue() {
        return mvalue;
    }

    public String getMtime() {
        return mtime;
    }

    public int getVid() {
        return vid;
    }
}
