角色定义
=======

合作伙伴
-------
* 帮助公司推广商品，并按销售金额作佣金结算

达人
----
* 帮助公司推广商品，达人收到免费商品后作出评论，增加商品的可信度和曝光率

合作伙伴和达人管理
---------------
* 负责挑选和管理合作伙伴和达人
* 成功的管理人，需要适当的选择合作伙伴和达人，以达到销售目标

营销手段
=======
* 通过发布链接到Facebook、Twitter等平台，吸引人流
* 通过发送推广邮件，进行促销

核算纬度 (从某个合作伙伴、达人介绍过来的)
===================================
* *会员注册*
* *订单*
* *商品浏览*
* // 待完善

方案
======
1. 无论是达人还是合作伙伴，我们都会赋予一个 aid （Affiliate ID）
2. 管理人会被分配管理不同的达人和合作伙伴，管理人不存在直接介绍会员到网站浏览和下单
3. aid 跟踪有以下几个可行的方法
    * 尾巴: http://www.tomtop.com/?aid=xxxxxxx
    * 头部: http://www.tomtop.com/aid/xxxxxxx
    * Referer映射: 从某个网站 http://www.somewebsite.com 跳转过来的，而www.somewebsite.com被注册关联到某个aid
    * 短域名 URL Shortener 可映射到头部（或尾巴）

合作伙伴相应功能
==============
* 关联 Referer （需要管理人审批，要证明该网站是这位合作伙伴维护的）
* 发展下线渠道（创建新的aid），所有新创建的aid的业绩都挂在本来的aid名下
* 下线业绩报表（可以用作分拆下线的提成。这是合作伙伴和他下线的关系，我们无需负责具体计算）

管理报表
=======
1. 会员注册／AID
2. 订单／AID
3. 商品浏览／AID
4. 通过管理人（负责的AID）进行统计

基于核算纬度的统计信息，按周、月、年等划分。

以上报表定位在于给出准确的统计数据，至于多少量达到多少提成等合同规则不在考虑范围内，不过可以在这个基础之上开发一套合同管理系统。
