新手上路
=======

* 版本控制：GIT入门，必须了解（https://progit.org/translations/lang/zh 下载一份PDF仔细看）
* 基础HTTP概念：[Wikipedia介绍](http://zh.wikipedia.org/wiki/%E8%B6%85%E6%96%87%E6%9C%AC%E4%BC%A0%E8%BE%93%E5%8D%8F%E8%AE%AE)
    * [Post-Redirect-Get](http://en.wikipedia.org/wiki/Post/Redirect/Get)
* IoC容器：[Guice](https://github.com/google/guice/wiki/GettingStarted)
* 工具库：
    * [Guava官方文档(需要翻墙)](https://code.google.com/p/guava-libraries/wiki/GuavaExplained)
    * [Guava中文文档](http://ifeve.com/google-guava/)
* MVC框架：[PlayFramework](https://www.playframework.com/documentation/2.3.x/JavaHome)
* 数据库存储层：[MyBatis-Guice](http://mybatis.github.io/guice/samples.html) (注册Mapper步骤请参考BaseModule代码)
* 数据库变更管理：[Liquibase](http://www.liquibase.org/documentation/changes/index.html)

编码规范
=======
* 建议阅读：https://www.securecoding.cert.org/confluence/display/java/Java+Coding+Guidelines


代码提交流程
==========

### 提交者

* 先Fork主杆代码，成为自己的库
* 克隆自己的库到本机
* 如果有需要（在同时处理几个开发任务，如修BUG和新功能等）可以建立自己的feature branch
    * 修Bug时，基于一个以 Issue 号建立一个本地分支（如 git checkout -b issue_123 ）
    * 新功能：基于功能名字建立一个本地分支（如 git checkout -b password_recovery ）
* 提交Merge Request到你的组长
* 在等待审批过程中，可以切到其他分支继续其他开发任务

### 审批者

* 特别重视和把关数据结构的变更（Liquibase的XML文件）：参考[数据库变更管理](db-change-management)
* 代码是否经过格式化
* 代码是否简洁
* 代码是否提交测试用例，测试用例是否表达程序的意图：参考：[Is TDD Dead?](http://martinfowler.com/articles/is-tdd-dead/)
* 代码是否符合模块边界定义：参考：[Domain-Driven Design](http://en.wikipedia.org/wiki/Domain-driven_design)
* 代码是否考虑面向对象的设计原理：参考：[SOLID原则](http://zh.wikipedia.org/wiki/SOLID_(%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1%E8%AE%BE%E8%AE%A1))

PlayFramework
-------------
### HTTP、REST、路由表、Controller
* https://www.playframework.com/documentation/2.3.x/JavaActions
    * 请必须一直看完 HTTP programming 整个章节

### 表单处理
* https://www.playframework.com/documentation/2.3.x/JavaForms

模块划分
-------
| 模块名字  | 描述                                 | 依赖模块 | 提供的扩展点                                         |
| -------- | ------------------------------------|--------|-----------------------------------------------------|
| common   | 提供基础框架(非业务)服务                |        | MyBatisExtension, IFilterExtension, IEventExtension |
| base     | 提供基础业务相关的服务(语言、站点等基础)   | common | ITemplateExtension                                 |
| member   | 会员基础信息模块                       | base   | ILoginExtension                                    |
| product  | 商品基础信息模块                       | base   | IProductFragmentExtension, IProductDescriptionVariableExtension, IProductBadgeFragmentExtension, IPriceExtension |
| order    | 订单模块                        | member, product | IOrderFragmentExtension, IPaymentExtension, IOrderExtrasExtension |
| interaction | 与会员的互动模块(FAQ、评论、点赞、共享等) | member, product |                                         |
| loyalty     | 会员忠诚度模块，用积分和优惠券等手段提高会员黏度 | order |                                         |


功能扩展
-------
TODO
