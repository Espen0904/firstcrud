<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
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
<body>
<form action="update1.jsp" method="get">
    <table>

        <tr>
            <td>输入需要修改的学生学号: </td>
            <td>
                <label>
                    <input type="text" name="studentNumber" maxlength="8"/>
                </label>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <div style="text-align: center">
                    <a href="update1.jsp">
                        <button>查看</button>
                    </a>
                </div>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

