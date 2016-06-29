 产品接口文档

UAT测试地址：http://192.168.220.53:8004/
反向代理地址: http://product.api.tomtop.com
---------
#### 1.获取分类信息
```
GET   ${website}/ic/v1/categories
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| level    |   int    | 要获取分类的层级,如果没有传该参数,那么默认去的第一级分类(1,2...) 不是必须|
| parentId |   int    | 要获取parentId下面的直接子分类 不是必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 客户端ID    不是必须,默认为=1                               |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{iwebsiteid:1,
         ilanguageid:1,
         icategoryid:1,
         iparentid:'1',
         ilevel:1,
         iposition:1,
         cname:'',
         cbgimglink:''，
         cpath:''
  }]
}
```
------------------------------------------------
#### 2.根具类目id获取类目
```
GET   ${website}/ic/v1/categories/:categoryId
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| categoryId|   int    | 类目id  必须|
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 客户端ID    不是必须,默认为=1                               |

Response  如果成功返回

```
Status: 200 OK
```

```
{
  ret: 1,
  data:{iwebsiteid:1,
         ilanguageid:1,
         icategoryid:1,
         iparentid:'1',
         ilevel:1,
         iposition:1,
         cname:'',
         cbgimglink:'',
         cdescription:'',
         metaTitle:'',
         metaKeyWords:'',
         metadescription:''
  }
}
```
--------------------------------------
#### 3.根具指定商品ID,语言ID，站点ID获取某个商品信息
```
GET   ${website}/ic/v1/products/:listingId
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 商品id  必须|
| lang|   int    | 语言ID  必须                              |
| client|   int    | 客户端ID    必须                               |
| currency|   String    | 货币    必须                             |

Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:{
         title:String,
         url:String,
         imageUrl:url:String,
         sort:int,  //排序号
         nowprice:String,  //现价
         origprice:String   //原价   
  }
}
```

--------------------------------------
#### 4.根具指定多个商品ID,多个商品信息
```
GET   ${website}/ic/v1/products
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingIds|   String    | 商品id：以,隔开表示多个,如：1,2,3  必须|
| lang|   int    | 语言ID  必须                              |
| client|   int    | 客户端ID    必须                               |
| currency|   String    | 货币    必须                             |

Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         title:String,
         url:String,
         imageUrl:url:String,
         sort:int,  //排序号
         nowprice:String,  //现价
         origprice:String   //原价   
  }]
}
```

-------------------------------------------------
#### 5.通过labelCode查询标签下所有sku
```
GET   ${website}/ic/v1/labels/:labelCode
```
  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| labelCode|   String    | 签标代码  不是必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         listingId:'',//商品id
         websiteId:''
         languageId:'',
         createUser:'',
         createTime:'',
         modifyUser:'',
         modifyTime:'',
         labelId:1,
         labelName:'',
         labelImg:'',  //标签图片地址
         labelRegion:1, // 标签使用页面(:1.单品页2.购物车列表3.列表)
         labelRegionName:''// 标签使用页面名称
  }]
}
```

Response  如果失败返回

```
Status: 200 OK
```
```
{
  ret: 0,    
  errCode：'',
  errMsg:''
}
```
#### 6.查询首页所有标签
```
GET   ${website}/ic/v1/labels
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         listingId:'',//商品id
         websiteId:''
         languageId:'',
         createUser:'',
         createTime:'',
         modifyUser:'',
         modifyTime:'',
         labelId:1,
         labelName:'',
         labelImg:'',  //标签图片地址
         labelRegion:1, // 标签使用页面(:1.单品页2.购物车列表3.列表)
         labelRegionName:''// 标签使用页面名称
  }]
}
```

Response  如果失败返回

```
Status: 200 OK
```
```
{
  ret: 0,    
  errCode：'',
  errMsg:''
}
```
#### 7.查访布局模块下的商品,布局表示页面
```
GET   ${website}/ic/v1/layout/module/contents
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| layoutcode|   String    | 布局标识:HOME主页  必须|
| modulecode|   String    | 模块标识 HOME下的模块标识:TOP-SELLERS,NEW-ARRIVALS,MOREITEM-TO-CONSIDER 必须|
| currency|   String    |贷币: USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY  必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         title:String,
         url:String,
         imageUrl:url:String,
         reviewCount:int,//评论条数
         avgScore:double,//评分星级
         sort:int,  //排序号
         nowprice:double,  //现价
         origprice:double   //原价
  }]
}

```
------------------------------------------------
#### 9.查访首页特别类目
```
GET   ${website}/ic/v1/home/fcategory
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         id:int, //特别类目id
         name:String, 
         imageUrl:url:String,
         sort:int,  //排序号
         number：int,  //显示的数据   
         categoryId 类目id    
  }]
}
```
------------------------------------------------
#### 10.查访首页特别类目下的内容
```
GET   ${website}/ic/v1/home/fcategorycontents
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| fcategoryid|  int | 特别类目id 必须|
| currency|   String    |贷币: USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY  必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:{
         keys:[{           //特别类目搜索关键字 
                keyword:String, //搜索关键字的内容
                sort:int  //排序号
              }],
         skus:[{           //特别类目产品
                title:String,
                url:String,
                imageUrl:url:String,
                sort:int,  //排序号
                nowprice:String,  //现价
                origprice:String   //原价   
              }],
         banners:[{          //特别类目广告 
                url:String,//广告 url
                imgUrl:String,
                positionId:int,//位置,1:left,2:rgith,3:top,4:bottom
                title:String,
                sort:int  //排序号
              }],
  }
}
```
------------------------------------------------
#### 11. 查询搜索框热点关键字
```
GET   ${website}/ic/v1/home/search/keyword
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| category|   int|   类目Id,为0表示获取首页热点搜索关键字 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         keyword:string,//关键字
         sort:int //排序号       
  }]
}
```
------------------------------------------------
#### 12. 查询搜索关键字自动提示(补全)
```
GET   ${website}/ic/v1/home/search/keyword_autocomplete
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   string|  提示的关键字(模糊查询) 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[
         'keyword1',
         'keyword2',
         'keyword3',
         ........
         .........
  ]
}
```

---------------------------------------
#### 13.获取首页每日推荐产品
```
GET   ${website}/ic/v1/home/dailyDeal
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| currency|   String    |贷币: USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY  必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|
| date|   string|   日期:2015/06/02 不能为时分秒，必须按这个格式  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         title:String,
         url:String,
         imageUrl:url:String,
         discount:flot,//折扣
          nowprice:String,  //现价
         origprice:String   //原价   
  }]
}
```

---------------------------------------
#### 14.获取首页最新分享视频
```
GET   ${website}/ic/v1/home/newest/video
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         videoUrl:string,//视频url
         videoBy:String,//分享人
         title:string,//标题
         country:String,//分享人所在国名称
         skuTitle:String,//商品标题
         skuUrl:String,//商品url
         skuImageUrl:String//商品图片url
  }]
}
```

---------------------------------------
#### 15.获取首页最新分享图片
```
GET   ${website}/ic/v1/home/newest/image
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         imgUrl:string,//图片url
         imgBy:String,//分享人
         title:string,//标题
         country:String//分享人所在国名称
         skuTitle:String,//商品标题
         skuUrl:String,//商品url
         skuImageUrl:String//商品图片url
  }]
}
```

---------------------------------------
#### 16.获取首页最新分享评论
```
GET   ${website}/ic/v1/home/newest/review
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         reviewContent:string,//评论内容
         title:String,
         reviewBy:String,//评论人
         country:String//评论人所在国名称
         skuTitle:String,//商品标题
         skuUrl:String,//商品url
         skuImageUrl:String//商品图片url
  }]
}
```

---------------------------------------
#### 17.获取首页最近订单接口
```
GET   ${website}/ic/v1/home/recent_orders
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|
| currency|   String    |贷币: USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         title:String,
         url:String,
         imageUrl:String,
         nowprice:String,  //现价
         origprice:String   //原价   
         country:String//发往国家
  }]
}
```

---------------------------------------
#### 18.获取首页品牌
```
GET   ${website}/ic/v1/home/brand
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         name:String,名称
         code:String,//品牌标识
         url:String,//品牌网址
         logoUrl:String//logo图片url
  }]
}
```

---------------------------------------
#### 19.获取布局信息
```
GET   ${website}/ic/v1/base/layout
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code|   String|    布局标识,HOME主页  必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         name:String,名称
         url:String,//网址
         keyword:String,//搜索关键字
         description:String,//描述
         title:String,//标题
         remark:String,//备注        
  }]
}
```

---------------------------------------
#### 20.获取你可能喜欢的产品
```
GET   ${website}/ic/v2/product/youMayLike
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String|   商品id 必须|
| currency|   String|  币种 默认为USD|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android 默认为1|
| lang|   int|   语言 1 en  默认为1|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         title:String,
         url:String,
         imageUrl:String,
         nowprice:String,  //现价
         origprice:String   //原价     
  }]
}
```

---------------------------------------
#### 21.获取购物车的商品信息
```
GET   ${website}/ic/v1/product/shoppingCart
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listings|   String|   商品信息，商品id+数量，以json数组传值,示例:[{"listingId":"006a0cc8-d914","num":2},"listingId":"006a0cc8-d9","num":3}] 必须|
| currency|   String|  币种 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
          title:String,
          url:String,
          imageUrl:String,
          nowprice:String,  //现价
          origprice:String ,  //原价    
          num:int 产品个数 
        }]
}
```

---------------------------------------
#### 22.获取类目页商品列表
```
GET   ${website}/ic/v1/productsByCategoryId
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| categoryId|   int|   类目id 必须|
| attrIds  | String | 属性值的id|
| currentPage|   int|  当前页数 必须|
| pageSize|   int|  页数条数 必须|
| currency|   String|  币种 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
          sku:String,
          listingId:String,
          title:String,
          url:String,
          imageUrl:String,
          nowprice:String,  //现价
          origprice:String   //原价  
          reviewCount:int,//评论条数
          avgScore:double,//评分星级 
          collectNum:int //收藏数  
        }],
  page:{
        totalRecord:int,//总记录数
        totalPage:int,//总页数
        startRec：int,//开始的记录号
        endRec:int,//结束的记录号
        currentPage:int,//当前页
        pageSize:int//页面大小
      }
}
```

---------------------------------------
#### 23.获取类目页商品的属性
```
GET   ${website}/ic/v1/productAttrByCategoryId
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| categoryId|   int|   类目id 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:{  //返回的对象是一个map
         keyName: //返回属性key名
           [      //值的煺组
              id:int,//值的id
              name:String/值的名称
           ]
        }
}

示例：
 {ret:1,data:{color:[{id:1,name:"red"}.{id:2,name:"blue"}],size:[id:3,name:"28",id：4,name:"29"]}
```

---------------------------------------
#### 24.获取产品详情页你可能也想看的
```
GET   ${website}/ic/v1/product/alsoViewed
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| categoryId|   int|   类目id 必须|
| currency|   String|  币种 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         sku:String,
         listingId:String,
         title:String,
         url:String,
         imageUrl:String,
         nowprice:String,  //现价
         origprice:String   //原价     
  }]
}
```
---------------------------------------
#### 25.获取别人也买过的
```
GET   ${website}/ic/v1/product/alsoBought
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| categoryId|   int|   类目id 必须|
| currency|   String|  币种 必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| lang|   int|   语言 1 en  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1,
  data:[{
         sku:String,
         listingId:String,
         title:String,
         url:String,
         imageUrl:String,
         nowprice:String,  //现价
         origprice:String   //原价     
  }]
}
```
---------------------------------------
#### 26.根据关键字查询
```
GET   ${website}ic/v1/product/search/keyword/{keyword}
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   String|   搜索关键字 必须|
| currency|   String|  币种 不是必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  不是必须|
| lang|   int|   语言 1 en  不是必须|
| categoryId|   String|   品类ID-->修改成品类路径 默认为0  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int|   根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序 releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| bmain|   boolean|   是否为主商品 默认为true 不是必须|
| tagName|   String|  标签名称过滤 默认为空  不是必须|
| depotName|   String|   仓库名称过滤 默认为空 不是必须|
| brand|   String|  品牌过滤 默认为空  不是必须|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| type|   String|  属性过滤 默认为空  不是必须|
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "60X Mini Microscope Magnifier Jewelers Loupe for iPhone 4 4S with LED Light",
                "url": "60x-mini-microscope-magnifier-jewelers-loupe-for-iphone-4-4s-with-led-light-pa1331",
                "imageUrl": "p/tt/p/a/pa1331-10-7ac1.jpg",
                "listingId": "00699785-d914-1004-874c-d371c9ab96c0",
                "sku": "PA1331",
                "symbol": "$",
                "nowprice": "3.37",
                "origprice": "4.2",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Wireless Bluetooth Gaming Headset Headphone Earphone for Sony PS3 Samsung iPhone HTC PC Compact Universal",
                "url": "wireless-bluetooth-gaming-headset-headphone-earphone-for-sony-ps3-samsung-iphone-htc-pc-compact-universal-v747",
                "imageUrl": "p/tt/v/7/v747-4-a933.jpg",
                "listingId": "00681027-d914-1004-874c-d371c9ab96c0",
                "sku": "V747",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "10.85",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Jakemy JM-8128 Interchangeable Magnetic 45 In 1 Precision Screwdriver Set Repair Tools for iPhone iPad PC",
                "url": "jakemy-jm-8128-interchangeable-magnetic-45-in-1-precision-screwdriver-set-repair-tools-for-iphone-ipad-pc-h13317",
                "imageUrl": "p/tt/h/1/h13317-2-41b8.jpg",
                "listingId": "006330de-d914-1004-874c-d371c9ab96c0",
                "sku": "H13317",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "5.85",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "OVLENG X9 3.5mm Jack Stereo Headphones Earphones Headset with Microphone Cable Controller Music Games Movie for iPhone iPod Samsung Computer MP3",
                "url": "ovleng-x9-3-5mm-jack-stereo-headphones-earphones-headset-with-microphone-cable-controller-music-games-movie-for-iphone-ipod-samsung-computer-mp3-v671",
                "imageUrl": "haap://www.guphotos.com/images/V/V671/V671-1-42b5.JPG",
                "listingId": "0063e618-d914-1004-874c-d371c9ab96c0",
                "sku": "V671",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "8.54",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "29-in-1 Interchangeable Professional Versatile Hardware Screwdriver Tool Kit with Carry Box",
                "url": "29-in-1-interchangeable-professional-versatile-hardware-screwdriver-tool-kit-with-carry-box-h9706",
                "imageUrl": "p/tt/h/9/h9706-6-e254.jpg",
                "listingId": "0066620d-d914-1004-874c-d371c9ab96c0",
                "sku": "H9706",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "7.34",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "HD 1.3M P2P Wifi Bulb IR Lamp CCTV Security Hidden Spy Nanny Surveillance Camera Recorder",
                "url": "hd-1-3m-p2p-wifi-bulb-ir-lamp-cctv-security-hidden-spy-nanny-surveillance-camera-recorder-s303",
                "imageUrl": "p/tt/s/3/s303-4-7976.jpg",
                "listingId": "0064daa2-d914-1004-874c-d371c9ab96c0",
                "sku": "S303",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "68.77",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "HD 720P Mini Wi-Fi Wireless Security Network Video Monitoring IP Camera IR?CCUT Two-way Voice Onvif P2P WPS",
                "url": "hd-720p-mini-wi-fi-wireless-security-network-video-monitoring-ip-camera-ir-cut-two-way-voice-onvif-p2p-wps-s284",
                "imageUrl": "p/tt/s/2/s284-3-50dc.jpg",
                "listingId": "0066b03f-d914-1004-874c-d371c9ab96c0",
                "sku": "S284",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "54.47",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "IPCC 1080P Real Time ONVIF P2P Wireless IP Camera 1/2.5\" 2MP CMOS H.264 Waterproof IR-Cut Night Vision Motion Detection",
                "url": "ipcc-1080p-real-time-onvif-p2p-wireless-ip-camera-1-2-5-2mp-cmos-h-264-waterproof-ir-cut-night-vision-motion-detection-s219",
                "imageUrl": "p/tt/s/2/s219-1-796e.jpg",
                "listingId": "00668923-d914-1004-874c-d371c9ab96c0",
                "sku": "S219",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "136.302",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Wireless HD IP Camera Webcam Waterproof IR Night Vision COMS Wifi 802.11 b/g",
                "url": "wireless-hd-ip-camera-webcam-waterproof-ir-night-vision-coms-wifi-802-11-b-g-s173",
                "imageUrl": "p/tt/s/1/s173-5-e74f.jpg",
                "listingId": "00637b70-d914-1004-874c-d371c9ab96c0",
                "sku": "S173",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "83.951",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "IPCC 720P ONVIF P2P Wireless IP Cloud Camera H.264 Pan/Tilt IR-Cut Night Vision Motion Detection Two Way Audio",
                "url": "ipcc-720p-onvif-p2p-wireless-ip-cloud-camera-h-264-pan-tilt-ir-cut-night-vision-motion-detection-two-way-audio-s201",
                "imageUrl": "p/tt/s/2/s201-3-b31e.jpg",
                "listingId": "0065e956-d914-1004-874c-d371c9ab96c0",
                "sku": "S201",
                "symbol": "$",
                "nowprice": "71.24",
                "origprice": "73.917",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            }
        ],
        "aelist": [
            {
                "id": "1019",
                "name": null,
                "count": 8
            },
            {
                "id": "1036",
                "name": null,
                "count": 8
            },
            {
                "id": "1037",
                "name": null,
                "count": 8
            },
            {
                "id": "159",
                "name": null,
                "count": 3
            },
            {
                "id": "211",
                "name": null,
                "count": 2
            },
            {
                "id": "212",
                "name": null,
                "count": 2
            },
            {
                "id": "1302",
                "name": null,
                "count": 2
            },
            {
                "id": "1357",
                "name": null,
                "count": 2
            },
            {
                "id": "1359",
                "name": null,
                "count": 2
            },
            {
                "id": "202",
                "name": null,
                "count": 1
            }
        ],
        "page": {
            "totalRecord": 13,
            "totalPage": 2,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}

```
---------------------------------------
#### 27.根据品类查询
```
GET   ${website}ic/v1/product/search/category
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| cpath|   String|   品类cpath 必须|
| currency|   String|  币种 不是必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  不是必须|
| lang|   int|   语言 1 en  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int|   根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序 releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| bmain|   boolean|   是否为主商品 默认为true 不是必须|
| tagName|   String|  标签名称过滤 默认为空  不是必须|
| depotName|   String|   仓库名称过滤 默认为空 不是必须|
| brand|   String|  品牌过滤 默认为空  不是必须|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| type|   String|  属性过滤 默认为空  不是必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "60X Mini Microscope Magnifier Jewelers Loupe for iPhone 4 4S with LED Light",
                "url": "60x-mini-microscope-magnifier-jewelers-loupe-for-iphone-4-4s-with-led-light-pa1331",
                "imageUrl": "p/tt/p/a/pa1331-10-7ac1.jpg",
                "listingId": "00699785-d914-1004-874c-d371c9ab96c0",
                "sku": "PA1331",
                "symbol": "$",
                "nowprice": "3.37",
                "origprice": "4.2",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Wireless Bluetooth Gaming Headset Headphone Earphone for Sony PS3 Samsung iPhone HTC PC Compact Universal",
                "url": "wireless-bluetooth-gaming-headset-headphone-earphone-for-sony-ps3-samsung-iphone-htc-pc-compact-universal-v747",
                "imageUrl": "p/tt/v/7/v747-4-a933.jpg",
                "listingId": "00681027-d914-1004-874c-d371c9ab96c0",
                "sku": "V747",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "10.85",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Jakemy JM-8128 Interchangeable Magnetic 45 In 1 Precision Screwdriver Set Repair Tools for iPhone iPad PC",
                "url": "jakemy-jm-8128-interchangeable-magnetic-45-in-1-precision-screwdriver-set-repair-tools-for-iphone-ipad-pc-h13317",
                "imageUrl": "p/tt/h/1/h13317-2-41b8.jpg",
                "listingId": "006330de-d914-1004-874c-d371c9ab96c0",
                "sku": "H13317",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "5.85",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "OVLENG X9 3.5mm Jack Stereo Headphones Earphones Headset with Microphone Cable Controller Music Games Movie for iPhone iPod Samsung Computer MP3",
                "url": "ovleng-x9-3-5mm-jack-stereo-headphones-earphones-headset-with-microphone-cable-controller-music-games-movie-for-iphone-ipod-samsung-computer-mp3-v671",
                "imageUrl": "haap://www.guphotos.com/images/V/V671/V671-1-42b5.JPG",
                "listingId": "0063e618-d914-1004-874c-d371c9ab96c0",
                "sku": "V671",
                "symbol": "$",
                "nowprice": "9.42",
                "origprice": "8.54",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "29-in-1 Interchangeable Professional Versatile Hardware Screwdriver Tool Kit with Carry Box",
                "url": "29-in-1-interchangeable-professional-versatile-hardware-screwdriver-tool-kit-with-carry-box-h9706",
                "imageUrl": "p/tt/h/9/h9706-6-e254.jpg",
                "listingId": "0066620d-d914-1004-874c-d371c9ab96c0",
                "sku": "H9706",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "7.34",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "HD 1.3M P2P Wifi Bulb IR Lamp CCTV Security Hidden Spy Nanny Surveillance Camera Recorder",
                "url": "hd-1-3m-p2p-wifi-bulb-ir-lamp-cctv-security-hidden-spy-nanny-surveillance-camera-recorder-s303",
                "imageUrl": "p/tt/s/3/s303-4-7976.jpg",
                "listingId": "0064daa2-d914-1004-874c-d371c9ab96c0",
                "sku": "S303",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "68.77",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "HD 720P Mini Wi-Fi Wireless Security Network Video Monitoring IP Camera IR?CCUT Two-way Voice Onvif P2P WPS",
                "url": "hd-720p-mini-wi-fi-wireless-security-network-video-monitoring-ip-camera-ir-cut-two-way-voice-onvif-p2p-wps-s284",
                "imageUrl": "p/tt/s/2/s284-3-50dc.jpg",
                "listingId": "0066b03f-d914-1004-874c-d371c9ab96c0",
                "sku": "S284",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "54.47",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "IPCC 1080P Real Time ONVIF P2P Wireless IP Camera 1/2.5\" 2MP CMOS H.264 Waterproof IR-Cut Night Vision Motion Detection",
                "url": "ipcc-1080p-real-time-onvif-p2p-wireless-ip-camera-1-2-5-2mp-cmos-h-264-waterproof-ir-cut-night-vision-motion-detection-s219",
                "imageUrl": "p/tt/s/2/s219-1-796e.jpg",
                "listingId": "00668923-d914-1004-874c-d371c9ab96c0",
                "sku": "S219",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "136.302",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "Wireless HD IP Camera Webcam Waterproof IR Night Vision COMS Wifi 802.11 b/g",
                "url": "wireless-hd-ip-camera-webcam-waterproof-ir-night-vision-coms-wifi-802-11-b-g-s173",
                "imageUrl": "p/tt/s/1/s173-5-e74f.jpg",
                "listingId": "00637b70-d914-1004-874c-d371c9ab96c0",
                "sku": "S173",
                "symbol": "$",
                "nowprice": "5.89",
                "origprice": "83.951",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            },
            {
                "title": "IPCC 720P ONVIF P2P Wireless IP Cloud Camera H.264 Pan/Tilt IR-Cut Night Vision Motion Detection Two Way Audio",
                "url": "ipcc-720p-onvif-p2p-wireless-ip-cloud-camera-h-264-pan-tilt-ir-cut-night-vision-motion-detection-two-way-audio-s201",
                "imageUrl": "p/tt/s/2/s201-3-b31e.jpg",
                "listingId": "0065e956-d914-1004-874c-d371c9ab96c0",
                "sku": "S201",
                "symbol": "$",
                "nowprice": "71.24",
                "origprice": "73.917",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0
            }
        ],
        "aelist": [
            {
                "id": "1019",
                "name": null,
                "count": 8
            },
            {
                "id": "1036",
                "name": null,
                "count": 8
            },
            {
                "id": "1037",
                "name": null,
                "count": 8
            },
            {
                "id": "159",
                "name": null,
                "count": 3
            },
            {
                "id": "211",
                "name": null,
                "count": 2
            },
            {
                "id": "212",
                "name": null,
                "count": 2
            },
            {
                "id": "1302",
                "name": null,
                "count": 2
            },
            {
                "id": "1357",
                "name": null,
                "count": 2
            },
            {
                "id": "1359",
                "name": null,
                "count": 2
            },
            {
                "id": "202",
                "name": null,
                "count": 1
            }
        ],
        "page": {
            "totalRecord": 13,
            "totalPage": 2,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}

```
---------------------------------------
#### 28.新品查询
```
GET   ${website}/ic/v1/product/new
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   String|   关键字 不是必须的(作为保留)|
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径 默认为0  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int|   根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序 releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| tagName|   String|  标签名称过滤 默认为空  不是必须|
| depotName|   String|   仓库名称过滤 默认为空 不是必须(作为保留)|
| brand|   String|  品牌过滤 默认为空  不是必须(作为保留)|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| type|   String|  属性过滤 默认为空  不是必须(作为保留)|
| releaseTime| String| 上架时间过滤 参数玩法【大于等于 MOT2016-01-01】【等于 EQU2016-01-01】 默认为空 不是必须(保留可能过滤)|
Response  如果成功返回
功能描述:1.有new标签的商品 2.上架时间为最近一个月的

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "Acoustic Guitar Six Strings Nickel Set Exquisite for Fender Acoustic Guitar",
                "url": "acoustic-guitar-six-strings-nickel-set-exquisite-for-fender-acoustic-guitar-i800a",
                "imageUrl": "p/gu1/I/I800/I800-8-63fe.jpg",
                "listingId": "41019bb5-b243-469c-819b-b5b243a69c05",
                "sku": "I800A",
                "symbol": "US$",
                "nowprice": "2.02",
                "origprice": "2.02",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": true
            },
            {
                "title": "好的戒",
                "url": "--kzcr006-c-86111",
                "imageUrl": null,
                "listingId": "d2c8ebfa-b7dd-4b25-88eb-fab7dd9b250d",
                "sku": "KZCR006-C-86111",
                "symbol": "US$",
                "nowprice": "33.54",
                "origprice": "33.54",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": true
            },
            {
                "title": "R754-8 Silver plated new design finger ring for lady",
                "url": "r754-8-silver-plated-new-design-finger-ring-for-lady-lknspcr754-8",
                "imageUrl": "pro/b/20151212/d1ea9f33-b2ab-415a-a273-0555be47d031.jpg",
                "listingId": "36c79c01-49e4-4ad6-879c-0149e44ad607",
                "sku": "LKNSPCR754-8",
                "symbol": "US$",
                "nowprice": "11.49",
                "origprice": "11.49",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": false
            },
            {
                "title": "Crystal Glass Nail Art Acrylic Dappen Dish Bowl Cup Liquid Powder with Cap Lid",
                "url": "crystal-glass-nail-art-acrylic-dappen-dish-bowl-cup-liquid-powder-with-cap-lid-w360-1",
                "imageUrl": "p/gu1/W/W360-1/W360-1-2-cdd9.jpg",
                "listingId": "459cd895-939e-42fd-9cd8-95939ed2fd6c",
                "sku": "W360-1",
                "symbol": "US$",
                "nowprice": "2.59",
                "origprice": "2.59",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": true
            },
            {
                "title": "R748 Silver plated new design finger ring for lady",
                "url": "r748-silver-plated-new-design-finger-ring-for-lady-lknspcr748",
                "imageUrl": "pro/b/20151212/ccc428e3-f442-4fac-b366-af991f3a29bc.jpg",
                "listingId": "4c042b97-f900-45b0-842b-97f900a5b069",
                "sku": "LKNSPCR748",
                "symbol": "US$",
                "nowprice": "14.79",
                "origprice": "14.79",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": false
            },
            {
                "title": "Acoustic Guitar Six Strings Nickel Set Exquisite for Fender Acoustic Guitar",
                "url": "acoustic-guitar-six-strings-nickel-set-exquisite-for-fender-acoustic-guitar-i800",
                "imageUrl": "p/gu1/I/I800/I800-8-63fe.jpg",
                "listingId": "014c6b77-0c0e-458d-8c6b-770c0e658dd5",
                "sku": "I800",
                "symbol": "US$",
                "nowprice": "2.02",
                "origprice": "2.02",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": true
            },
            {
                "title": "AC / DC Adapter for Nail Gel Polish Machine AC Adaptor for LED Nail Lamp 48W 5A",
                "url": null,
                "imageUrl": "p/gu1/W/W2138EU/W2138EU-2-9afb.jpg",
                "listingId": "59e39902-deff-4b97-a399-02deff2b97c8",
                "sku": "W2138EU",
                "symbol": "US$",
                "nowprice": "5.53",
                "origprice": "5.53",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": false
            },
            {
                "title": "好的戒",
                "url": "--kzcr006-c-8633352",
                "imageUrl": null,
                "listingId": "3216e4dc-4938-45be-96e4-dc493865be22",
                "sku": "KZCR006-C-8633352",
                "symbol": "US$",
                "nowprice": "33.54",
                "origprice": "33.54",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": true
            },
            {
                "title": "好的戒",
                "url": "--kzcr006-c-8633353",
                "imageUrl": null,
                "listingId": "1231c679-e5b5-40ae-b1c6-79e5b560aeeb",
                "sku": "KZCR006-C-8633353",
                "symbol": "US$",
                "nowprice": "33.54",
                "origprice": "33.54",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": false
            },
            {
                "title": "Self-tie Halter Floral Two Piece Bikini Swimsuit",
                "url": "self-tie-halter-floral-two-piece-bikini-swimsuit-lc41724s",
                "imageUrl": "p/gu1/tomtopsite/L/LC41724S/LC41724S-14561298597571.jpg",
                "listingId": "49deae33-d265-43fc-9eae-33d265e3fc1c",
                "sku": "LC41724S",
                "symbol": "US$",
                "nowprice": "50.29",
                "origprice": "50.29",
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "freeShipping": false
            }
        ],
        "aggsMap": {
            "mutil.productTypes.productTypeId": [
                {
                    "id": 159,
                    "name": "Test Equipment & Tools",
                    "count": 2,
                    "cpath": "Test-Equipment-Tools"
                },
                {
                    "id": 468,
                    "name": "Musical Instruments",
                    "count": 2,
                    "cpath": "Musical-Instruments"
                },
                {
                    "id": 806,
                    "name": "Health & Beauty",
                    "count": 2,
                    "cpath": "Health-Beauty"
                },
                {
                    "id": 864,
                    "name": "Apparel & Jewelry",
                    "count": 12,
                    "cpath": "Apparel-Jewelry"
                }
            ],
            "yjPrice": [
                {
                    "id": 0,
                    "name": "priceRange1",
                    "count": 8,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange2",
                    "count": 9,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange3",
                    "count": 1,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange4",
                    "count": 1,
                    "cpath": null
                }
            ]
        },
        "page": {
            "totalRecord": 19,
            "totalPage": 2,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}
```
---------------------------------------
#### 清理product 类目相关的缓存
```
GET   ${website}/ic/v1/cache/product_category/clean
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


---------------------------------------
#### 清理home相关的缓存
```
GET   ${website}/ic/v1/cache/home/clean
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

---------------------------------------
#### 29.清理base相关的缓存
```
GET   ${website}/ic/v1/cache/base/clean
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

---------------------------------------
#### 清理所有的缓存
```
GET   ${website}/ic/v1/cache/clean
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
#### 清理新后台缓冲接口
对应的表名对应缓存
```
GET   ${website}/ic/v1/cache/base_layout/clean 
```
```
GET   ${website}/ic/v1/cache/base_layout_module_content/clean 
```
```
GET   ${website}/ic/v1/cache/home_brand/clean 
```
```
GET   ${website}/ic/v1/cache/home_daily_deal/clean 
```
```
GET   ${website}/ic/v1/cache/home_featured_category_banner/clean 
```
```
GET   ${website}/ic/v1/cache/home_featured_category_key/clean 
```
```
GET   ${website}/ic/v1/cache/home_featured_category/clean 
```
```
GET   ${website}/ic/v1/cache/home_featured_category_sku/clean 
```
```
GET   ${website}/ic/v1/cache/home_search_keyword/clean 
```
```
GET   ${website}/ic/v1/cache/home_search_autocomplete/clean 
```
```
GET   ${website}/ic/v1/cache/home_recent_orders_sku/clean 
```
```
GET   ${website}/ic/v1/cache/home_recent_orders_country/clean 
```
```
GET   ${website}/ic/v1/cache/home_newest_video/clean 
```
```
GET   ${website}/ic/v1/cache/home_newest_review/clean 
```
```
GET   ${website}/ic/v1/cache/home_newest_image/clean 
```
```
GET   ${website}/ic/v1/cache/product_topic/clean 清理详情页面商品专题 (缓存失效时间1个小时)
```
```
GET   ${website}/ic/v1/cache/product_review/clean 清理详情页面评论详情 (缓存失效时间1个小时)
```
```
GET   ${website}/ic/v1/cache/shipping_storage_id/clean 清理详情页面仓库ID过滤的邮寄方式 (缓存失效时间1个小时)
```
```
GET   ${website}/ic/v1/cache/product_explain/clean 清理详情页面的explain (缓存失效时间1个小时)
```
```
GET   ${website}/ic/v1/cache/baseCurrency/clean 清理缓存在内存的货币 ，由base项目调用(缓存失效时间1个小时)
```
```
GET   ${website}/ic/v1/cache/baseLangage/clean 清理缓存在内存的语言，由base项目调用 (缓存失效时间1个小时)
```
Response 所有接口的返回值 如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
-----------------------------------------
### 参数手册:


1.语言定义 lang:

|id|code|name|
| -------- | -------- | -----------------------------------------------                 |
| 1	|en	|English|
| 2	|es	|español|
| 3	|ru	|русский|
| 4	|de	|deutsch|
| 5	|fr	|français|
| 6	|it	|italiano|
| 7	|jp	|日本語|
| 8	|pt	|português|

2.货币定义 currency ：
```USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY ```

3.客户端定义 client:

|id|name|
| -------- | ------|
|1 |TOMTOP-PC|
|2|TOMTOP-Mobile|
|3 |TOMTOP-APP-IOS|
|4 |TOMTOP-APP-Android|
