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
            <a class="navbar-brand" href="#">扶贫对象及项目</a>
        </div>
    </nav>
    <div class="content">
        <div class="card">
            <table class="table table-striped">
                <thead>
                <th>ID</th>
                <th>电话号码</th>
                <th>姓名</th>
                <th>性别</th>
                <th>出生日期</th>
                <th>民族</th>
                <th>户籍所在地</th>
                <th>残疾证号</th>
                <th>身份证号</th>
                <th>残疾情况</th>
                <th>婚姻状况</th>
                <th>家庭人数</th>
                <th>无保人数</th>
                <th>家庭住房</th>
                <th>家庭收入</th>
                <th>政策收入</th>
                <th>教育程度</th>
                <th>备注</th>
                </thead>
                <tbody>

                <c:forEach items="${applicants}" var="a">
                <tr>
                    <td>${a.lif_id}</td>
                    <td>${a.telNo}</td>
                    <td>${a.name}</td>
                    <td>${a.gender}</td>
                    <td>${a.birthday}</td>
                    <td>${a.nationality}</td>
                    <td>${a.domicile}</td>
                    <td>${a.dis_id}</td>
                    <td>${a.identification}</td>
                    <td>${a.disability}</td>
                    <td>${a.marriage}</td>
                    <td>${a.family_num}</td>
                    <td>${a.no_insurance_num}</td>
                    <td>${a.housing}</td>
                    <td>${a.house_income}</td>
                    <td>${a.policy_income}</td>
                    <td>${a.education}</td>
                    <td>${a.others}</td>
                </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
