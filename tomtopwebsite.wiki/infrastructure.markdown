概览
========

![tomtop-arch](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/396a1a94fb/tomtop-arch.png)

* 每个模块可以定义自己的数据库（根据配置application.conf）
* JVM内部使用Guava的[EventBus](event-handling)，进行异步信息通知（不支持回调）
* Session层通过Redis服务实现，通过Cookie存放[SessionID（LTC）](cookie-tracking)，作为Redis Map的主键保存登入状态等。30分钟过时（application.conf可配）
* 产品模块的全部搜索都是通过ElasticSearch服务，使用前必须把全部产品建立索引 (路径：/product/_indexing?drop=true&create=true )
* 某个产品数据有任何改动，都会通过[EventBus](event-handling)出发这个产品的索引更新，维持 ElasticSearch 和 Product 库的一致性

应用服务器
=========

* PlayFramework项目构建后，会整体的打一个tgz包
* 展开tgz包后，会有个启动脚本（在bin目录下）
* 执行启动脚本成为一个进程，监听着一个网络端口，提供HTTP服务（默认是9000端口）

数据库
=====

* 采用 PostgreSQL 服务
* 每一个模块都会有自己的数据库(database)。而数据库可以存放于不同服务器上

Redis
=====

* 采用 Redis 作为 Session 的实现
* 采用 Redis 作为 LiveChat 信息传递和排队等功能实现

ElasticSearch
=============

* ElasticSearch 用于一切商品的搜索、排序、分页等功能（关键字搜索、标签搜索等）
* 初始化数据是从 PostgreSQL 数据库获取构建的

网络架构
=======

```
   +-------+    vhost: www.tomtop.com   +----------------+
   | Nginx | -------------------------> | tomtopweb-9000 | ==========+==========+==============+
   +-------+ \                          +----------------+           |          |              |
198.11.253.50 \                            198.11.253.50:9000        |          |              |
    :80/443    \ vhost: staging.tomtop.com   +----------------+      |          |              |
                ---------------------------> | tomtopweb-9001 | =====+==========+==============+
                                             +----------------+      |          |              |
                                               198.11.253.50:9001    |          |              |
                                                                     V          V              V
                                                              +------------+ +-------+ +---------------+
                                                              | PostgreSQL | | Redis | | ElasticSearch |
                                                              +------------+ +-------+ +---------------+
                                                              10.124.57.220       10.109.129.8

```