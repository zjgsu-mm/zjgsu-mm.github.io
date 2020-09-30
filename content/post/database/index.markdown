---
title:  "数据库"
date:   2020-09-29 08:00:00 +0800
draft:  false
---

关于数据库的选择可以参见[上节课的内容]({{< ref "/software-architecture" >}} "软件架构")。这里主要讲关系数据库的设计及编程实现。

## ER模型

[ER模型][er]即实体关系模型，是数据库系统设计的常用工具。系统开发之前可以先用ER图设计出系统的数据库模型。常用的ER图工具有[Visio][]、[Dia][]等。

![er_fig][]

## 数据库连接

应用程序通过数据库驱动与数据库连接，对于[Python][python_driver]、 [Node.js][node.js_driver]、 [Ruby][ruby_driver]、 [PHP][php_driver]、 [Java][java_driver]等不同的编程语言一般会有相应的数据库驱动，请参考具体的文档了解其使用方法。

## 数据库迁移

[数据库迁移][db_migration]是对关系数据库增量、可逆变化的管理。在数据库使用过程中，通常会根据需求不断变化，而数据库迁移就是用编程的方式维护这种变化，使得我们能够在不同版本的数据库之间进行转换。数据库迁移通常通过迁移工具进行实现，Ruby on Rails自带了比较完善的迁移工具；Python可以用[alembic][]来管理迁移；Node.js可以使用[knex][]、[Sequelize][]等进行迁移。其它语言、框架的迁移工具请自行搜索。

## ORM

[ORM][]即对象关系映射，它把关系数据库和面向对象技术中对象关联起来，从而方便开发。大部分的语言都有ORM实现，如Ruby on Rails的[Active Record][]、Python的[SQLAlchemy][]、Java的[Hibernate][]以及Node.js的[Sequelize][]等。

对于MongoDB之类的文档数据库，是可以之间获取对象的，但是也可以用[ODM][]来实现代码中对象和文档对象的映射。

![orm_image][]

## 数据库缓存

如果系统的速度瓶颈在数据库操作上，可以采取数据库缓存来提高数据的访问速度。读数据时，先从内存缓存中读取，如果缓存中没有再读取数据库，并把数据库中读取的数据保存到缓存中。通常采用[Redis][]、[Memcached][]等来对数据库进行缓存。

## NoSQL

如果存储的是KV型的数据，可采用Redis；如果存储的数据是对象型的，可以采用MongoDB之类的文档数据库，它能够以比较直观的方式进行数据库操作。

~~~ javascript
// MongoDB
db.users.insert( {
    user_id: "abc123",
    age: 55,
    status: "A"
 } )

db.users.ensureIndex( { user_id: 1, age: -1 } )

db.users.find(
    { status: "A" },
    { user_id: 1, status: 1, _id: 0 }
)

db.users.update(
   { age: { $gt: 25 } },
   { $set: { status: "C" } },
   { multi: true }
)

db.users.remove( { status: "D" } )

db.users.drop()
~~~

## 作业

在`docs/database.md`中完成系统的数据库设计，并完成相应的代码。

[active record]: https://ruby-china.github.io/rails-guides/active_record_basics.html
[alembic]: https://pypi.org/project/alembic/
[db_migration]: https://en.wikipedia.org/wiki/Schema_migration
[dia]: http://dia-installer.de/
[er]: https://zh.wikipedia.org/wiki/ER%E6%A8%A1%E5%9E%8B
[er_fig]: ./er.png "ER图"
[hibernate]: http://hibernate.org/
[java_driver]: http://www.oracle.com/technetwork/java/javase/jdbc/index.html
[knex]: https://knexjs.org/
[memcached]: https://memcached.org/
[node.js_driver]: https://github.com/sindresorhus/awesome-nodejs#database
[odm]: https://docs.mongodb.com/ecosystem/drivers/#mongodb-odm-object-document-mapper
[orm]: https://zh.wikipedia.org/wiki/%E5%AF%B9%E8%B1%A1%E5%85%B3%E7%B3%BB%E6%98%A0%E5%B0%84
[orm_image]: ./orm.png "ORM"
[php_driver]: https://github.com/ziadoz/awesome-php#database
[python_driver]: https://github.com/vinta/awesome-python#database-drivers
[redis]: https://redis.io/
[ruby_driver]: https://github.com/markets/awesome-ruby#database-drivers
[sequelize]: http://docs.sequelizejs.com/
[sqlalchemy]: https://www.sqlalchemy.org/
[visio]: https://products.office.com/zh-cn/visio/flowchart-software
