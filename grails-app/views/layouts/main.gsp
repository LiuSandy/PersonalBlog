<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="per_main.css.css"/>
    <asset:stylesheet src="layui/css/layui.css"/>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <asset:javascript src="layui/layui.js"/>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <style>
    body {
        background-color: #e6e6e6;
        }
    </style>
    <g:layoutHead/>
</head>

<body>

<div class="navbar navbar-default navbar-static-top header" role="navigation">
    %{--登陆注册--}%
    <div class="div-login">
    <a class="navbar-brand" href="/#" id="logo">
        <i class="fa grails-icon">
            <asset:image src="apple-touch-icon.png"/>
        </i> Grails
    </a>
        <span class="layui-breadcrumb show-login" lay-separator="|">
            <a href="/login/register">注册</a>
            <a href="/login">登陆</a>
        </span>
    </div>
    <div class="container"> %{--导航--}%
        <div class="navbar-header">
            <ul class="layui-nav" id="menu-item">
                <li class="layui-nav-item"><a href="">最新活动</a></li>
                <li class="layui-nav-item">
                    <a href="">产品</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">选项1</a></dd>
                        <dd><a href="">选项2</a></dd>
                        <dd><a href="">选项3</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">大数据</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="">移动模块</a></dd>
                        <dd><a href="">后台模版</a></dd>
                        <dd class="layui-this"><a href="">选中项</a></dd>
                        <dd><a href="">电商平台</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">社区</a></li>
                <li class="layui-nav-item"  style="margin-left: 25%">
                    <input type="text" name="title" required lay-verify="required" placeholder="请输入搜索内容" autocomplete="off" class="layui-input">
                </li>

            </ul>
    </div>

    </div>
</div>

<g:layoutBody/>

<div class="footer" role="contentinfo" style="margin-top: 2%">
    最下边内容
</div>

%{--<asset:javascript src="application.js"/>--}%
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</body>
</html>
