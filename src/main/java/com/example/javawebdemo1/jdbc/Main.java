package com.example.javawebdemo1.jdbc;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

public class Main {
    public static Connection connection;
    public static Statement statement;

    public static void common_connection() throws Exception {
        //1.注册驱动
        Class.forName("com.mysql.cj.jdbc.Driver");
        //2.获取连接
        //url = 服务器地址 + database数据库名
        //String url = "jdbc:mysql://localhost:3306/my_first_schema";
        //本机且默认端口3306情况下可以用///简写；
        //useSSL=true 是否有密码连接ssl
        //useServerPrepStmts=true  启动预加载
        String url = "jdbc:mysql:///my_first_schema?useSSL=true&useServerPrepStmts=true";
        String username = "root";
        String password = "123456";
        connection = DriverManager.getConnection(url, username, password);
        //4.获取执行sql的对象Statement控制台
        statement = connection.createStatement();
    }

    public static void druid_connection() throws Exception {
        //1.导入druid.jar
        //2.定义配置文件 -- druid.properties
        //3.加载配置文件
        Properties prop = new Properties();
        InputStream in = Main.class.getResourceAsStream("/druid.properties");
        prop.load(in);
        //4.获取连接池对象
        DataSource dataSource = DruidDataSourceFactory.createDataSource(prop);
        //5.获取数据连接 Connection
        connection = dataSource.getConnection();
        //4.获取执行sql的对象Statement控制台
        statement = connection.createStatement();
    }
}