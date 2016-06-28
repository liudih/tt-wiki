产品徽章 Product Badge
=====================
在产品搜索过程，展示的一个方块代表一个产品，里面包括小图片、原价、优惠价等等。我们定义这个小方块名字叫 *产品徽章*

在不同场合，都有展示产品徽章的需要，如关键字搜索、按品类搜索、甚至浏览商品的历史显示、推荐商品等等区域。

ProductBadgeService
===================
通过ProductBadgeService，我们可以从一个或者多个ListingID，产生出一个或者多个`ProductBadge`，再通过
在scala模版里调用@views.html.product.badge(你的单个badge) 方法展示出来。

```java
public class ProductBadgeService {

	public List<ProductBadge> getProductBadgesByListingIDs(
			List<String> listingIDs, int languageID, int site, String currency);

}
```


ProductBadge的扩展
=================
产品徽章预留了扩展空间，现在定义了：

* 商品的点评（星星数量和点评数量）

往后只要实现 `IProductBadgePartProvider` 并通过 `IProductBadgeFragmentExtension` 注册到 Guice 中即可。

