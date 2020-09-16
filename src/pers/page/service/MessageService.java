package pers.page.service;

import pers.page.dao.MessageDao;
import pers.page.po.Message;
import pers.page.vo.MessageVo;

import java.util.ArrayList;

public class MessageService {
    private MessageDao messageDao = new MessageDao();
    //add
    public int add(Message message)
    {
        return messageDao.leave(message);
    }
    //show
    public ArrayList<MessageVo> show()
    {
        return messageDao.display();
    }
}
