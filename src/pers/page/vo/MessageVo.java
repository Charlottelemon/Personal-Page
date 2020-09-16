package pers.page.vo;

public class MessageVo {
    private int mno;
    private String mtime;
    private String mvalue;
    private String vname;

    public void setMno(int mno) {
        this.mno = mno;
    }

    public void setMtime(String mtime) {
        this.mtime = mtime;
    }

    public void setMvalue(String mvalue) {
        this.mvalue = mvalue;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public int getMno() {
        return mno;
    }

    public String getMtime() {
        return mtime;
    }

    public String getMvalue() {
        return mvalue;
    }

    public String getVname() {
        return vname;
    }
}
