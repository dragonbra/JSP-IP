package indi.cyd.InformationPortal.dao;

public class Account {
    private String name;  //用户名
    private long id;  //用户id
    private String password; //密码
    private String email; //用户邮箱
    private int permission; //权限 零为管理员，非零为非管理员
    public Account(String name,String password,long id,String email,int permission) {
        this.email = email;
        this.id = id;
        this.name = name;
        this.permission = permission;
        this.password = password;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }

    public int getPermission() {
        return permission;
    }

    public String getInfo() {
        String ans = "";
        ans += "用户名为" + getName() + "\n";
        ans += "用户id为" + String.valueOf(getId()) + "\n";
        ans += "用户邮箱为" + getEmail() + "\n";
        ans += "是否为管理员？" + getPermission() == 0 + "\n";
        return ans;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
}
