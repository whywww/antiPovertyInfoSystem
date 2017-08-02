<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/7/25
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ApplicantList</title>
    <link href="../../static/css/ApplicantListcss/bootstrap.min.css" rel="stylesheet" />
    <link href="../../static/css/ApplicantListcss/paper-dashboard.css" rel="stylesheet"/>
</head>
<body>
<div class="main-panel">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">申请人名单</a>
        </div>
    </nav>
    <div class="content">
        <div class="card">
            <table class="table table-striped">
                <thead>
                <th>姓名</th>
                <th>性别</th>
                <th>民族</th>
                <th>身份证号</th>
                <th>户籍所在地</th>
                <th>电话号码</th>
                <th>居住地</th>
                <th>教育程度</th>
                <th>婚姻状况</th>
                </thead>
                <tbody>

                <c:forEach items="${applicants}" var="a">
                <tr>
                    <td>${a.name}</td>
                    <td>${a.gender}</td>
                    <td>${a.nationality}</td>
                    <td>${a.identification}</td>
                    <td>${a.domicile}</td>
                    <td>${a.telNo}</td>
                    <td>${a.housing}</td>
                    <td>${a.education}</td>
                    <td>${a.marriage}</td>
                </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
