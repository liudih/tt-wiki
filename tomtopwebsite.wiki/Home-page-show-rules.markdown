> **Tomtop网站首页中几个模块展示逻辑**
-------------

## **一、super deals**
### **数据来源**

1、t_super_deal  ，此表中的数据分为两种：

* 一是后台【商品管理】-->【super deal管理】中人工添加的，人工添加的super deal产品为VIP产品，这类产品在数据获取时是优先获取的。

* 二是通过定时任务获取的，这类产品的创建人是“Auto”。

2、搜索引擎

### **super deal产品数据筛选逻辑及要求**
* 折扣区间：20%+；

* 单价在15USD--50USD;

* 排除清仓品；

* ERP在产品线30天销量排名前50的SKU；

* 网站30天浏览排名前500的SKU；

* 最新的折扣显示在最前面；


### **后台编辑的功能**

所有的限制数据都是可供编辑的，比如折扣区间，单价区间，销量排名，浏览排名等。

### **获取优先顺序**

1、优先获取t_super_deal表中，手工添加的VIP产品24个产品（首页4个版面）。

2、当1中不够24个产品，则另外添加t_super_deal自动抓取的产品（创建人Auto）,加满至24个产品。

3、如果上述1,2中的产品还不足够一个版面（6个产品），则根据浏览历史最后访问的产品，然后根据这个产品所在的品类，从搜索引擎中筛选出该品类的符合super deal产品筛选条件的产品。

4、如果上述1,2,3中还不够一个版面，最后则是根据每个品类各获取一个符合条件的产品（最多就是14个品类，目前网站只有14个品类）用于填充。

###  **相关的类**
* SuperDealsEnquiry.java
* interation模块 controllers.home.Home.java --> getNextSuperDeals方法（翻页）
* interation模块 services.home.fragment.SuperDealsProvider.java   首页展示super deal数据查询
* interation模块 services.member.fragment.SuperDealsProvider.java 会员中心super deal数据查询
* 首页super deals 翻页的js是 main.js 中的 myMove(myId,moveBox,smallBox) 这个方法



## **二、new arrivals**

1、定时器任务NewArrivalTimerTriggerRouteBuilder.java 该定时器会做两个事情

 * 一是从t_product_base根据产品的创建时间，判断是否新品，然后获得新品，再根据新品所在品类，将该品类添加到t_cateogry_label表中。

 * 二是直接将获取的新品插入到t_product_label表中，如果存在则更新。

2、首页展示时，从t_category_label中随机获取50个`二级`品类,再去根据品类编号(categoryId)搜索引擎中获取这些产品的listingid，然后随机挑选出8个该类下产品数量多于5个产品的`二级`品类,然后展示出来。（选50个，是为了预防数据不够，导致首页留白）

### **相关的类**
* NewArrivalsProvider.java                 获取首页new arrivals数据类
* NewArrivalTimerTriggerRouteBuilder.java  定时器类
* NewArrivalCategoryEvent.java             事件类
* NewArrivalCategoryHandler.java           事件处理类 



## **三、Freature Items ， Hot sales， Clearance Sales** 

Freature Items ， Hot sales， Clearance Sales这三块内容的展示逻辑是相似的，初始化搜索引擎的时候会将t_product_label中的数据存入搜索引擎，包括产品标签（hot,new,feature...等），首页这三块的内容就直接通过产品的标签从引擎中获取到相应的广告编号(listingId)，在从t_home_page_show_history获取前一周的历史展示数据来过滤，使得当日展示的产品与前一周产品不重复。

### **数据流**
```flow
t_product_label--->搜索引擎---->t_home_page_show_history过滤--->首页展示
```

### **数据来源**

1、 `t_product_label`

* NewArrivalTimerTriggerRouteBuilder.java  新品定时器任务（手工触动路径  http://localhost:9000/product/category/newarrivals）.    其中路径是本地环境，如果是其它环境请自行更换域名。此定时任务的处理类是------>
NewArrivalCategoryHandler.java

* extensions.order.camel.TimerTriggerRouteBuilder.java 热销产品定时器任务（ 手工触动路径 http://localhost:9000/order/selectHot）.  其中路径是本地环境，如果是其它环境请自行更换域名。处理类是------------>ProductStatisticsHandler.java

* InteractionTimerTrigger.java 特色产品定时任务（手工触动路径http://localhost:9000/interation/featured ），其中路径是本地环境，如果是其它环境请自行更换域名。处理类----->InteractionHandler.java

2、`t_home_page_show_history` 

* 此表的数据来源于定时器任务：HomePageShowTimerTriggerRouteBuilder.java 每天会获取到当天应该展示的产品，然后存入表中，如果表中有该产品的记录，则更新产品展示的时间。用于首页产品展示过滤，使不每天都重复。处理类是------>HomePageProductShowHandler.java


###  **后台设置**

```flow
商品管理 ---> 首页展示设置
```

页面默认查询的标签类型是 hot类型， 目前可支持clearstocks,featured,hot三种类型进行时间更新操作（更新置顶），当进行`“更新置顶”`操作后，会更新该标签该产品的创建时间，并发出`事件`更新搜索引擎中的该标签该产品的时间，这样有利于搜索引擎排序（降序排序），可以人工调整使得指定的一些产品出现在首页展示区域。

###  **相关的类服务**

product模块 
* HomePageDataEnquiry.java 首页数据查询服务
* HomePageProductShowHistoryService.java  首页展示历史服务
* ClearanceSalesLinkProvider.java  清货产品more链接
* ClearanceSalesProvider.java      清货产品Provider 
* FeaturedItemsProvider.java       特色产品Provider
* HotSalesMoreLinkProvider.java    热销产品more链接
* HotSalesProvider.java            热销产品Provider

  