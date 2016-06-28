ie兼容性问题汇总： 

1.js加载不在放在模板的上面，这样会导致w3标准不起作用，例如： 

 @help需要放到模板里面，

 @views.html.order.top(2,false) {

 @helper.javascriptRouter("orderRoutes")(

	controllers.cart.routes.javascript.Cart.checkCart,

	 controllers.cart.routes.javascript.Cart.cartview,

	 controllers.order.routes.javascript.OrderProcessing.checkAddress
)
}

2.a标签里面如果包含input标签，a标签的href可能会失效，因为点击的时候触发的是input的onclick事件  

3.ie中redio的name不同组的时候名称一定要不致，如果一样点击时也会互斥。  