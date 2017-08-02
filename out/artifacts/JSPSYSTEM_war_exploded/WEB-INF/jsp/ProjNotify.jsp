<%--
  Created by IntelliJ IDEA.
  User: 魏昊妤
  Date: 2017/7/27
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>扶贫项目进展公示页</title>
    <link href="../../static/css/ApplicantListcss/bootstrap.min.css" rel="stylesheet" />
    <link href="../../static/css/ApplicantListcss/paper-dashboard.css" rel="stylesheet"/>
</head>
<body>
<div class="main-panel">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">最新项目进展信息公示</a>
        </div>
    </nav>
    <div class="content">
        <div class="card">
            <table class="table table-striped">
                <thead>
                <th>姓名</th>
                <th>项目编号</th>
                <th>项目名</th>
                <th>贫困需求</th>
                <th>计划措施</th>
                <th>项目进展情况</th>
                </thead>
                <tbody>

                <c:forEach items="${project}" var="a">
                    <tr>
                        <td>${a.name}</td>
                        <td>${a.project_id}</td>
                        <td>${a.project_name}</td>
                        <td>${a.demand_name}</td>
                        <td>${a.poverty_measure}</td>
                        <td>${a.schedule}</td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>

