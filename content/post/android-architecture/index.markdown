---
title:  "Android架构"
date:   2019-10-14 18:30:00 +0800
draft:  true
---

Android框架具有相当大的自由度，我们可以根据不同的方式来组合和构建代码。但是这种自由度也可能导致代码的极度混乱，从而使得测试、维护和扩展应用程序非常困难。因此，人们提出了各种Android的代码架构。现有的架构有很多种，学习起来也很麻烦，Google专门创建了一个项目[Android Architecture Blueprints][arch]，用于展示不同的架构并提供了示例代码，是学习Android架构的重要参考。常见的几种架构：

## [MVP][]

MVP，全称Model-View-Presenter，是由MVC架构演变而来的。两者的主要区别如下：

![MVC vs MVP][mvcmvp]

MVP中，三者的主要作用：

- View是视图层，负责数据的展示，提供界面、用户交互。Android中通常将Activity或者Fragment作为View层。
- Model是数据层，这里不仅仅是数据模型，还包括数据的存取，如数据库的读写、网络数据请求等。
- Presenter是连接View层与Model层的桥梁，并对业务逻辑进行处理。

![MVP_img][]

在MVP架构中，Model、View无法直接交互。Presenter层从Model层获得所需要的数据，进行一些适当的处理后交由View层进行显示。这样通过Presenter将View与Model进行隔离，使得View和Model之间不存在耦合，同时也将业务逻辑从View中抽离。

## [Clean][]

Clean架构提出了如下准则：

- 框架独立。架构不依赖于一些满载功能的软件库。
- 可测试性。
- UI独立，在不改变系统其余部分的情况下完成对UI的简易更改。
- 数据库独立，业务规则不绑定与某个具体的数据库当中，可以随意更换数据库的具体实现：比如说从SQL换到BigTable，这种情况不会对业务规则产生影响。
- 外部机制独立，业务规则完全不知道外层的事情。

![mvp_clean][]

图中几个名词的含义：

- Entities：代表App的业务对象
- Use Cases：编排数据从 Entity 入或出的流，也叫交互器(Interactors)
- Presenters: 把原来方便 Use Cases 或者 Entity 使用的数据结构转换成需要的形式。Presenters 和 Controllers 都属于这里。
- External Interfaces：处理细节的地方：UI、工具（tools）、框架（framework）等

此外，还有[Dagger][]、[RxJava][]、[databinding][]、[mvvm-live][]等架构，它们都是结合特定的库或者部件来使用的，可以具体参考样例代码。

[arch]: https://github.com/googlesamples/android-architecture
[clean]: https://github.com/googlesamples/android-architecture/tree/todo-mvp-clean/
[dagger]: https://github.com/googlesamples/android-architecture/tree/todo-mvp-dagger/
[databinding]: https://github.com/googlesamples/android-architecture/tree/todo-mvvm-databinding/
[mvcmvp]: ./mvc_mvp.jpg
[mvp]: https://github.com/googlesamples/android-architecture/tree/todo-mvp/
[mvp_clean]: ./mvp_clean.jpg
[mvp_img]: ./mvp.png
[mvvm-live]: https://github.com/googlesamples/android-architecture/tree/todo-mvvm-live/
[rxjava]: https://github.com/googlesamples/android-architecture/tree/todo-mvp-rxjava/
