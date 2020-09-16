package pers.page.dao;

import pers.page.po.Message;
import pers.page.util.DBUtil;
import pers.page.vo.MessageVo;

import java.sql.*;
import java.util.ArrayList;

public class MessageDao {
    //留言
    public int leave(Message message) {
        //获取连接
        Connection conn = DBUtil.getConn();
        //sql语句
        String sql = "insert into message(Mtime,Mvalue,Vid) values(?,?,?)";
        PreparedStatement pstmt = null;
        int result = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, message.getMtime());
            pstmt.setString(2, message.getMvalue());
            pstmt.setInt(3,message.getVid());
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
    //展示留言
    public ArrayList<MessageVo> display(){
        Connection conn = DBUtil.getConn();
        String sql = "select m.Mno,m.Mtime,m.Mvalue,v.Vname from visitor v, message m where v.Vno=m.Vid order by m.Mno desc ;";
        PreparedStatement pstmt = null;
        ResultSet rSet;
        //String result = null;
        ArrayList<MessageVo> mitem = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement(sql);
            //pstmt.setInt(1, mno);
            rSet = pstmt.executeQuery();
            while (rSet.next()) {
                MessageVo messageVo = new MessageVo();
                messageVo.setMno(rSet.getInt(1));
                messageVo.setMtime(rSet.getString(2));
                messageVo.setMvalue(rSet.getString(3));
                messageVo.setVname(rSet.getString(4));
                //message.setVid(rSet.getInt(4));
                mitem.add(messageVo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closePstmt(pstmt);
            DBUtil.closeConn(conn);
        }
        return mitem;
    }

}
