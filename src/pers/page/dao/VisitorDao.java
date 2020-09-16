package pers.page.dao;

import pers.page.po.Visitor;
import pers.page.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VisitorDao {
    //注册用户
    public int add(Visitor visitor) {
        //获取连接
        Connection conn = DBUtil.getConn();
        //sql语句
        String sql = "insert into visitor(Vname,Vsex,Password) values(?,?,?)";
        PreparedStatement pstmt = null;
        int result = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, visitor.getVname());
            pstmt.setInt(2, visitor.getVsex());
            pstmt.setString(3, visitor.getPassword());
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.closePstmt(pstmt);
            DBUtil.closeConn(conn);
        }
        return result;
    }

    //用户登录
    public Visitor find(String vname, String password) {
        Connection conn = DBUtil.getConn();
        String sql = "select * from visitor where Vname=? && Password=?";
        PreparedStatement pstmt = null;
        ResultSet rSet = null;
        Visitor visitor = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vname);
            pstmt.setString(2, password);
            rSet = pstmt.executeQuery();
            if (rSet.next()) {
                visitor = new Visitor();
                visitor.setVno(rSet.getInt(1));
                visitor.setVname(rSet.getString(2));
                visitor.setVsex(rSet.getInt(3));
                visitor.setPassword(rSet.getString(4));

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBUtil.closeRst(rSet);
            DBUtil.closePstmt(pstmt);
            DBUtil.closeConn(conn);
        }
        return  visitor;
    }
}
