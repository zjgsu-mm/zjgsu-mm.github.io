---
title:  "系统部署"
date:   2019-10-21 09:50:00 +0800
draft:  true
---

在移动互联网应用中，服务端通常需要部署到大量不同软硬件配置的机器上，同时系统本身也有这大量的外部依赖，这使得部署的复杂度日渐提高。

## 配置管理

配置管理（英语：Configuration Management，简称 CM）是一个创建系统工程的过程，用来创建与维持一个产品，让这个产品的性能、功能，以及它所要求的物理特性，在它的生命周期中，都能保持稳定与一致性。

对于复杂的部署环境，可以使用[Ansible][]、[Chef][]、[Puppet][]之类的配置管理软件来对部署的节点进行配置，以满足系统的运行。

## 虚拟机

配置管理虽然部分解决了复杂环境的部署，但配置起来也相当麻烦，并且难以保证开发环境和部署环境的一致性。另一种方式是通过虚拟机来开发和部署系统，这样可以保证开发和部署过程使用的是相同的环境。

[Vagrant][]为开发者提供了一套基于虚拟机的开发工具，使得开发者可以很好地统一开发和部署环境。此外，[Openstack][]以及大部分的云平台都提供了虚拟机的管理功能。

## 容器技术

虚拟机的最大缺点在于运行的开销较大，而容器技术——特别是[Docker][]的出现弥补了这个缺点。Docker可以看作一个隔离的进程，它的开销和进程相当，同时又能满足用户对各种资源的隔离和虚拟，虽然没有虚拟机功能强大，但在系统部署方面基本满足了大部分需求。

基于容器技术最热门的部署工具应该是[Kubernetes][]了，它借鉴了Google构建系统的丰富经验，实现了一套功能相当强大的自动部署、自动扩展的系统。

此外，Docker还有[docker-compose][]、[docker-swarm][]等工具，方便开发和部署。

## 持续集成、持续交付、持续部署

基于自动测试、部署技术，人们提出了持续集成、持续交付以及持续部署。

持续集成强调开发人员提交了新代码之后，立刻进行构建、（单元）测试。根据测试结果，我们可以确定新代码和原有代码能否正确地集成在一起。

![持续集成][ci]

持续交付在持续集成的基础上，将集成后的代码部署到更贴近真实运行环境的「类生产环境」（production-like environments）中。比如，我们完成单元测试后，可以把代码部署到连接数据库的 Staging 环境中更多的测试。如果代码没有问题，可以继续手动部署到生产环境中

![持续交付][cdl]

持续部署则是在持续交付的基础上，把部署到生产环境的过程自动化。

![持续部署][cdp]

[ansible]: https://www.ansible.com
[cdl]: ./cdl.png
[cdp]: ./cdp.png
[chef]: https://www.chef.io
[ci]: ./ci.png
[docker-compose]: https://docs.docker.com/compose/
[docker-swarm]: https://docs.docker.com/engine/swarm/
[docker]: https://www.docker.com
[kubernetes]: https://kubernetes.io/
[openstack]: https://www.openstack.org
[puppet]: https://puppet.com
[vagrant]: https://www.vagrantup.com
