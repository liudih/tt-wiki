```
---------------------------------------
#### 清理所有的缓存
```
GET  /ic/v1/cache/clean
```

Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}

```
GET   /ic/v1/cache/base_layout/clean 清除base_layout的布局信息缓存
```
```
GET   /ic/v1/cache/product_category/clean 清除商品相关所有品类的缓存
```
```
GET   /ic/v1/cache/product_brand/clean  清除首页品牌缓存
```
```
GET  /ic/v1/cache/daily_deal/clean  清除daily_deal缓存
```
```
GET   /ic/v1/cache/fcategory/clean 清除fcategory缓存
```
```
GET   /ic/v1/cache/customers_voices/clean  清除首页Customers Voices模块
```
```
GET   /ic/v1/cache/recent_orders/clean 清除首页Recent Orders模块
```
```
GET   /ic/v1/cache/home_keyword/clean 清除首页关键字 和关键字补全
```
```
GET   /ic/v1/cache/base_layout_module_content/clean 清除首页 TOP-SELLERS、 NEW-ARRIVALS、MOREITEM-TO-CONSIDER
```
```
GET   /ic/v1/cache/product_explain/clean  清除详情页的explain
```
```
GET   /ic/v1/cache/category_path/clean 清除品类路径对应Id
```
```
GET   /ic/v1/cache/product_hot/clean 清除详情页热门商品的缓存
```
```
GET   /ic/v1/cache/product_review/clean  清除详情页评论的缓存
```
```
GET   /ic/v1/cache/product_topic/clean  清除详情页专题的缓存
```
```
GET   /ic/v1/cache/baseCurrency/clean 清理缓存在内存的货币 ，由base项目调用(缓存失效时间1个小时)
```
```
GET   /ic/v1/cache/baseLangage/clean 清理缓存在内存的语言，由base项目调用 (缓存失效时间1个小时)
```
Response 所有接口的返回值 如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}