价格计算
=========

整个价格计算涉及到3个扩展接口：
1. IPriceProvider
2. IDiscountProvider
3. IPriceCalculationContextProvider

IProductSpec
============
任何计算价格，都需要一个IProductSpec作为输入。IProductSpec主要包括几个属性：
1. ListingID
2. 数量

单品规格就是只有一个ListingID，捆绑商品规格有多个ListingID（主产品的ListingID和所有其他ListingID）。
创建`IProductSpec`请使用`ProductSpecBuilder`

IPriceProvider
==============
提供基础价格。基础价格现在分两类：

1. 一类是单品的基础价格；
2. 另一类是捆绑几个商品的价格。

分别由`BasicPriceProvider`和`BundlePriceProvider`提供。

需要价格的调用方无需担心使用哪一个`IPriceProvider`，
`PriceService`会因应`IProductSpec`的实现类进行具体`IPriceProvider`的调用。

IDiscountProvider
=================
基于基础价格，`IDiscountProvider`把基础价格进行修正。修正范围包括给一个折扣率，或者直接给出最终价格，
两者都可能注明这个价格的有效期间。而调整价格会使用`PriceBuilder`进行修改。

现在有两个实现`IDiscountProvider`的实现类：

1. SaleDiscountProvider (product模块，提供促销价格优惠)
2. BulkDiscountProvider (loyalty模块，提供批发价格优惠)

IPriceCalculationContextProvider
================================
由于计算价格过程，需要涉及到环境变量如会员登入状态（属于什么会员级别等等），而这些变量会影响价格的计算结果。
我们定义了`PriceCalculationContext`上下文，来收集和定义在价格计算过程中的其他变量。（其他：非产品相关的参数）

使用NewPriceService（即将改名为 PriceService）
===========================================
`PriceService.getPrice()` 提供统一获取价格的入口，getPrice()提供了几个调用的场景，有计算单个商品的接口，
有计算批量商品的接口，按实际需要来进行调用。

返回的价格会根据需要的货币，通过`CurrencyService`进行汇率转换。

Price结构包括全部需要的信息：
1. 单品价格(`Price`)包括单价，折扣后的单价，价格有效期等等
2. 捆绑商品(`BundlePrice`)包括汇总单价，汇总折扣价，有效期等等，也包括拆分后的价格

