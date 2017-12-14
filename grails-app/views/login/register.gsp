<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main"></meta>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>lius - 注册</title>
</head>

<body>

<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md4 layui-col-md-offset4">
            <form class="layui-form" action="#" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>

                    <div class="layui-input-block">
                        <input type="text" name="username" lay-verify="username" placeholder="请输入用户名" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>

                    <div class="layui-input-block">
                        <input type="password" name="password" id="password" lay-verify="password" placeholder="请输入密码"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>

                    <div class="layui-input-block">
                        <input type="password" name="Newpassword" lay-verify="Newpassword" placeholder="再次输入密码"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">单选框</label>

                    <div class="layui-input-block">
                        <input type="radio" name="role" value="管理员" title="管理员">
                        <input type="radio" name="role" value="普通用户" title="普通用户" checked>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;

        // 自定义验证规则
        form.verify({
            username: function (value) {
                if (value.length < 5) {
                    return '用户名至少得5个字符啊';
                }
            }
            , password: [/(.+){6,12}$/, '密码必须6到12位']
            , Newpassword: function (value) {
                var pass = $('#password').val();
                if (value !== pass) {
                    return "两次密码不一致"
                }
            }
        });
        //监听提交
        form.on('submit(formDemo)', function (data) {
            var FormData = data.field;
            delete FormData.Newpassword;
            console.log(FormData);
//            alert(FormData);
            $.ajax({
                url: "/login/doRegister",
                type: "POST",
                data: FormData,
                success: function (data) {
                    layer.msg('注册成功');
                    location.href="/login/";
                },
                error: function (data) {
                    alert("ERROR")
                }
            });
            return false;//阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });
</script>
</body>
</html>