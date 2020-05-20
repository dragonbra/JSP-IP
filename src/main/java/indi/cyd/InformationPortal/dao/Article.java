package indi.cyd.InformationPortal.dao;

public class Article {
    private String author;
    private String title;
    private String content;
    private long id;
    private long mydate;
    private String partof;
    private String rootpartof;

    public Article() {
        rootpartof = title = author = content = partof = "";
    }

    public Article(String title, String author, String content, long mydate, String partof, String rootpartof, long id) {
        this.author = author;
        this.content = content;
        this.title = title;
        this.id = id;
        this.partof = partof;
        this.mydate = mydate;
        this.rootpartof = rootpartof;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getMydate() {
        return mydate;
    }

    public void setMydate(long date) {
        this.mydate = date;
    }

    public String getPartof() {
        return partof;
    }

    public void setPartof(String partof) {
        this.partof = partof;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRootpartof() {
        return rootpartof;
    }

    public void setRootpartof(String rootpartof) {
        this.rootpartof = rootpartof;
    }
}
