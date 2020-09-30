---
title:  "版本控制与文档"
date:   2020-09-22 08:00:00 +0800
draft:  false
---

## git

在软件开发过程中，[版本控制][vc]具有至关重要的作用。它可以实现代码、文档历史版本的保存，并能够还原任何一次历史变更，无论对个人开发还是团队协作都是必不可少的工具。

[git][]是版本控制软件中的佼佼者，同时也是现在使用最广泛的版本控制软件。学习git可以先从[官方的教程][git_tutor]或者[GitHub教程][try_git]开始，熟悉后可以参考[Awesome git][awesome_git]([中文][awesome_git_cn])中的资源更深入的学习。

在多人协作时，通常会有一个规范的工作流程，熟悉git的基本操作后，可以进一步学习[git工作流程][git_flow]，进一步规范版本控制。

git虽然是一个分布式的版本控制系统，但有一个中心服务器会让团队合作起来更为方便，[GitHub][github]是现在使用最为广泛的git托管服务，同时它也提供了丰富的代码评审、issue管理特性，使得团队更为方便。

本课程的工程管理全部在GitHub上完成，要求[熟练使用GitHub的各项功能][github_intro]。可以先看看[Git简明指南][git_intro]。

## Markdown

软件开发中需要大量的文档，这些文档通常没有严格排版要求，但是要求简单并且容易进行版本控制。现在应用非常广的一种格式就是[Markdown][]，本课程的所有文档要求采用Markdown进行书写，并用git进行管理。Markdown使用起来非常简单，可以参考[GitHub的Markdown教程][github_markdown]或者[Coding.net的Markdown教程（中文）][coding_markdown]。

## 作业

在工程中的`README.md`文件中完成项目信息及分组信息。

[awesome_git]: https://github.com/dictcp/awesome-git
[awesome_git_cn]: https://github.com/hylerrix/awesome-git
[coding_markdown]: https://coding.net/help/doc/project/markdown.html
[git]: https://git-scm.com/
[git_flow]: http://www.ruanyifeng.com/blog/2015/12/git-workflow.html
[git_intro]: https://rogerdudler.github.io/git-guide/index.zh.html
[git_tutor]: https://git-scm.com/book/zh/v2
[github]: https://github.com/
[github_intro]: https://guides.github.com/
[github_markdown]: https://guides.github.com/features/mastering-markdown/
[markdown]: https://zh.wikipedia.org/zh-hans/Markdown
[try_git]: https://try.github.io/
[vc]: https://zh.wikipedia.org/wiki/%E7%89%88%E6%9C%AC%E6%8E%A7%E5%88%B6
