<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>修改学生信息</title>
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
        out.println("以下为该学生信息："+"<br>"+"<br>");
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
        out.println("----------------------------"+"<br>"+"<br>");
        out.println("在下面表格中修改学生信息："+"<br>");
    }
    else{
%>
<script>
    alert("该学生不存在");
    window.history.back(-1);
</script>
<%
    }
%>

<form action="update2.jsp" method="get">
    <table>

        <tr>
            <td>学号: </td>
            <td>
                <label>
                    <input type="text" name="studentNumber" maxlength="20"/>
                </label>
            </td>
        </tr>

        <tr>
            <td>姓名: </td>
            <td>
                <label>
                    <input type="text" name="name" maxlength="50"/>
                </label>
            </td>
        </tr>

        <tr>
            <td>年龄: </td>
            <td>
                <label>
                    <input type="text" name="age" maxlength="30"/>
                </label>
            </td>
        </tr>

        <tr>
            <td>性别： </td>
            <td>
                <label>
                    <input type="radio" name="gender" value="男">男
                    <input type="radio" name="gender" value="女" checked>女
                </label>
            </td>
        </tr>


        <tr>
            <td>电话号码: </td>
            <td>
                <label>
                    <input type="text" name="phoneNumber" maxlength="30"/>
                </label>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div style="text-align: center">
                    <a href="update2.jsp">
                        <button>提交</button>
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