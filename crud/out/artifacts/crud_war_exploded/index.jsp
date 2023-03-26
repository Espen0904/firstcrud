<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/2/22
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>

  <title>学生信息管理系统</title>

  <style>
    h1{
      color: navy;
      text-align: center;
    }
    div{
      text-align: center;
    }
    button{
      width:200px;
      height:40px;
      font-size:18px;
    }
  </style>

</head>

<body>

<h1>学生信息管理系统</h1>

<hr/>

<br/>
<a href="create.jsp">
  <div>
    <button>
      添加信息
    </button>
  </div>
</a>
<br/>

<a href="delete.jsp">
  <div>
    <button>
      删除信息
    </button>
  </div>
</a>
<br/>

<a href="update.jsp">
  <div>
    <button>
      修改信息
    </button>
  </div>
</a>
<br/>

<a href="read.jsp">
  <div>
    <button>
      查询信息
    </button>
  </div>
</a>
<br/>

<a href="browse.jsp">
  <div>
    <button>
      浏览信息
    </button>
  </div>
</a>
<br/>

<br/>

</body>

</html>
