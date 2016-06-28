搜索条件 （实现ISearchCriteria）
==============================
* `AttributeSearchCriteria(List<String attrs)` 以`name:value`表示一个属性，如 `color:red`
* `CategorySearchCriteria(int categoryID)` 这个用于单个品类搜索，如果用于约束品类结果，请用filter（待定义）
* `KeywordSearchCriteria(String keyword)` 全文搜索
* `PriceRangeCriteria(Range<Double> priceRange)` 价格区间搜索
* `PublishDateCriteria(List<Date> date)` 或 `PublishDateCriteria(Range<Date> date)` 发布日期搜索

排序条件（实现ISortOrder）
==============================
* `PriceSortOrder(boolean asc)`
* `DiscountSortOrder(boolean asc)`
* `DateSortOrder(boolean asc)`
* `ViewCountSortOrder(boolean asc)`
* `ReviewCountSortOrder(boolean asc)`

过滤结果（实现ISearchFilter）
==============================
* `CategorySearchFilter(List<String categories>)` 目前只能通过品类id来过滤，.99和日期条件的过滤需要调用者做相关操作

SearchContextFactory 和 SearchContext
=====================================
* SearchContextFactory用来构建SearchContext
* SearchContext包括多个查询条件、排序、过滤，调用者可以相应添加。
* 通常使用场景：SearchContextFactory.fromQueryString()
* SearchContextFactory.fromQueryString() 提供统一处理提交字段的功能，并会相应添加查询条件、排序、过滤等到SearchContext中
* SearchContext应该下放到界面，让界面显示按钮的状态。（TODO）

搜索模型
=======

每一个Listing，都会建立一个ElasticSearch的一个JSON文件，用来做搜索用途。
这个文件包含了我们可能搜索的字段，而这个文件的主键ID被定义为ListingID。

例如：
```javascript
{
 "categories":[1,2],
 "title":"Product Title",
 "keywords":"Product Keyword",
 "description":"Product Description",
 "sellingPoints":["Point 1","Point 2","Point 3","Point 4","Point 5"],
 "site":1,
 "language":1
}
```

字段说明
=======
* categories 一个Array储存了这个商品所在的品类，以及父品类，一直到品类的根（针对搜索Computer品类和Keyboard品类都可以）
* title 商品的Title，主要用作全文搜索
* keywords 商品的Keyword，主要用作全文搜索
* description 商品的Description，主要用作全文搜索（注意：这里展示没做变量的展开）
* sellingPoints 商品的卖点，主要用作全文搜索
* site 商品所在的站点，Integer
* language 商品的语言，Integer

每一个字段可以用作单独搜索，也可以用作全文搜索。

详细结构可以看看：`ProductIndexDocument`

关键字推荐
=========

http://blog.qbox.io/multi-field-partial-word-autocomplete-in-elasticsearch-using-ngrams