<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType= "text/html; charset=UTF-8"
         pageEncoding= "UTF-8" %>

<html>

<%
    String studentNumber=request.getParameter("studentNumber");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String gender=request.getParameter("gender");
    String phoneNumber=request.getParameter("phoneNumber");


    student stu=new student();
    int judge= 0;
    try {
        judge = stu.addstu(studentNumber, name, age, gender, phoneNumber);
    } catch (Exception e) {
        e.printStackTrace();
    }

    if(judge==1){
%>
<script>
    alert("添加成功！");
</script>
<%
}
else{
%>
<script>

    alert("添加失败！");
    window.history.back(-1);
</script>
<%
    }
%>


<%
    out.println("----------------------------"+"<br>");
    out.println("学生学号:"+studentNumber+"<br>");
    out.println("----------------------------"+"<br>");
    out.println("学生姓名:"+name+"<br>");
    out.println("----------------------------"+"<br>");
    out.println("年龄:"+age+"<br>");
    out.println("----------------------------"+"<br>");
    out.println("性别:"+gender+"<br>");
    out.println("----------------------------"+"<br>");
    out.println("电话号码:"+phoneNumber+"<br>");
    out.println("----------------------------"+"<br>");
    out.println("<br>");



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
