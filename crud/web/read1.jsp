<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>查询学生信息</title>
</head>

<%

    String studentNumber=request.getParameter("studentNumber");
    String name=request.getParameter("name");


    student stu=new student();
    try {
        stu.readstu(studentNumber, name);
    } catch (Exception e) {
        e.printStackTrace();
    }

    if(stu.a!=null){

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
