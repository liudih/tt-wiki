翻页效果插件
===============
模板`turn_next_page_model.scala.html`
-------------
要实现翻页滑动延迟加载效果需要向模板传入以下参数：

1、`badges` ： 类型List[valueobjects.product.ProductBadge]。

2、`maxPage`: 类型Integer,表示限定总页数，翻页数等于max_page的值减去1。

3、`nextPageAjaxUrl` ：类型String，表示翻页事件要请求的ajax路径，指向一个处理请求的controller方法。

4、`header`: 类型Html,传入一个模块的头部的Html。

5、`divId`: 类型String，<div>的属性id。

6、`ulClass`: 类型String，包裹所有包裹了产品的<li>标签。

7、`liClass`: 类型String，包裹每个产品的最小单元。

8、`perPage`: 类型Integer，每页显示的个数。
	
在向后翻页的链接<a>标签中加入以下几个属性
-------------
1、`max_page`

2、`total_page` ：设定一个默认值0，当执行一次ajax请求，则total_page的值加1直到等于max_page的值减1（页码从0开始）。

3、`next_page_ajax_url`  

4、`index` ：设定一个默认值0，表示当前所翻的页码（从0开始）。

4、`perPage` 



`turn_next_page_model.scala.html` 模板如下：
-----------
```scala
@(badges: List[valueobjects.product.ProductBadge],
	maxPage: Integer,
        perPage: Integer,
	nextPageAjaxUrl: String,
	header: Html,
	divId: String,
	ulClass: String,
	liClass: String
	)
@import views.html.helper._

@header
<div class="@divId" id="@divId">
  	<a class="browseLeft_click" href="javascript:;" value="0"></a>
  	<a class="browseRight_click" href="javascript:;" index="0" total_page="0" max_page="@maxPage" per_page="@perPage" next_page_ajax_url="@nextPageAjaxUrl"></a>
    <ul class="@ulClass">
	  	@badges.map{p=>
			@views.html.product.badge_home(p,Html("<li class ='" + liClass + "'>"),Html("</li>"))
	    }
  		 <div class="clear"></div>
  	</ul>
</div>

@services.base.HtmlUtils.misc().addTailOnce{
  	<script>
  		$(function(){try{myMove("@divId","@ulClass","@liClass");}catch(e){};})
  	</script>
}  

```

以首页super deals模块为例，在SuperDealsProvider.java中传入模板所要求的参数，部分代码如下：
```java
	public Html getFragment() {
                Integer perPage = 6;
		Page<String> listingIdPage = superDealsEnquiry
				.getSuperDealsListingIdPage(0, perPage);
		List<ProductBadge> badges = badge.getProductBadgesByListingIDs(
				listingIdPage.getList(), foundation.getLanguage(),
				foundation.getSiteID(), foundation.getCurrency()); 
		Integer maxPage = 4;
		String divId = "SuperDeals_box";
		String ulClass = "SuperDeals_movebox";
		String liClass = "SuperDeals_movepic";
		String nextPageAjaxUrl = controllers.home.routes.Home
				.getNextSuperDeals().url();
		Html header = Html
				.apply("<h2 class='SuperDeals category'><i>Super Deals</i><a href='javascript:;'>More >></a></h2>");
		return views.html.home.turn_next_page_model.render(badges, maxPage,perPage,
				nextPageAjaxUrl, header, divId, ulClass, liClass);

	}

```

