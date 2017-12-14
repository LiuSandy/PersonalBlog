<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="per_index.css"/>

</head>

<body>
<h1>
    ${session.setAttribute("user")}
</h1>
<div class="layui-container">
    <div class="layui-row layui-col-space20">
        %{--左侧内容--}%
        <div class="layui-col-md9">
            %{-- 头部，幻灯片--}%
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div style="background-color: #00F7DE">条目1</div>
                    <div style="background-color: #4D8618">条目2</div>
                    <div style="background-color: #761c19">条目3</div>
                    <div style="background-color: #c9302c">条目4</div>
                    <div style="background-color: salmon">条目5</div>
                </div>
            </div>
            %{--正文列表--}%
            <div class="layui-col-md12 content-item">
                     %{--正文列表--}%
                <div class="layui-col-md3 content-img">
                    <asset:image src="first.jpeg" class="layui-col-md12"/>
                </div>
                <div class="layui-col-md9 content-article">
                    <header>
                        <h2>
                            <a href="">标题</a>
                        </h2>
                    </header>
                    <p>
                        <span class="layui-breadcrumb" lay-separator="|">
                            <a href="">
                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                                日期
                            </a>
                            <a href="">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                作者
                            </a>
                            <a href="">
                                <i class="fa fa-eye" aria-hidden="true"></i>
                                1090
                            </a>
                        </span>
                    </p>
                    <div class="show-content">
                        <p>正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容</p>
                    </div>
                </div>
            </div>
            %{--正文列表2--}%
            <div class="layui-col-md12 content-item">
            %{--正文列表--}%
            <div class="layui-col-md3 content-img">
                <asset:image src="first.jpeg" class="layui-col-md12"/>
            </div>
            <div class="layui-col-md9 content-article">
                <header>
                    <h2>
                        <a href="">标题</a>
                    </h2>
                </header>
                <p>
                    <span class="layui-breadcrumb" lay-separator="|">
                        <a href="">
                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                            日期
                        </a>
                        <a href="">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            作者
                        </a>
                        <a href="">
                            <i class="fa fa-eye" aria-hidden="true"></i>
                            1090
                        </a>
                    </span>
                </p>
                <div class="show-content">
                    <p>正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容正文内容</p>
                </div>
            </div>
        </div>
        </div>
        %{-- 、右侧内容--}%
        <div class="layui-col-md3" style="background-color: #666666;margin-top: 1%">
            你的内容 3/12
        </div>
    </div>
</div>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
</body>
</html>
