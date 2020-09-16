package pers.page.servlet;

import pers.page.po.Message;
import pers.page.service.MessageService;
import pers.page.vo.MessageVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class MessageServlet extends HttpServlet {
    private MessageService messageService = new MessageService();

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        String mvalue = request.getParameter("mvalue");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String mtime = simpleDateFormat.format(new Date());
        Integer vid = Integer.valueOf(request.getParameter("vid"));

        Message mess = new Message();
        mess.setMtime(mtime);
        mess.setMvalue(mvalue);
        mess.setVid(vid);

        int result = messageService.add(mess);
        PrintWriter out = response.getWriter();
        if (result == 1) {
            HttpSession session = request.getSession();
            session.removeAttribute("message");
            out.print("<script>" + "alert('提交成功');" + "window.parent.location.href='" + request.getContextPath()
                    +"/index.jsp';" + "</script>");
        } else {
            out.print("<script>" + "alert('提交失败，请重试');" + "window.location.href='" + request.getContextPath()
                    + "/index.jsp';" + "</script>");
        }

    }

    protected void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<MessageVo> messageList;
        messageList = messageService.show();
        request.setAttribute("messageList", messageList);
        for (MessageVo messageVo:messageList){
            System.out.println("messageVo mno:"+messageVo.getMno());
            System.out.println("messageVo mtime:"+messageVo.getMtime());
            System.out.println("messageVo mvalue:"+messageVo.getMvalue());
            System.out.println("messageVo vname:"+messageVo.getVname());
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // TODO Auto-generated method stub
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String method = request.getParameter("method");
        if ("add".equals(method)) {
            add(request, response);
        } else if ("show".equals(method)) {
            show(request, response);

        }

    }
}
