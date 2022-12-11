package com.example.javawebdemo1.data;

/**
 * @Title Account
 * @Author SoHugePenguin
 * @date 2022/12/11 21:52
 */
public class Account {
    private String userName;
    private String userPwd;
    private String gender;

    public Account() {
    }

    public Account(String userName, String userPwd, String gender) {
        this.userName = userName;
        this.userPwd = userPwd;
        this.gender = gender;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Account{" +
                "userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }
}
