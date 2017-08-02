<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>扶贫事权管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="../../static/css/jquery-ui-1.10.4.custom.min.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/animate.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/all.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/main.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/style-responsive.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/zabuto_calendar.min.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/pace.css">
    <link type="text/css" rel="stylesheet" href="../../static/css/jquery.news-ticker.css">
    <script src="http://www.my97.net/dp/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    <div>
        <!--BEGIN THEME SETTING-->
        <div id="theme-setting">
        </div>
        <!--END THEME SETTING-->
        <!--BEGIN BACK TO TOP-->
        <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
        <!--END BACK TO TOP-->
        <!--BEGIN TOPBAR-->
        <div id="header-topbar-option-demo" class="page-header-topbar">
            <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="/LowIncomFamilies/Authority.do" class="navbar-brand"><span class="fa fa-rocket"></span><span class="logo-text"><strong>精准扶贫</strong></span><span style="display: none" class="logo-text-icon">µ</span></a></div>
            <div class="topbar-main"><a id="menu-toggle" href="#" class="hidden-xs"><i class="fa fa-bars"></i></a>

                <form id="topbar-search" action="" method="" class="hidden-sm hidden-xs">
                    <div class="input-icon right text-white"><a href="#"><i class="fa fa-search"></i></a><input type="text" placeholder="搜索" class="form-control text-white"/></div>
                </form>
                <div class="news-update-box hidden-xs"><span class="text-uppercase mrm pull-left text-white">News:</span>
                    <ul id="news-update" class="ticker list-unstyled">
                        <li>欢迎来到精准扶贫信息管理系统！</li>
                        <li>Welcome to targeted poverty alleviation information system!</li>
                    </ul>
                </div>
                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown topbar-user"><a data-hover="dropdown" href="#" class="dropdown-toggle">&nbsp;<span class="hidden-xs">管理员</span>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>修改密码</a></li>
                            <li><a href="/"><i class="fa fa-key"></i>退出当前账号</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
            <!--BEGIN MODAL CONFIG PORTLET-->
            <div id="modal-config" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">
                                &times;</button>
                            <h4 class="modal-title">
                                Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget
                                porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie.
                                Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis
                                magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor
                                vitae quam dictum condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec
                                aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus
                                vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium
                                hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut
                                ultricies felis.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-default">
                                Close</button>
                            <button type="button" class="btn btn-primary">
                                Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--END MODAL CONFIG PORTLET-->
        </div>
        <!--END TOPBAR-->
        <div id="wrapper">
            <!--BEGIN SIDEBAR MENU-->
            <nav id="sidebar" role="navigation" data-step="2" data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
                data-position="right" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">

                     <div class="clearfix"></div>
                    <li><a href="/LowIncomFamilies/basicInfo.do"><i class="fa fa-desktop fa-fw">
                        <div class="icon-bg bg-pink"></div>
                    </i><span class="menu-title"><strong>贫困户信息管理</strong></span></a>

                    </li>
                    <li><a href="/LowIncomFamilies/TransparentManagement.do"><i class="fa fa-send-o fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title"><strong>阳光操作管理</strong></span></a>

                    </li>
                    <li><a href="#"><i class="fa fa-edit fa-fw">
                        <div class="icon-bg bg-violet"></div>
                    </i><span class="menu-title"><strong>扶贫事权管理</strong></span></a>
                    </li>
                    <li><a href="/LowIncomFamilies/DataAnalysis.do"><i class="fa fa-bar-chart-o fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title"><strong>大数据分析</strong></span></a>
                    </li>
                </ul>
            </div>
        </nav>


            <div id="page-wrapper">
                <!--BEGIN TITLE & BREADCRUMB PAGE-->
                <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">
                            <strong>扶贫事权管理</strong></div>
                    </div>
                    <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a href="/user/managePage.do">首页</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="hidden"><a href="/LowIncomFamilies/.do">扶贫事权管理</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="active">扶贫事权管理</li>
                    </ol>
                    <div class="clearfix">
                    </div>
                </div>
                <!--END TITLE & BREADCRUMB PAGE-->
                <!--BEGIN CONTENT-->
                <div class="page-content">
                    <div id="tab-general">
                        <div class="row mbl">
                            <div class="col-lg-12">
                                
                                            <div class="col-md-12">
                                                <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;">
                                                </div>
                                            </div>
                                
                            </div>

                            <div class="col-lg-12">
                              
                                    
                              <div class="row">
                    <div class="col-md-12"><h2> 已有扶贫项目</h2>

                        <div class="row mtl">
				<div class="col-md-9 col-lg-12">
                        <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab-edit" data-toggle="tab" id="edit_tab">编辑项目信息</a></li>
                                    <li><a href="#tab-messages" data-toggle="tab">查看已有项目</a></li>
                                </ul>
                                <div id="generalTabContent" class="tab-content">
                                    <div id="tab-edit" class="tab-pane fade in active">
                                        <form action="#" class="form-horizontal"><h3>扶贫项目基本信息</h3>

                                            <div class="form-group"><label class="col-sm-3 control-label">项目ID</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="111"class="form-control" id="project_id"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">项目名</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="项目名" class="form-control" id="project_name"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">贫困户ID</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-4"><input type="text" placeholder="贫困户ID" class="form-control" id="lif_id"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"> </div>
                                            <hr/>
                                            <h3>帮扶人信息</h3>

                                            <div class="form-group"><label class="col-sm-3 control-label">帮扶人姓名</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="帮扶人姓名" class="form-control" id="helping_people"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">帮扶人单位</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="帮扶人单位" class="form-control" id="helping_department"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"> </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">帮扶人职位</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="帮扶人职位" class="form-control" id="helping_people_job"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">帮扶人电话</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="12345678900" class="form-control" id="helping_tel"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                   
                                            <hr/>
                                            
                                            <h3>项目考核信息</h3>

                                            <div class="form-group"><label class="col-sm-3 control-label">考核人</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="考核人姓名" class="form-control" id="supervisor"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">考核时间</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="date" placeholder="2017/01/01" onClick="WdatePicker()" class="form-control" id="inspection_time"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">是否已脱贫</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-4">
                                                            <select class="form-control" id="out_of_poverty">
                                                                <option value="是">是</option>
                                                                <option value="否">否</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr/>
                                        </form>
                                        <button type="button" onclick="submitData()" class="btn btn-green btn-block">提交</button>
                                    </div>
                                    <div id="tab-messages" class="tab-pane fade in">
                                        <div class="list-group">
                                                <table class="table table-striped">
                                                    <thead>
                                                    <th>项目ID</th>
                                                    <th>项目名</th>
                                                    <th>贫困户ID</th>
                                                    <th>详细信息</th>
                                                    <th>删除项目</th>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${projects}" var="a">
                                                        <tr>
                                                            <td>${a.project_id}</td>
                                                            <td>${a.project_name}</td>
                                                            <td>${a.lif_id}</td>
                                                            <td><input type="button" value="Info" onclick="getProjectData('${a.project_id}')"/></td>
                                                            <td><input type="button" value="delete" onclick="deleteProject('${a.project_id}')"/></td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                              
                                </div>
                                
                            
                     
                            
                        </div>
                    </div>
                </div>
                <!--END CONTENT-->
                <!--BEGIN FOOTER-->
                <div id="footer">
                    <div class="copyright">
                        <a href="#">2017 © 四川大学软件学院</a></div>
                </div>
                <!--END FOOTER-->
            </div>
            <!--END PAGE WRAPPER-->
        </div>
    </div>
    <script src="../../static/js/managePage/jquery-1.10.2.min.js"></script>
    <script src="../../static/js/managePage/jquery-migrate-1.2.1.min.js"></script>
    <script src="../../static/js/managePage/jquery-ui.js"></script>
    <script src="../../static/js/managePage/bootstrap.min.js"></script>
    <script src="../../static/js/managePage/bootstrap-hover-dropdown.js"></script>
    <script src="../../static/js/managePage/html5shiv.js"></script>
    <script src="../../static/js/managePage/respond.min.js"></script>
    <script src="../../static/js/managePage/jquery.metisMenu.js"></script>
    <script src="../../static/js/managePage/jquery.slimscroll.js"></script>
    <script src="../../static/js/managePage/jquery.cookie.js"></script>
    <script src="../../static/js/managePage/icheck.min.js"></script>
    <script src="../../static/js/managePage/custom.min.js"></script>
    <script src="../../static/js/managePage/jquery.news-ticker.js"></script>
    <script src="../../static/js/managePage/jquery.menu.js"></script>
    <script src="../../static/js/managePage/pace.min.js"></script>
    <script src="../../static/js/managePage/holder.js"></script>
    <script src="../../static/js/managePage/responsive-tabs.js"></script>
    <script src="../../static/js/managePage/jquery.flot.js"></script>
    <script src="../../static/js/managePage/jquery.flot.categories.js"></script>
    <script src="../../static/js/managePage/jquery.flot.pie.js"></script>
    <script src="../../static/js/managePage/jquery.flot.tooltip.js"></script>
    <script src="../../static/js/managePage/jquery.flot.resize.js"></script>
    <script src="../../static/js/managePage/jquery.flot.fillbetween.js"></script>
    <script src="../../static/js/managePage/jquery.flot.stack.js"></script>
    <script src="../../static/js/managePage/jquery.flot.spline.js"></script>
    <script src="../../static/js/managePage/zabuto_calendar.min.js"></script>

    <script src="../../static/js/managePage/index.js"></script>
    <!--LOADING SCRIPTS FOR CHARTS-->
    <script src="../../static/js/managePage/highcharts.js"></script>
    <script src="../../static/js/managePage/data.js"></script>
    <script src="../../static/js/managePage/drilldown.js"></script>
    <script src="../../static/js/managePage/exporting.js"></script>
    <script src="../../static/js/managePage/highcharts-more.js"></script>
    <script src="../../static/js/managePage/charts-highchart-pie.js"></script>
    <script src="../../static/js/managePage/charts-highchart-more.js"></script>
    <!--CORE JAVASCRIPT-->
    <script src="../../static/js/managePage/main.js"></script>
    <script src="../../static/js/function.js"></script>
</body>
</html>
