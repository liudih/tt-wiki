物流发货国家的选择上逻辑如下：
1.商品有属性标识可从哪个仓发货
2.目标国家有优先的发货地
3.海外优先
那么
在购物车中有四件商品,如果有A、B仓库都有四件商品的情况下,取收获地址国家的优先发货地,如果发货国家没有优先发货地的话,海外优先
首先判别条件是,尽量少打包裹

见
```java
ShippingServices.java
public ShippingStorage getShippingStorage(int countryid,List<String> listingids)
```