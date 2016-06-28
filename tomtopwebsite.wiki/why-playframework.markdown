选型目标
=======
* 性能和消耗
* 开发效率
* 构建现代化网站的支持
* 社区活跃度

## 性能和消耗
### 非阻塞性I/O Non-Blocking Async I/O
* 底层使用Netty，能高效处理网络请求
* I/O线程和处理线程分开，达到用少量线程可以支持大量链接数，大大减低线程的消耗
* 较技术的讨论：[在InfoQ](http://www.infoq.com/cn/articles/netty-high-performance)

### 无状态
* 整个框架不存在服务端的状态（没有服务端的Session控制）
* Session在J2EE年代都是做集群的难点和障碍
* 所有状态都储存在客户端（浏览器）
* 服务器可以轻松扩容
* 正正因为无状态，对服务器的内存消耗绝大部分都用在业务处理上，内存使用非常有效率

## 开发效率
* 低入门门槛，理解基本运行规则即可编程 － [参考官网](https://www.playframework.com/documentation/2.3.x/JavaActions)
    * 路由（Route，定义服务路径 URL）
    * 控制器（Controller，接受网络请求的入口）
    * 视图（View，带类型的Scala模版，有效处理集合。由于会编译成Scala对象，避免运行时候的问题）
* 支持边改边跑，不用部署，方便调试
* 支持子模块，约束开发者的范围，化整为零 － [参考官网](https://www.playframework.com/documentation/2.3.x/SBTSubProjects)

## 构建现代化网站的支持
* 自带现代化的Assets资源的处理 － [参考官网](https://www.playframework.com/documentation/2.3.x/Assets)
    * ETag缓存标准
    * LESS - CSS 整合
    * WebJar
* 简单而合理化JSON处理和输出
* Websockets支持

## 社区活跃度
* 背后支持的企业：[Typesafe](https://www.typesafe.com)
* 使用机构：Twitter, LinkedIn, The Guardian, Walmart － [所有案例](https://www.typesafe.com/resources/case-studies-and-stories)
* 各个大平台都有专家回应：[StackOverflow](https://stackoverflow.com/questions/tagged/playframework), [Google Groups](https://groups.google.com/forum/#!aboutgroup/play-framework)
* 开源社区自由参与贡献：[GitHub](https://github.com/playframework/playframework)
* 定期更新版本：平均3个月发布一次（最新发布2.4.0）

## 参考
* http://www.infoq.com/cn/articles/netty-high-performance
* https://www.playframework.com/documentation/2.4.x/Philosophy
* https://en.wikipedia.org/wiki/Comparison_of_web_application_frameworks
