当你进入订单确认页面时(http://www.tomtop.com/checkout/onepage)

详情见：order/controlers/order/OrderProcessing ——> confirm()

扩展点：
  1):IOrderFragmentPlugin onepage的展示是由分布在项目中的各个IOrderFragmentPlugin实现组合而成，类似的页面有homePage，productDetail，一个plugin的组成如下：![QQ截图20150829114951](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/f4c8891669/QQ%E6%88%AA%E5%9B%BE20150829114951.jpg)

  2):IOrderContextPretreatment 对OrderContext进行预处理，如你能在OrderContext中加入计算后得到的默认发货仓库，使得其他plugin在OrderContext也能访问到你处理后的数据(在plugin中，这个实现可以为null)

  3):IOrderFragmentProvider 返回一个用于界面展示的结构，如你要展示订单商品，那么这个返回的结构中应包含你所需要的一切信息

  4):IOrderFragmentRenderer 在其中，你得到了相应的IOrderFragmentProvider返回的数据，你要返回所需要的Html片段

  5):Name 是区别各个plugin的标识，是唯一的