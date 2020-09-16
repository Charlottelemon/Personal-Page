package pers.page.po;

public class Visitor {
    private int vno;
    private String vname;
    private int vsex;
    private String password;

    public void setVno(int vno) {
        this.vno = vno;
    }

    public void setVname(String vname)
    {
        this.vname=vname;
    }

    public void setVsex(int vsex)
    {
        this.vsex=vsex;
    }

    public void setPassword(String password)
    {
        this.password=password;
    }

    public int getVno() {
        return vno;
    }

    public String getVname()
    {
        return vname;
    }

    public int getVsex()
    {
        return vsex;
    }

    public String getPassword()
    {
        return password;
    }
}
