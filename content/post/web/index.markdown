---
title:  "Web技术"
date:   2019-09-23 09:50:00 +0800
draft:  true
---

对于前端而言，Web 是真正的跨平台技术，它能够运行在所有的主流平台，所以也是前端界面的重要选项。

HTML、CSS 和 JavaScript是 Web 技术的三大组成部分。其中的 HTML 提供了网站的基本结构；CSS用于控制布局、外观以及格式；而JavaScript 用于控制各个元素的行为。三者的基本语法可以参考相应的书籍或者[w3schools][]。

## HTML

HTML定义了网站的基本结构，当前最新的标准是[HTML5][]。HTML5提供了更多具有语义的元素，在构建网页时应尽量使用这些具有语义的元素，而不要一味的使用 `div` 。除了这些具有语义的元素之外，HTML5还提供了地理位置、拖拽与拖放、本地存储、应用缓存以及 Web worker 等。

在画图方面，HTML5提供了[Canvas][]，能够在 Web 页面上实现丰富的画图效果，通过[WebGL][]技术还可以实现强大的三维图形效果。

HTML5的更多信息可以参考[Awesome HTML5][]。

## CSS

CSS的全称是层叠样式表(Cascading Style Sheets)，它用于描述 HTML 文档的样式，其最新标准是CSS3。CSS中的一个核心概念是[盒模型][box-model]，理解该模型有助于理解 CSS 中和位置相关的各种参数。

CSS 对于编程的支持很弱，为了更方便地写 CSS 人们开发了诸如[LESS][]、[Sass][]之类的预处理语言，它们对编程有很好的支持，并能够通过预处理生成等价的 CSS。当 CSS 规模较大时，采用这些技术能够提高CSS 的开发效率。

考虑到桌面、移动设备等各种设备的屏幕大小不一，在设计 CSS 时应采用[响应式设计技术][responsive]，使得网页在不同的设备上展现不同的外观。

为网站设计 CSS 开发是一件量很大并且需要要一定的美学基础的工作，为了加快网站的开发，人们开发了很多 CSS 框架，如[Bootstrap][]、[Milligram][]、[Pure][]等。利用这些框架可以快速搭建一个网站，然后可以在此基础上进行进一步的开发。更多的 CSS 框架可以参加[Awesome CSS Framework][]。

更多 CSS 相关的知识可以参加[Awesome CSS][]。

## JavaScript

JavaScript用于定义页面元素的行为，它也是前端技术中发展最为迅速的一块。[ES6][]是JavaScript非常重要的一个版本，它和以前的 JavaScript 有着巨大的改进，同时各个浏览器对它也有着不错的支持，建议开发时使用 ES6标准来进行开发。此外，[TypeScript][]也是应用非常广的一门语言，它在 JavaScript 基础上增加了数据类型等各种改进，并且可以编译成JavaScript。

如果页面的行为较为简单，可以使用传统的[jQuery][]技术，它相对比较简单，并且具有较好的兼容性。如果页面比较复杂，可以采用[React][]、[Vue][]、[Angular][]等前端框架。

当网站规模逐渐变大时，JavaScript 模块也会变得越来越复杂，可使用[npm][]、[yarn][]之类的工具进行模块化管理。同时，可使用[webpack][]、[Parcel][]之类的工具对 JavaScript、CSS 等各种资源进行打包。

更多的 JavaScript 相关资源及各种包可以参见[Awesome JavaScript][]。

## 作业

1. 完成前端的页面设计(HTML、CSS)
2. 完成前端与后端的交互以及前端动态效果（JavaScript)

[angular]: https://angular.io/
[awesome css framework]: https://github.com/troxler/awesome-css-frameworks
[awesome css]: https://github.com/awesome-css-group/awesome-css
[awesome html5]: https://github.com/diegocard/awesome-html5
[awesome javascript]: https://github.com/sorrycc/awesome-javascript
[bootstrap]: http://getbootstrap.com/
[box-model]: https://developer.mozilla.org/zh-CN/docs/Web/CSS/CSS_Box_Model
[canvas]: https://www.w3schools.com/Html/html5_canvas.asp
[es6]: http://es6.ruanyifeng.com/
[html5]: https://www.w3schools.com/Html/html5_intro.asp
[jquery]: https://jquery.org/
[less]: https://github.com/less/less.js
[milligram]: http://milligram.io/
[npm]: https://www.npmjs.com/
[parcel]: https://github.com/parcel-bundler/parcel
[pure]: https://purecss.io/
[react]: https://reactjs.org/
[responsive]: http://www.ruanyifeng.com/blog/2012/05/responsive_web_design.html
[sass]: https://github.com/sass/sass
[typescript]: https://www.typescriptlang.org/
[vue]: https://cn.vuejs.org/index.html
[w3schools]: https://www.w3schools.com/
[webgl]: https://www.html5rocks.com/en/tutorials/webgl/webgl_fundamentals/
[webpack]: https://github.com/webpack/webpack
[yarn]: https://yarnpkg.com/
