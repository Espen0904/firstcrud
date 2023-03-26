<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/28
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>学生信息浏览</title>
</head>
<%

    student stu=new student();
    try {
        stu.browsestu();
    } catch (Exception e) {
        e.printStackTrace();
    }

    for(int i=0;stu.students[i][0]!=null;i++){

        out.println("----------------------------"+"<br>");
        out.println("学号:"+stu.students[i][0]+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("姓名:"+stu.students[i][1]+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("年龄:"+stu.students[i][2]+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("性别:"+stu.students[i][3]+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("电话号码:"+stu.students[i][4]+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("<br>");
        out.println("<br>");

    }

%>

<tr>
    <td>
        <div style="text-align: left">
            <a href="index.jsp">
                <button>返回主界面</button>
            </a>
        </div>
    </td>
</tr>


</html>
