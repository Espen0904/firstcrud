package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class student {
    public String a, b, c, d, e;
    public String[][] students =new String [100][5];
    public int addstu(String studentnumber, String name, String age, String gender, String phonenumber) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "123456");
        String sql = "insert into data values(?,?,?,?,?)";
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setString(1, studentnumber);
        pst.setString(2, name);
        pst.setString(3, age);
        pst.setString(4, gender);
        pst.setString(5, phonenumber);

        int temp = pst.executeUpdate();
        pst.close();
        connection.close();

        return temp;
    }

    public int readstu(String studentnumber,String name) throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "123456");
        String sql="select * from data";
        Statement stmt= conn.createStatement();
        ResultSet read=stmt.executeQuery(sql);
        int temp=0;
        while(read.next()) {
            String sstudentnumber=read.getString(1);
            String sname=read.getString(2);
            if(sstudentnumber.equals(studentnumber)||sname.equals(name)){
                temp=1;
                a=read.getString(1);
                b=read.getString(2);
                c=read.getString(3);
                d=read.getString(4);
                e=read.getString(5);
                break;
            }
        }

        read.close();
        stmt.close();
        conn.close();
        return temp;
    }

    public int deletestu(String studentnumber) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "123456");
        String sql ="delete from data where studentnumber='"+studentnumber+"'";
        Statement delete=conn.createStatement();
        int temp=delete.executeUpdate(sql);

        delete.close();
        conn.close();
        return temp;
    }

    public int updatestu(String studentnumber,String name,String age,String gender,String phonenumber) throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "123456");
        String sql = "update data set studentnumber='"+studentnumber+"',name='"+name+"',age='"+age+"',gender='"+gender+"',phonenumber='"+phonenumber+"'where studentnumber='"+studentnumber+"'";
        Statement change=conn.createStatement();
        int temp=change.executeUpdate(sql);


        change.close();
        conn.close();

        return temp;
    }

    public int browsestu() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "123456");
        String sql="select * from data";
        Statement stmt= conn.createStatement();
        ResultSet read=stmt.executeQuery(sql);
        int temp=0;

        for(int i=0;read.next();i++) {

            students[i][0]=read.getString(1);
            students[i][1]=read.getString(2);
            students[i][2]=read.getString(3);
            students[i][3]=read.getString(4);
            students[i][4]=read.getString(5);

        }

        read.close();
        stmt.close();
        conn.close();
        return temp;
    }

}
