---
title:  "软件测试"
date:   2019-09-23 18:30:00 +0800
draft:  true
---

[软件测试][software-testing]是现代软件开发中非常重要的一个环节，是保证软件质量的重要手段。软件测试所包含的内容很多，由于课时所限，我们只涉及和开发相关的部分内容。关于软件测试的更多内容可以参见[Awesome Software Quality][]。

## 单元测试

单元测试用来保证代码片段的正确性，通常是对函数进行测试。通常来说，我们在写程序之前应先写好代码的单元测试，以后每次修改程序都会运行单元测试以保证代码的正确性，这也是T[DD（测试驱动开发）][tdd]的思想。

大部分的编程语言都提供了单元测试的工具，如Python的[nose][]、[unittest][]，Java的[JUnit][]，JavaScript的[mocha][]、[jest][]等。

## 自动化测试

随着测试在软件开发中的比重越来越大，自动化测试就非常必要。它使用特点软件来执行测试流程，并比较实际结果与预期结果之间的差异。可以参考[Awesome Test Automation][]中的工具来帮助实现测试自动化。

软件测试是[持续集成][ci]中一个非常重要的组成部分。

## 作业

为你的代码加上单元测试，并实现自动化测试。

[awesome software quality]: https://github.com/ligurio/awesome-software-quality
[awesome test automation]: https://github.com/atinfo/awesome-test-automation
[ci]: http://www.ruanyifeng.com/blog/2015/09/continuous-integration.html
[jest]: https://github.com/facebook/jest
[junit]: http://junit.org/
[mocha]: https://github.com/mochajs/mocha
[nose]: https://github.com/nose-devs/nose
[software-testing]: https://zh.wikipedia.org/wiki/%E8%BD%AF%E4%BB%B6%E6%B5%8B%E8%AF%95
[tdd]: https://github.com/unicodeveloper/awesome-tdd
[unittest]: https://docs.python.org/3/library/unittest.html
