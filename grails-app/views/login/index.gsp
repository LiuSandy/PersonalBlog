<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main"></meta>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>lius - 登陆</title>
</head>

<body>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md4 layui-col-md-offset4">
            <blockquote class="layui-elem-quote">
                用户登录
            </blockquote>
            <form class="layui-form" action="/login/login" method="post">
                <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
                <div class="layui-form-item" >
                    <div class="layui-input-block" style="margin-left: 0">
                        <input type="text" name="username" placeholder="用户名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block" style="margin-left: 0">
                        <input type="password" name="password" placeholder="密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                %{--验证码--}%
                %{--<div class="layui-from-item">
                    <div class="layui-input-inline">
                        <input type="password" name="password" lay-verify="pass" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-input-inline">
                        <img src="" alt="">
                    </div>
                </div>
                <br>--}%
                <div class="layui-form-item">
                    <button class="layui-btn" lay-submit lay-filter="login" style="width: 100%">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>