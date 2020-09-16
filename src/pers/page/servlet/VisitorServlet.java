package pers.page.servlet;

import pers.page.po.Visitor;
import pers.page.service.VisitorService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class VisitorServlet extends HttpServlet {
    private VisitorService visitorService = new VisitorService();

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public VisitorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        // 获取请求参数
        String name = request.getParameter("vname");
        String pwd = request.getParameter("password");
        // 登录
        Visitor visitor = visitorService.login(name, pwd);
        // 成功——/index.jsp
        if (visitor != null) {
            // 将用户信息存放在session中
            HttpSession session = request.getSession();
            session.setAttribute("visitor", visitor);
            // 转发
            request.getRequestDispatcher("/IndexServlet?method=allInfo").forward(request, response);
            /*PrintWriter out = response.getWriter();
            out.print("<script>"+"window.location.href = '"+request.getContextPath()+"/IndexServlet?method=allInfo';"+"</script>");*/
        }
        // 失败——/login.jsp
        else {
            PrintWriter out = response.getWriter();
            out.print("<script>" + "alert('用户名或密码错误');" + "window.location.href='" + request.getContextPath()
                    + "/login.jsp';" + "</script>");
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 从session删除用户信息
        HttpSession session = request.getSession();
        session.removeAttribute("visitor");
        // 跳转到登录页面
        PrintWriter out = response.getWriter();
        out.print(
                "<script>" + "window.parent.location.href='" + request.getContextPath() + "/login.jsp';" + "</script>");
    }

    protected void reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String vname = request.getParameter("vname");
        String idStr = request.getParameter("vsex");
        int vsex = Integer.parseInt(idStr);
        String password = request.getParameter("password");

        Visitor visitor = new Visitor();
        visitor.setVname(vname);
        visitor.setVsex(vsex);
        visitor.setPassword(password);

        int result = visitorService.reg(visitor);
        PrintWriter out = response.getWriter();
        if (result == 1) {
            out.print("<script>" + "alert('注册成功');" + "window.location.href='" + request.getContextPath()
                    + "/login.jsp';" + "</script>");
        } else {
            out.print("<script>" + "alert('注册失败');" + "window.location.href='" + request.getContextPath()
                    + "/register.jsp';" + "</script>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        System.out.println("method:"+method);
        if ("login".equals(method)) {
            login(request, response);
        } else if ("logout".equals(method)) {
            logout(request, response);
        } else if ("reg".equals(method)) {
            reg(request, response);
        }
    }
}
