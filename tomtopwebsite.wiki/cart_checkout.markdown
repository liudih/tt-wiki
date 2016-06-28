在这个页面中：http://www.tomtop.com/cart

当你点击![QQ截图20150829101959](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/028fa4b2d1/QQ%E6%88%AA%E5%9B%BE20150829101959.jpg)

会执行以下过程：

1.判断是否同意TOMTOP的购物协议(如果不同意，则点击无效)

2.判断购物车中的商品是否缺货，如果缺货，则在缺货的商品图片上加上缺货的标签，点击无效

3.判断进入此购物车的来源，以执行对应的逻辑(目前没有)


具体过程参考order/public/js/cart/cartview.js ——> skiporder()方法