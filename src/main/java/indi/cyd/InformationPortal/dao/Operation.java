package indi.cyd.InformationPortal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Operation {
    public static int insertAccount(Account account) {

        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "insert into account (name,id,password,permissions,email) values(?,?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, account.getName());
            pstmt.setLong(2, account.getId());
            pstmt.setString(3, account.getPassword());
            pstmt.setLong(4, account.getPermission());
            pstmt.setString(5, account.getEmail());
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            //e.printStackTrace();
        }
        return i;
    }

    public static int insertArticle(Article article) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "insert into article (title,author,content,mydate,partof,rootpartof,id) values(?,?,?,?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, article.getTitle());
            pstmt.setString(2, article.getAuthor());
            pstmt.setString(3, article.getContent());
            pstmt.setLong(4, article.getMydate());
            pstmt.setString(5, article.getPartof());
            pstmt.setString(6, article.getRootpartof());
            pstmt.setLong(7, article.getId());
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public static int updateAccount(Account account) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "update account set name = ? , password = ?,permissions = ?,email = ? where name= ? ";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, account.getName());
            pstmt.setString(2, account.getPassword());
            pstmt.setLong(3, account.getPermission());
            pstmt.setString(4, account.getEmail());
            pstmt.setString(5, account.getName());
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public static int updateArticle(Article article) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "update article set title = ?,author = ?,content = ?,mydate = ?,partof = ?,rootpartof = ? where id= ? ";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, article.getTitle());
            pstmt.setString(2, article.getAuthor());
            pstmt.setString(3, article.getContent());
            pstmt.setLong(4, article.getMydate());
            pstmt.setString(5, article.getPartof());
            pstmt.setString(6, article.getRootpartof());
            pstmt.setLong(7, article.getId());
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public static Account getAccount(String name) {
        Connection conn = DataInformation.getConn();
        String sql = "select * from account where name = ?";
        PreparedStatement pstmt;
        long id = -1;
        String password = "";
        int permission = 0;
        String email = "";
        String info = "";
        String status = "";
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, name);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                id = rs.getLong("id");
                password = rs.getString("password");
                permission = Integer.valueOf(rs.getString("permission"));
                email = rs.getString("email");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Account ans = new Account(name, password, id, email,permission);
        return ans;
    }

    public static Article getArticle(long id) {
        Connection conn = DataInformation.getConn();
        String sql = "select * from article where id = ?";
        PreparedStatement pstmt;
        String title = "";
        String author = "";
        String content = "";
        long mydate = 0;
        String partof = "";
        String rootpartof = "";
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setLong(1, id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                title = rs.getString("title");
                author = rs.getString("author");
                mydate = rs.getLong("mydate");
                content = rs.getString("content");
                partof = rs.getString("partof");
                rootpartof=rs.getString("rootpartof");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Article ans = new Article(title, author, content, mydate, partof,rootpartof, id);
        return ans;
    }

    public static int deleteAccount(String name) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "delete from account where name= ?";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, name);
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public static int deleteArticle(long id) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "delete from article where id=?";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setLong(1, id);
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public static List<Article> getArticlePartof(String partof, int begin, int limit) {
        int num = getArticlePartofNum(partof);
        if (begin + limit > num) limit = num - begin;
        List<Article> ans = new ArrayList<>();
        Connection conn = DataInformation.getConn();
        String sql = "select * from article where partof = ? order by mydate desc limit ?,?";
        PreparedStatement pstmt;
        String title = "";
        String author = "";
        String rootpartof="";
        long mydate = 0;
        long id = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, partof);
            pstmt.setInt(2, begin);
            pstmt.setInt(3, limit);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                title = rs.getString("title");
                author = rs.getString("author");
                mydate = rs.getLong("mydate");
                partof = rs.getString("partof");
                rootpartof = rs.getString("rootpartof");
                id = rs.getLong("id");
                ans.add(new Article(title, author, "", mydate, partof,rootpartof, id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }
    public static List<Article> getAllArticle() {
        List<Article> ans = new ArrayList<>();
        Connection conn = DataInformation.getConn();
        String sql = "select * from article order by mydate ";
        PreparedStatement pstmt;
        String title = "";
        String author = "";
        String rootpartof="";
        String partof="";
        long mydate = 0;
        long id = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                title = rs.getString("title");
                author = rs.getString("author");
                mydate = rs.getLong("mydate");
                partof = rs.getString("partof");
                rootpartof = rs.getString("rootpartof");
                id = rs.getLong("id");
                ans.add(new Article(title, author, "", mydate, partof,rootpartof, id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }

    public static int getArticlePartofNum(String partof) {
        int ans = 0;
        Connection conn = DataInformation.getConn();
        String sql = "select count(*) from article where partof = ?";
        PreparedStatement pstmt;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, partof);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            ans = rs.getInt(1);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }
    public static List<Article> getArticleRootpartof(String rootpartof, int begin, int limit) {
        int num = getArticleRootpartofNum(rootpartof);
        if (begin + limit > num) limit = num - begin;
        List<Article> ans = new ArrayList<>();
        Connection conn = DataInformation.getConn();
        String sql = "select * from article where rootpartof = ? order by mydate desc limit ?,?";
        PreparedStatement pstmt;
        String title = "";
        String author = "";
        String partof="";
        long mydate = 0;
        long id = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rootpartof);
            pstmt.setInt(2, begin);
            pstmt.setInt(3, limit);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                title = rs.getString("title");
                author = rs.getString("author");
                mydate = rs.getLong("mydate");
                partof = rs.getString("partof");
                rootpartof = rs.getString("rootpartof");
                id = rs.getLong("id");
                ans.add(new Article(title, author, "", mydate, partof,rootpartof, id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }
    public static int getArticleRootpartofNum(String rootpartof) {
        int ans = 0;
        Connection conn = DataInformation.getConn();
        String sql = "select count(*) from article where rootpartof = ?";
        PreparedStatement pstmt;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rootpartof);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            ans = rs.getInt(1);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }
    public static int insertPartof(String rootpartof,String partof) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "insert into partof (rootpartof,partof) values(?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, rootpartof);
            pstmt.setString(2, partof);
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
    public static int deletePartof(String rootpartof,String partof) {
        Connection conn = DataInformation.getConn();
        int i = 0;
        String sql = "delete from partof where rootpartof= ? and partof= ?";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, rootpartof);
            pstmt.setString(2,partof);
            i = pstmt.executeUpdate();
            pstmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
    public static List<String> getPartof(String rootpartof) {
        List<String> ans = new ArrayList<>();
        Connection conn = DataInformation.getConn();
        String sql = "select * from partof where rootpartof = ?";
        PreparedStatement pstmt;
        String partof="";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rootpartof);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                partof = rs.getString("partof");
                ans.add(partof);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ans;
    }
}
