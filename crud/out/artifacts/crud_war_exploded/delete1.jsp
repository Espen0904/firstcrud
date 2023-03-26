<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>删除学生信息</title>
    <style>
        body {
            text-align: center;
        }
        table{
            margin: auto;
            border-style: double;
            width: 500px;
        }
    </style>
</head>
<%

    String studentNumber=request.getParameter("studentNumber");

    student stu=new student();
    int temp= 0;
    try {
        temp = stu.readstu(studentNumber,"#");
    } catch (Exception e) {
        e.printStackTrace();
    }

    if(temp==1){
        out.println("----------------------------"+"<br>");
        out.println("学生学号:"+stu.a+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("学生姓名:"+stu.b+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("年龄:"+stu.c+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("性别:"+stu.d+"<br>");
        out.println("----------------------------"+"<br>");
        out.println("电话号码:"+stu.e+"<br>");
        out.println("----------------------------"+"<br>");

    }
    else{
%>
<script>
    alert("没有该学生");
    window.history.back(-1);
</script>
<%
    }
%>

<form action="delete2.jsp" method="get">
    <table>

        <tr>
            <td>输入并确认需要删除的学生学号: </td>
            <td>
                <label>
                    <input type="text" name="studentNumber" maxlength="20"/>
                </label>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div style="text-align: center">
                    <a href="delete2.jsp">
                        <button>删除</button>
                    </a>
                </div>
            </td>
        </tr>
    </table>
</form>
<tr>
    <td>
        <div style="text-align: center">
            <a href="index.jsp">
                <button>返回主界面</button>
            </a>
        </div>
    </td>
</tr>
</html>