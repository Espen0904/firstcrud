<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <title>添加信息</title>
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

<form action="create1.jsp" method="get">

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
            <td colspan="2" >
                <div style="text-align: center">
                    <a href="create1.jsp">
                        <button>提交</button>
                    </a>
                </div>
            </td>
        </tr>

    </table>
</form>
</body>
</html>
