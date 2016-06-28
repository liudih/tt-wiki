COOKIE跟踪
==========

设计理念
-------

* 登入是短期状态，浏览器／设备可以拥有长期状态
* 尽可能识别长期状态、短期状态、和用户登入的关系

具体COOKIE设计
-------------

* 长期COOKIE：LTC（时效：10年、或者用户删掉Cookie）
* 短期COOKIE：STC（时效：直至关闭浏览器、或者用户删掉Cookie）

如果这两个COOKIE不存在，是会被自动创建的，并赋予两个独立的UUID值

SESSION处理
-----------

* 利用LTC的值，在 Redis 创建一个 Map 用来暂时储存一些有用的对象

登入状态
-------

* LoginContext 对象代表了该用户（无论登入与否）
* LoginContext 存在 Session 中，如果不存在会被创建
* LoginContext.isLogin() 方法用来判断用户是否已经登入

API
---

`FoundationService.getLoginContext()` 作为整个故事的开端。

内部实现关键对象
--------------

详细请参考：
* CookieTrackingFilter (common)
* LoginContext (common)
* SessionService (common)
* FoundationService (base)
