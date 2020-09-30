---
title:  "软件架构"
date:   2020-09-22 18:30:00 +0800
draft:  false
---

## RESTful架构

移动互联网和传统的网站开发相比，其客户端更加复杂多样，有可能是网页、手机以及各种其它设备，因此通常会采用服务端和前端分离的结构。现在最常见的是[RESTful架构][restful]，其基本结构如下。

![software_arch][]

本次课，我们将了解架构中各个部分，并确定最终的软件架构。

## 数据库

数据库用于存储应用程序的数据，它包括[关系数据库][rdb]、[文档数据库][documentdb]、[键值数据库][kvdb]、[图数据库][graphdb]以及[时间序列数据库][timedb]等。关系数据库以外的数据库也称为[NoSQL][]

通常情况下，关系数据库就能满足大部分的需求。如果你的数据量很小并且使用频率较低，可以使用[SQLite][]，它是一种基于文件的关系数据库；一般情况下可以使用[MySQL][]、[MariaDB][]、[PostgreSQL][]。

如果存储的数据类型是文档型或者无模式的，也可以采用[MongoDB][]、[RethinkDB][]。其它类型的数据库请参考相应的文档。

为提高数据库的访问效率，通常会采用[Redis][]、[Memcached][]等来对数据库进行缓存。

## Web框架

Web框架主要接收客户端的请求，处理后将结果返回给客户端，用户对所有数据的访问也是通过Web框架来完成的。如果使用Python语言，可以选择[Flask][]、[Django][]、[Tornado][]等框架；如果选择[Node.js][]，可以用[Koa][]、[Express][]等框架；此外也可以选择其它语言的框架，如Ruby的[Ruby on Rails][ror]，Go的[Beego][]、[Iris][]，Java的[Spring MVC][spring_mvc]，[PHP][]等。

## 服务端、客户端交互

服务端和客户端常用的交互方式有两种：[RESTful API][restful]、[RPC][]，其中以RESTful API占主流。大部分的Web框架都直接支持RESTful API。如果要使用RPC，可以采用[grpc][]或者[thrift][]。

## 移动端开发

现在主流的移动端主要有[Android][]和[iOS][]，针对两者的开发可以参考相关的文档。

另外一种是基于Web技术来进行开发，这类技术又分为两类：一是用[自适应网页设计][responsive_design]来适配移动端设备，这本质上还是一种网页设计；另一种是用Web技术动态的生成原生界面，这类技术的代表有[React Native][]和[Weex][]。

## Web页面开发

Web开发主要基于[HTML][]、[CSS][]和[Javascript][]。HTML定义了页面的主要结构；CSS用于实现页面的外观，可以使用[Bootstrap][]等[CSS框架][css_framework]来帮助开发。

近年来，Javascript发展迅速，特别是随着[ES6][]的推出，它在Web领域的作用也越来越大，随之而来的是前端的复杂度越来越高。如果前端页面比较简单，可以采用[jQuery][]等传统的JS框架。如果前端比较复杂，可以采用[React][]、[Vue][]、[Angular][]等前端框架。

## BaaS

随着移动互联网的发展，[BaaS][]技术也应运而生，它把后端作为一种服务来提供给用户，从而使得开发者只要专注于前端即可。本课程建议大家自己开发后端以熟悉相应的技术，如果人力实在不够可以使用[Leancloud][]、[Firebase][]、[Parse][]之类的作为后端，以减少后端的开发量。

## 作业

在`docs/design.md`中完成系统的架构设计。

[android]: https://developer.android.com/?hl=zh-cn
[angular]: https://angular.io/
[baas]: https://en.wikipedia.org/wiki/Mobile_backend_as_a_service
[beego]: https://beego.me/
[bootstrap]: https://getbootstrap.com/
[css]: http://www.w3school.com.cn/css3/index.ASP
[css_framework]: https://github.com/troxler/awesome-css-frameworks
[django]: https://www.djangoproject.com/
[documentdb]: https://en.wikipedia.org/wiki/Document-oriented_database
[es6]: http://es6.ruanyifeng.com/
[express]: https://expressjs.com/zh-cn/
[firebase]: https://firebase.google.com/
[flask]: http://flask.pocoo.org/
[graphdb]: https://en.wikipedia.org/wiki/Graph_database
[grpc]: https://grpc.io/
[html]: https://www.w3schools.com/html/html5_intro.asp
[ios]: https://developer.apple.com/
[iris]: https://iris-go.com/
[javascript]: https://wangdoc.com/javascript/
[jquery]: https://jquery.com/
[koa]: https://koajs.com/
[kvdb]: https://en.wikipedia.org/wiki/Key-value_database
[leancloud]: https://leancloud.cn/
[mariadb]: https://mariadb.org/
[memcached]: https://memcached.org/
[mongodb]: https://github.com/mongo/mongo
[mysql]: http://mysql.com/
[node.js]: https://nodejs.org/en/
[nosql]: https://zh.wikipedia.org/wiki/NoSQL
[parse]: https://parseplatform.org/
[php]: http://php.net/
[postgresql]: http://www.postgresql.org/
[rdb]: https://zh.wikipedia.org/wiki/%E5%85%B3%E7%B3%BB%E6%95%B0%E6%8D%AE%E5%BA%93
[react native]: https://facebook.github.io/react-native/
[react]: https://reactjs.org/
[redis]: https://redis.io/
[responsive_design]: http://www.ruanyifeng.com/blog/2012/05/responsive_web_design.html
[restful]: http://www.ruanyifeng.com/blog/2011/09/restful.html
[rethinkdb]: https://github.com/rethinkdb/rethinkdb
[ror]: https://rubyonrails.org/
[rpc]: https://en.wikipedia.org/wiki/Remote_procedure_call
[software_arch]: ./software_arch.gif "REST-based architecture"
[spring_mvc]: https://docs.spring.io/spring/docs/current/spring-framework-reference/web.html 
[sqlite]: https://www.sqlite.org/index.html
[thrift]: https://thrift.apache.org/
[timedb]: https://en.wikipedia.org/wiki/Time_series_database
[tornado]: http://www.tornadoweb.org/en/stable/
[vue]: https://cn.vuejs.org/index.html
[weex]: https://weex.apache.org/cn/guide/
