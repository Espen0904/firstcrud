<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.student" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>修改学生信息</title>
</head>

<%
  String studentNumber=request.getParameter("studentNumber");
  String name=request.getParameter("name");
  String age=request.getParameter("age");
  String gender=request.getParameter("gender");
  String phoneNumber=request.getParameter("phoneNumber");

  student stu=new student();
  int judge= 0;
  try {
    judge = stu.updatestu(studentNumber, name, age, gender, phoneNumber);
  } catch (Exception e) {
    e.printStackTrace();
  }

  if(judge==1){
%>
<script>

  alert("修改成功！");
  window.history.back(-1);
</script>
<%
}
else{
%>
<script>

  alert("修改失败！");
  window.history.back(-1);
</script>
<%
  }
%>

</html>
