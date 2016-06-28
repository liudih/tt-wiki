目前定义的模板类型有：
-------------
1、Activate（注册激活）

2、WelcomeRegist（注册欢迎）

3、WelcomeSubscibe（订阅欢迎）

4、UpdatePass（密码修改）

5、CheckoutOrder（下单成功）

6、PaymentOrder（付款成功）

7、Non-payment（未付款订单提醒）

8、WesternUnion（西联支付）

9、Shipments（发货通知）

10、CancelOrder（订单取消）

11、ShippingCardMarkDown（购物车产品降价）

12、ShoppingCartDidNotBuy（加购物车未买）

13、CommentsInvite（邀请评论）

14、CommentsSucceed（评论审核成功）

15、PointsExpiration（积分到期）

16、Ticket（未定义,今后定义和实现）

17、JoinDropshipping（dropshipping注册成功, joining in TOMTOP Drop-shipping program）

18、ActivatePayPass（支付密码激活）

19、ActivateSuccess（激活成功）

20、wholesale（批发通过）

21、CommentsSubmit（提交评论）

邮件模板变量替换处理步骤：
------
1、在后台中的邮件模板变量管理中，添加某类型的模板变量，格式为 #{variable}

2、新建该类型邮件模板，模板中可变的元素用你定义的变量代替。

3、在相应的模块中新建邮件模板变量实体，该实体继承父类base.app.email.model.IEmailModel，其中实体包含字段的名称必须与对应变量一致（区分大小写），例如定义了#{variable} 那么实体中对应的字段为variable。

4、模板变量实体的实例化。

5、调用EmailTemplateService.java类中的 Map<String, String> getEmailContent(Object object)方法，将实例化的模板变量实体作为入参，返回的是包含了邮件title和邮件content的Map。

6、发送邮件调用EmailUtil.java的工具类。其中包含的两个入参数，是步骤4中返回的邮件title和content。

-------------

