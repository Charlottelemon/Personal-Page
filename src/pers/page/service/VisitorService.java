package pers.page.service;

import pers.page.dao.VisitorDao;
import pers.page.po.Visitor;

public class VisitorService {
    private VisitorDao visitorDao = new VisitorDao();
    //login
    public Visitor login(String vname,String password)
    {
        return visitorDao.find(vname,password);
    }
    //reg
    public int reg(Visitor visitor)
    {
        return visitorDao.add(visitor);
    }
}
