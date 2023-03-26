<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>删除学生信息</title>
</head>
<%

    String studentNumber=request.getParameter("studentNumber");

    student stu=new student();
    int judge= 0;
    try {
        judge = stu.deletestu(studentNumber);
    } catch (Exception e) {
        e.printStackTrace();
    }


    if(judge==1){
%>
<script>
    alert("删除成功");
    window.history.back(-2);
</script>
<%
}
else{
%>
<script>
    alert("删除失败");
    window.history.back(-1);
</script>
<%
    }
%>


</html>
