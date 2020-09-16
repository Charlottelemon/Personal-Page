package pers.page.servlet;

import pers.page.service.MessageService;
import pers.page.service.VisitorService;
import pers.page.vo.MessageVo;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class IndexServlet extends HttpServlet {
    private MessageService messageService = new MessageService();
    private VisitorService visitorService = new VisitorService();

    protected void allInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String vname = request.getParameter("vname");
        System.out.println("vname:"+vname);
        request.setAttribute("vname",vname);
        ArrayList<MessageVo> messageList;
        messageList = messageService.show();
        request.setAttribute("messageList", messageList);
        for (MessageVo messageVo:messageList) {
            System.out.println("messageVo mno:" + messageVo.getMno());
            System.out.println("messageVo mtime:" + messageVo.getMtime());
            System.out.println("messageVo mvalue:" + messageVo.getMvalue());
            System.out.println("messageVo vname:" + messageVo.getVname());
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String method = request.getParameter("method");
            System.out.println("method:"+method);
            if ("allInfo".equals(method)) {
                allInfo(request, response);
            }
    }
}
