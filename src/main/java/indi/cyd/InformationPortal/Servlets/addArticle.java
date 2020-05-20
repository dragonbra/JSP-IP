package indi.cyd.InformationPortal.Servlets;

import indi.cyd.InformationPortal.dao.Account;
import indi.cyd.InformationPortal.dao.Article;
import indi.cyd.InformationPortal.dao.Operation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/addArticle")
public class addArticle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        if (session.getAttribute("Account") == null) {

            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\"> ");
            out.println("alert('请登录');");
            out.print("window.location.href='login.jsp';");
            out.print("</script>");
            return;
        }
        Account account = (Account) session.getAttribute("Account");
        if (account.getPermissions() < 1)
        {
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\">");
            out.println("alert('您没有权限');");
            out.print("window.location.href='login.jsp';");
            out.print("</script>");
            return;
        }
        Article article = (Article) session.getAttribute("Article");
        String gx = request.getParameter("gx");//0更新文章 1新文章
        String title = request.getParameter("title1");
        String partof = request.getParameter("partof");
        String content = request.getParameter("editor1");
        String rootpartof = request.getParameter("rootpartof");
        if(title==null||title.equals(""))title="无标题";
        long date = new Date().getTime();
        if (gx.equals("1")) {
            article = new Article(title, account.getName(), content, date, partof,rootpartof, date);
            Operation.insertArticle(article);

        } else {
            if (request.getParameter("sc") != null && request.getParameter("sc").equals("1"))
            {
                Operation.deleteArticle(article.getId());

                response.setCharacterEncoding("UTF-8");
                PrintWriter out = response.getWriter();
                out.print("<script type=\"text/javascript\">");
                out.print("window.location.href='getpart.jsp?partof=" + article.getPartof()+"';");
                out.print("</script>");
                return;
            }
            article.setTitle(title);
            article.setPartof(partof);
            article.setRootpartof(rootpartof);
            article.setContent(content);
            if(partof=="中心概况"){
                ;
            }
            date = article.getMydate();
            Operation.updateArticle(article);
        }
        if(request.getParameter("toindex")!=null&&request.getParameter("toindex").equals("1")){
            session.setAttribute("article_id","getarticle.jsp?article_id="+date);
            response.sendRedirect("./index.jsp");
        }
        else response.sendRedirect("./getarticle.jsp?article_id=" + date);
    }
}
