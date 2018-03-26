<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang=zh-CN>
<head>
    <meta charset=utf-8>
    <meta http-equiv=X-UA-Compatible content="IE=edge">
    <meta name=viewport content="width=device-width,initial-scale=1">
    <title>BootCDN - Bootstrap 中文网开源项目免费 CDN 加速服务</title>
    <meta name=description
          content="Bootstrap 中文网开源项目免费 CDN 加速服务 - 我们致力于为 Bootstrap、jQuery、Angular、Vue.js 一样优秀的开源项目提供稳定、快速、免费的 CDN 加速服务。BootCDN 是运营时间最长、用户量最大、最早同时支持 HTTPS（SSL）和 HTTP/2.0 协议的中立免费 CDN 。">
    <meta name=keywords content="">
    <meta name=author content=Bootstrap中文网>
    <meta name=founder content=王赛>
    <link href=https://cdn.bootcss.com rel=dns-prefetch>
    <link href=https://api.bootcdn.cn rel=dns-prefetch>
    <link href=https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css rel=stylesheet>
    <link href=https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css rel=stylesheet>
    <link href="http://www.bootcdn.cn/assets/css/site.min.css?1521768396907" rel=stylesheet>
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--><!--[if IE 9]>
    <script src="https://cdn.bootcss.com/geopattern/1.2.3/js/base64.min.js"></script>
    <script src="https://cdn.bootcss.com/geopattern/1.2.3/js/typedarray.min.js"></script>
    <![endif]-->
    <link rel=apple-touch-icon-precomposed sizes=144x144
          href="http://www.bootcdn.cn/assets/ico/apple-touch-icon-144-precomposed.png?1521768396907">
    <link rel="shortcut icon" href="http://www.bootcdn.cn/assets/ico/favicon.ico?1521768396907">
    <script>var build = 1521768396907;</script>
    <script>var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?24aff315392dc2c9b2805cfa4d8e101a";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();</script>
</head>
<body class=home-template>
<header class=site-header>
    <nav class="navbar navbar-static-top main-navbar" id=top>
        <div class=container>
            <div class=navbar-header>
                <button class="navbar-toggle collapsed" type=button data-toggle=collapse data-target=#bs-navbar
                        aria-controls=bs-navbar aria-expanded=false><span class=sr-only>Toggle navigation</span> <span
                        class=icon-bar></span> <span class=icon-bar></span> <span class=icon-bar></span></button>
                <a href=/ class="navbar-brand brand-bootcdn text-hide"
                   onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click', 'main-navbar-bootcdn'])">BootCDN</a></div>
            <nav id=bs-navbar class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href=/api/ onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click', 'api'])"
                        target=_blank>API</a></li>
                    <li><a href=http://blog.bootcdn.cn/ onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click',
                        'blog'])" target=_blank>博客</a></li>
                    <li><a href=#about onclick="_hmt.push(['_trackEvent', 'main-navbar', 'click', 'about'])">关于</a></li>
                </ul>
            </nav>
        </div>
    </nav>
    <div class="container jumbotron">
        <div class=row>
            <div class=col-xs-12><h1>BootCDN<img src="http://www.bootcdn.cn/assets/img/bootcdn.png" alt="BootCDN logo" class=hidden></h1>
                <p>稳定、快速、免费的前端开源项目 CDN 加速服务<br><span class=package-amount>共收录了 <strong>3348</strong> 个前端开源项目</span></p>
                <div class=search-wraper role=search>
                    <div class=form-group><input class="form-control search clearable" placeholder=搜索开源库，例如：jquery
                                                 autocomplete=off autofocus tabindex=0 autocorrect=off
                                                 autocapitalize=off spellcheck=false> <i class="fa fa-search"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div class="mostused-packages well well-sm text-center hidden-xs hidden-sm">
        <ul class=list-inline>
            <li><a href=/bootstrap/ title=Bootstrap target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-bootstrap'])"><img
                    src="http://www.bootcdn.cn/assets/img/bootstrap.svg?1521768396907" alt=bootstrap></a></li>
            <li><a href=/react/ title=React target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-react'])"><img
                    src="http://www.bootcdn.cn/assets/img/react.svg?1521768396907" alt=React></a></li>
            <li><a href=/jquery/ title=jQuery target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-jquery'])"><img
                    src="http://www.bootcdn.cn/assets/img/jquery.svg?1521768396907" alt=jquery></a></li>
            <li><a href=/angular.js/ title=Angular.js target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-angular.js'])"><img
                    src="http://www.bootcdn.cn/assets/img/angular-icon.svg?1521768396907" alt=angular.js></a></li>
            <li><a href=/vue/ title=Vue.js target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-vue.js'])"><img
                    src="http://www.bootcdn.cn/assets/img/vue.svg?1521768396907" alt=Vue.js></a></li>
            <li><a href=/backbone.js/ title=Backbone.js target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-backbone.js'])"><img
                    src="http://www.bootcdn.cn/assets/img/backbone-icon.svg?1521768396907" alt=backbonejs></a></li>
            <li><a href=/lodash.js/ title=lodash target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-lodash.js'])"><img
                    src="http://www.bootcdn.cn/assets/img/lodash.svg?1521768396907" alt=lodashjs></a></li>
            <li><a href=/moment.js/ title=Moment.js target=_blank
                   onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-moment.js'])"><img
                    src="http://www.bootcdn.cn/assets/img/momentjs.svg?1521768396907" alt=momentjs></a></li>
        </ul>
    </div>
</header>
<div class="container protocal-notice hidden-xs">
    <div class=row>
        <div class=col-xs-12>
            <div class=pull-right><a href=http://blog.bootcdn.cn/only-https/ target=_blank
                                     onclick="_hmt.push(['_trackEvent', 'notice', 'click', 'notice'])">拒绝流量劫持，全面使用
                HTTPS！</a></div>
        </div>
    </div>
</div>
<main class=packages-list-container id=all-packages>
    <div class=container>
        <div class="list-group packages" id=common-packages><a href=/bootstrap/ class="package list-group-item"
            target=_blank onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'bootstrap'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>bootstrap</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Bootstrap 是全球最受欢迎的前端组件库，用于开发响应式布局、移动设备优先的
                    WEB 项目。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 122947</span>
                </div>
            </div>
            </a><a href=/react/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'react'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>react</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>React 是用于构建用户界面的 JavaScript 工具库。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 91396</span>
                </div>
            </div>
            </a><a href=/vue/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'vue'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>vue</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Vue 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue
                    被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 87830</span>
                </div>
            </div>
            </a><a href=/angular.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'angular.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>angular.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Angular 是一个开发平台。它能帮你更轻松的构建 Web 应用。Angular
                    集声明式模板、依赖注入、端到端工具和一些最佳实践于一身，为你解决开发方面的各种挑战。Angular 为开发者提升构建 Web、手机或桌面应用的能力。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 58151</span>
                </div>
            </div>
            </a><a href=/jquery/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'jquery'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>jquery</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>jQuery 是一个高效、精简并且功能丰富的 JavaScript 工具库。它提供的
                    API 易于使用且兼容众多浏览器，这让诸如 HTML 文档遍历和操作、事件处理、动画和 Ajax 操作更加简单。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 48413</span>
                </div>
            </div>
            </a><a href=/semantic-ui/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'semantic-ui'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>semantic-ui</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Semantic 作为一款开发框架，帮助开发者使用对人类友好的 HTML
                    语言构建优雅的响应式布局。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 40242</span>
                </div>
            </div>
            </a><a href=/socket.io/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'socket.io'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>socket.io</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>socket.io 是用于构建实时通讯服务的框架。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 40115</span>
                </div>
            </div>
            </a><a href=/redux/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'redux'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>redux</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Redux 是 JavaScript 状态容器，提供可预测化的状态管理。</p>
                </div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 39239</span>
                </div>
            </div>
            </a><a href=/Chart.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'Chart.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>Chart.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Chart.js 是一个基于 HTML5 canvas
                    技术的开源图表绘制工具库。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 35825</span>
                </div>
            </div>
            </a><a href=/lodash.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'lodash.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>lodash.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Lodash 是一个具有一致接口、模块化、高性能等特性的 JavaScript
                    工具库。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 30509</span>
                </div>
            </div>
            </a><a href=/foundation/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'foundation'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>foundation</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Foundation 是一个支持响应式布局的前端框架。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 27144</span>
                </div>
            </div>
            </a><a href=/backbone.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'backbone.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>backbone.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Backbone 为复杂 Javascript
                    应用程序提供模型(models)、集合(collections)、视图(views)的结构。其中模型用于绑定键值数据和自定义事件；集合附有可枚举函数的丰富 API； 视图可以声明事件处理函数，并通过
                    RESTful JSON 接口连接到应用程序。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 27069</span>
                </div>
            </div>
            </a><a href=/echarts/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'echarts'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>echarts</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>ECharts 是一个使用 JavaScript 实现的开源可视化库，可以流畅的运行在
                    PC 和移动设备上，兼容当前绝大部分浏览器（IE8/9/10/11，Chrome，Firefox，Safari等），底层依赖轻量级的矢量图形库
                    ZRender，提供直观，交互丰富，可高度个性化定制的数据可视化图表。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 26317</span>
                </div>
            </div>
            </a><a href=/underscore.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'underscore.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>underscore.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Underscore 是一个 JavaScript
                    工具库，它提供了一整套函数式编程的实用功能，但是没有扩展任何 JavaScript 内置对象。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 22572</span>
                </div>
            </div>
            </a><a href=/ember.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'ember.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>ember.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Ember.js是一个开源的 JavaScript
                    客户端框架，用于开发Web应用程序并使用MVC（模型 - 视图 - 控制器）架构模式。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 18834</span>
                </div>
            </div>
            </a><a href=/zepto/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'zepto'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>zepto</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>Zepto 是一个轻量级的针对现代高级浏览器的 JavaScript 库， 它与
                    jQuery 有着类似的 API。 如果你会用 jQuery，那么你也会用 Zepto。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 13604</span>
                </div>
            </div>
            </a><a href=/require.js/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'require.js'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>require.js</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>RequireJS 是一个 JavaScript
                    文件和模块载入工具。它针对浏览器使用场景进行了优化，并且也可以应用到其他 JavaScript 环境中，例如 Rhino 和 Node.js。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 11427</span>
                </div>
            </div>
            </a><a href=/jqueryui/ class="package list-group-item" target=_blank onclick="_hmt.push(['_trackEvent',
            'packages', 'click', 'jqueryui'])">
            <div class=row>
                <div class=col-md-3><h4 class=package-name>jqueryui</h4></div>
                <div class="col-md-9 hidden-xs"><p class=package-description>jQuery UI 是建立在 jQuery JavaScript
                    库上的一组用户界面交互、特效、小部件及主题。</p></div>
                <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 10376</span>
                </div>
            </div>
            </a><a href=/all/ class="package list-group-item all-packages" target=_blank
            onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'all'])">所有开源项目列表</a></div>
        <div class="list-group packages" id=search-results style="display: none"></div>
    </div>
</main>
<footer id=footer class="footer hidden-print">
    <div class=container>
        <div class=row>
            <div class="footer-about col-md-6 col-sm-12" id=about><h4>关于 BootCDN</h4>
                <p>BootCDN 是 <a href=http://www.bootcss.com/ target=_blank
                                onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap
                    中文网</a>支持并维护的前端开源项目免费 CDN 服务，致力于为 Bootstrap、jQuery、Angular、Vuejs 一样优秀的前端开源项目提供稳定、快速的免费 CDN
                    加速服务。BootCDN 所收录的开源项目主要同步于 <a href=https://github.com/cdnjs/cdnjs target=_blank
                                                  onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-github.com'])">cdnjs</a>
                    仓库。</p>
            </div>
            <div class="footer-links col-md-4 col-sm-12"><h4>友情链接</h4>
                <ul class="list-unstyled list-inline">
                    <li><a href=http://www.bootcss.com/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap中文网</a>
                    </li>
                    <li><a href=https://www.jquery123.com/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-jquery123.com'])">jQuery中文文档</a>
                    </li>
                    <li><a href=https://www.quanzhanketang.com/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-www-quanzhanketang.com'])">全栈课堂</a>
                    </li>
                    <li><a href=https://www.nodeapp.cn/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-www-nodeapp.cn'])">Node.js中文文档</a>
                    </li>
                </ul>
            </div>
            <div class="footer-techs col-md-2 col-sm-12"><h4>我们用到的技术</h4>
                <ul class="list-unstyled list-inline">
                    <li><a href=http://www.bootcss.com/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap</a>
                    </li>
                    <li><a href=https://www.jquery123.com/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-jquery123.com'])">jQuery</a>
                    </li>
                    <li><a href=https://www.nodeapp.cn/ target=_blank
                           onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-nodeapp.cn'])">Node.js</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class=copy-right><span>&copy; 2013-2018</span> <a
            href=http://www.miibeian.gov.cn/ target=_blank>京ICP备11008151号</a> <span>京公网安备11010802014853</span></div>
</footer>
<a href=# id=back-to-top><i class="fa fa-angle-up"></i></a>
<script src=https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js></script>
<script src=https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js></script>
<script src=https://cdn.bootcss.com/geopattern/1.2.3/js/geopattern.min.js></script>
<script src=https://cdn.bootcss.com/clipboard.js/1.5.16/clipboard.min.js></script>
<script src=https://cdn.bootcss.com/localforage/1.4.2/localforage.min.js></script>
<script src=https://cdn.bootcss.com/lodash.js/4.17.4/lodash.min.js></script>
<script src="http://www.bootcdn.cn/assets/js/site.min.js?1521768396907"></script>
</body>
</html>
