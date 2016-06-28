问：目前有几种创建订单的途径？

答：有四种，普通订单新流程（分仓库拆单，未启用），普通订单老流程，Dropshipping流程和wholesale流程。



普通订单流程的准备数据（详情可见order/controllers/OrderProcessing.java中confirm()方法）
-------

* 这一步主要是为了得到OrderContext，即生成订单所需要的上下文，这里比较关键的是在准备OrderContext的过程中，生成了（t_preparatory_order、t_preparatory_detail、t_total_order、t_total_order_map）的相关信息，目的是为了将购物车中的商品按用户添加进购物车的时候所选中的不同的仓库拆分成多个订单（有几个仓库就有几个订单，详情可问需求经理）。

* 接下来是做了一个配置的判断，如下：

![QQ截图20150901105918](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/5237c631b0/QQ%E6%88%AA%E5%9B%BE20150901105918.jpg)

* 当配置为"new"的时候走新流程，其他则走老流程



在onepage页面中的js（参考order/public/js/order中的controller/summary.js和model/Summary.js）
-------

* 由于初期设计的不合理和后期的扩展使得js很复杂繁琐，这里不过多的描述

* 关键点：搜索“("#place_order").submit”了解订单提交前所走的各种验证流程

```sh
var isOrder = $("input[name=isOrder]").val();
```
* 这个input的值有（0和1）“0”代表着这是一个以Cart为基础的OrderContext所展示出来的页面，“1”代表这这是一个以Order为基础的ExistingOrderContext所展示的页面（目前只有Wholesale流程会使用ExistingOrderContext）



普通订单流程的基础步骤（详情可见order/services/OrderService.java中confirmOrder()方法）
-------

* 准备各种所需参数

* 执行createOrderInstance方法，进行一些前期验证，如：shippingMethod是否可用，coupon等优惠信息是否可用

* 将准备好的Order实体insert，再准备OrderDetail和BillDetail、insert

* 保存订单的额外优惠信息

* 改变订单的状态，使购物车失效，发送订单确认的事件，最后返回订单编号OrderNunber



普通订单新流程
-------

* 拆单的逻辑处理在创建OrderContext的过程中（order/services/fragment/pretreatment/OrderPretreatment.java）

* 新流程展示订单信息（同老流程共用一个入口controllers/order/OrderProcessing.java中confirm()方法）

* 当确认订单checkout时，将会根据pretreatment_order的数量保存相应的订单，并通过t_total_order、t_total_order_map作为订单之间的联系，将多个拆分出来的订单汇总成一个总订单进行支付（代码见order/controllers/NewOrderProcessing.java中submitOrderInfo()方法）




Wholesale订单流程
-------


* 入口wholesale/controllers/WholeSale.java中的placeOrder()

* 将product相关信息转换为order，由order/services/ProductToOrderService.java实现，见saveOrder()

* order信息被存入数据库后，将被重定向到order/controllers/OrderProcessing.java中的selectOrder()

* 这里，程序将构造ExistingOrderContext（已存在的Order的上下文），进入onepage页面，用户可以在这里选择物流方式checkout（注：在这里，order已经存在，而不是以cart为主体）



Dropshipping订单流程
-------


* 入口order/controllers/DropShipping.java中的uploadOrder()

* 相关table：t_dropshipping、t_dropshipping_map、t_dropshipping_order、t_dropshipping_order_detail

* 用户可以通过Excel批量上传Dropshipping订单，也可以提交单个订单

* 按照批次来划分用户提交的订单，用户可以一次为一个批次的订单付款（以t_dropshipping中的cdropshippingid作为批次号）

* 用户确认订单的过程实际上是t_dropshipping_order转换为t_order的过程（见order/controllers/DropShipping.java中placeOrder()）