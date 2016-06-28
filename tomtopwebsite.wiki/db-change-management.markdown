数据库变更规范
------------

为方便数据库结构的变更，我们使用了Liquibase来管理我们的数据库结构变更。

Liquibase的原理是分开一个个的变更（ChangeSet）来跟踪，看看在数据库上某个ChangeSet执行了没有。
一旦ChangeSet执行了，数据库状态就变更了。

ChangeSet只有执行（和回滚到以前的某个阶段），就像银行流水一样，取了款，就是取了款。
你不能因为你取款取多了，而修改你的取款纪录；你必须通过存款（一种补偿方式）来补偿你多取的金额。

基于这个原则，和其他信息需要，我们需要定义变更规范。

* 发布到生产上的ChangeSet不能修改，开发者必须在自己环境执行 update (http://localhost:9000/common/liquibase/update) 通过后，
  才提交上来
* 初始化数据放在 init 文件夹，无需使用特殊的 context
* 测试数据放在 samples 文件夹，同时必须用 context="test" 来区分初始化数据
* changeSet 的 id一项需要规范化：`<表> - <做什么> - <日期>`， 如： `t_banner-column_changes-20150323`
* 初始化数据的csv，如果需要改动，就需要检查相关的 ChangeSet 是否在生产上已经执行过。原则同上。而直接修改csv是强烈不建议的
* 每一个新增加的 changeSet 都需要放在文件的最尾部

可能情况
-------
```
Validation Failed:
     3 change sets check sum
          liquibase/manager.xml::t_admin_user-create::reason is now: 7:b58351f11b21e7de1a9443246ebdc491
          liquibase/manager.xml::t_admin_menu-data::reason is now: 7:5e64f71aef73cbe350b5de9fb1b68358
          liquibase/manager.xml::t_admin_menu_role_map-data::reason is now: 7:c4e6af9ffe1029b7477d31295553e91c

```

当更新时看到以上信息，代表以前执行过的ChangeSet，发生了变化。

如果你是在测试数据库升级过程，这个是可以接受的，只要这个部分还没有在生产上执行过。
但如果你知道生产上已经执行了这个ChangeSet，请不要修改你的ChangeSet（可以回退成旧版本的ChangeSet），
要多加一个补偿的ChangeSet。

额外要求
-------
基于持续交付的缘故，需要对数据库变更有额外要求。看以下例子：

假如：
* 数据库变更 ( A -> B )
* 相应代码 ( X -> Y )
* 假如 A -> B 的变更是：
    * 增加一个字段（ADD COLUMN）和
    * 删掉一个字段（DROP COLUMN）

由于持续交付关系，代码升级过程中，代码版本 X，Y 都会同时存在（可能在不同的机器上）。而程序版本 Y 如果没有做好适应代码的话，
很有可能 Y 会报错。同样当 Y 尝试升级数据库到 B 的时候， 运行中的 X 的版本也可能报错。

所以，Y必须具备兼容代码，防止升级过程的错误，同时 B 应该与 A 有一定程度的兼容性。

如上例子：增加字段在没有生效前，Y 需要做相应处理。同时，B 不能有删掉字段（这样会导致 X 运行失败）

等到 Y 成功升级，X 退役后，我们将要发第三个版本 Z （对应数据库 C）。在 C 的变更中才把字段删掉。


FAQ
----
1. 那我怎么确定是否在生产上执行过呢？

```
那得看看发布生产上发布的 Build Number (在主页的底部)，在 CI 上看看是什么版本了。
http://192.168.7.14:8080/job/TomtopWeb-Build/
```


总结
----
每次数据库变更都需要谨慎，管理才能有效。