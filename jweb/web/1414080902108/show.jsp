<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示题目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <style>
        .navbar {
            min-height: 30px;
            margin-bottom: 0;
            border-radius: 0;
        }

        * {
            font-family: "微软雅黑";
        }

        label{
            text-align: right;
            font-size: 18px;
        }

        h2 {
            margin-top: 50px;
            text-align: center;
            margin-bottom: 50px;
        }
        .col-sm-9{
            font-size: 18px;
        }
    </style>
  </head>
  <body style="background-color: #eee">
    <nav class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">在线考试系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-left">
                <!--<li><a href="#">&nbsp;</a></li>-->
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown">功能<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">首页</a></li>
                        <li class="divider"></li>
                        <li><a href="#">新增试题</a></li>
                        <li><a href="#">查询成绩</a></li>
                        <li><a href="#">快速考试</a></li>
                        <li class="divider"></li>
                        <li><a href="#">账号管理</a></li>
                        <li class="divider"></li>
                        <li><a href="#">后台管理</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">关于我们</a></li>
                <li><a href="#">帮助</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">我的 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">修改信息</a></li>
                        <li><a href="#">我的记录</a></li>
                        <li><a href="#">意见反馈</a></li>
                        <li class="divider"></li>
                        <li><a href="#">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<div class="">
    <div class="row" style="background-color: #eee">
        <div class="col-md-3 ">
        </div>
        <div class="col-md-6 container">
            <!--<h2 style="text-align: center">教师信息注册</h2>-->
            <div>
                <h2><%=request.getAttribute("Message") %></h2>

                <!--<h4>Add your question and answer</h4>-->
            </div>
            <div>
                <label class="col-sm-3 control-label">Subject:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("subject") %></p><br/>
                <label class="col-sm-3 control-label">Question:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("question") %></p><br/>
                <label class="col-sm-3 control-label">Option A:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("answer1") %></p><br/>
                <label class="col-sm-3 control-label">Option B:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("answer2") %></p><br/>
                <label class="col-sm-3 control-label">Option C:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("answer3") %></p><br/>
                <label class="col-sm-3 control-label">Option D:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("answer4") %></p><br/>
                <label class="col-sm-3 control-label">The Answer is:</label>
                <p class="col-sm-9">&nbsp;<%=request.getAttribute("answer") %></p><br/>
            </div>
            <div class="col-sm-4"></div>
            <div class="col-sm-5">
                <br/>
                <a href=""><button  class="btn btn-primary" >返回</button></a>
                <a href="index.jsp"><button  class="btn btn-primary" >继续添加</button></a>
            </div>
            <div class="col-sm-3"></div>
            <div class="">
                <footer>
                    <p style="text-align: center;margin-top: 260px">&copy;By&nbsp;Bingo1414080902108</p>
                </footer>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
  </body>
</html>
