<%--
  Created by IntelliJ IDEA.
  User: Chris Fan
  Date: 2017/7/27
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线反馈结果</title>

    <link rel="stylesheet" type="text/css" href="../../static/css/show_style.css">

    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>


<div id="main">

    <header id="header">
        <h1><span class="icon">!</span>在线反馈<span class="sub">管理</span></h1>
    </header>

    <div id="content">
        <h2>在线评价结果</h2>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评价编号&nbsp;&nbsp;<font color=#696969>${eval.getEval_id()}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的编号&nbsp;&nbsp;<font color=#696969>${eval.getUser_id()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宣传发动:  <font color=#696969>${eval.getDegree1()}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getMarks1()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评议程序:  <font color=#696969>${eval.getDegree2()}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getMarks2()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入街走访:  <font color=#696969>${eval.getDegree3()}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getMarks3()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;帮扶举措:  <font color=#696969>${eval.getDegree4()}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getMarks4()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总体评价: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getIdent()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常用住址: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#696969>${eval.getAddress()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <font color=#696969>${eval.getTel_no()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贫困户分类: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color=#696969>${eval.getAssort()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他:&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <font color=#696969>${eval.getOther()}</font></br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预计处理完成时间:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font  color=#0000EE>2017.08.03</font>
            </br></br>

        </p>
    </div>

    <div id="footer">
        <ul>
            <li> &copy; <script type="text/javascript">
                document.write(new Date().getFullYear());
            </script> <a target="_blank" href="http://www.andypm.com">精准扶贫系统</a> All Rights | Design by <a href="#" target="_blank">市扶贫局</a></li>
            <div style="display:none"><script src="#" language="JavaScript"></script></div>

        </ul>
    </div>

</div>



</body>
</html>
