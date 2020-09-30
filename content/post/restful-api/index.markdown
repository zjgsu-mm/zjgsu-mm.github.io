---
title:  "RESTful API"
date:   2020-09-29 18:30:00 +0800
draft:  false
---

## RESTful架构

REST(Representational State Transfer)最初是由[Roy Thomas Fielding提出的][rest_paper]，对RESTful架构的解释可以参考[阮一峰的这篇博客][ruan]。

![rest_cs][]

在设计RESTful API时，可以先看下「 [RESTful API 设计指南][rest_guide]」以及「[RESTful API 设计最佳实践][rest_best_practice]([中文][rest_best_practice_cn])」。同时可以参考现有系统的API设计（如[GitHub API][]）。

![rest_img][]

现有的Web框架基本都对RESTful API有着较好的支持，直接进行开发。当前API用的比较多的数据格式是[JSON][]，但也有使用[XML][]的，两者的优劣可以参考「[JSON vs XML][]」

对RESTful API的测试可以使用[Postman][]或者[httpie][]。

更多的RESTful API资源可以参考[Awesome REST][]。

## RPC

另一种比较流行的客户端、服务端交互方式是RPC（Remote Procedure Call，远程过程调用），它通过网络从远程计算机程序上请求服务，而不需要了解底层网络技术的协议。要使用RPC技术可以参考[grpc][]或者[thrift][]。

![rpc][]

## 微服务

与本次课相关的另一项技术是[微服务][micro_service]，它将应用程序分解为一组松耦合的服务，服务间通过RESTful API及类似技术进行通信。

## 作业

在`docs/api.md`中完成系统的API设计，并完成相应的代码。

[awesome rest]: https://github.com/marmelab/awesome-rest
[github api]: https://developer.github.com/v3/?
[grpc]: https://grpc.io/
[httpie]: https://github.com/jkbrzt/httpie
[json vs xml]: https://restfulapi.net/json-vs-xml/
[json]: http://www.json.org/
[micro_service]: https://github.com/mfornos/awesome-microservices
[postman]: https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm
[rest_best_practice]: https://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api
[rest_best_practice_cn]: https://www.oschina.net/translate/best-practices-for-a-pragmatic-restful-api
[rest_cs]: ./rest_cs.png "RESTful Architecture"
[rest_guide]: http://www.ruanyifeng.com/blog/2014/05/restful_api.html
[rest_img]: ./rest.png "RESTful API"
[rest_paper]: https://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm
[rpc]: ./rpc.jpg "RPC"
[ruan]: http://www.ruanyifeng.com/blog/2011/09/restful.html
[thrift]: https://thrift.apache.org/
[xml]: https://www.w3.org/XML/
